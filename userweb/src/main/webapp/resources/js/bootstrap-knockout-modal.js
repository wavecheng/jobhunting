// http://aboutcode.net/2012/11/15/twitter-bootstrap-modals-and-knockoutjs.html


var createModalElement = function (templateName, viewModel) {
    var temporaryDiv = addHiddenDivToBody();
    var deferredElement = $.Deferred();
    ko.renderTemplate(
        templateName,
        viewModel,
        // We need to know when the template has been rendered,
        // so we can get the resulting DOM element.
        // The resolve function receives the element.
        {
            afterRender: function (nodes) {
                // Ignore any #text nodes before and after the modal element.
                var elements = nodes.filter(function (node) {
                    return node.nodeType === 1; // Element
                });
                deferredElement.resolve(elements[0]);
            }
        },
        // The temporary div will get replaced by the rendered template output.
        temporaryDiv,
        "replaceNode"
    );
    // Return the deferred DOM element so callers can wait until it's ready for use.
    return deferredElement;
};


var addHiddenDivToBody = function () {
    var div = document.createElement("div");
    div.style.display = "none";
    document.body.appendChild(div);
    return div;
};

var showModal = function (options) {
    if (typeof options === "undefined") throw new Error("An options argument is required.");
    if (typeof options.viewModel !== "object") throw new Error("options.viewModel is required.");

    var viewModel = options.viewModel;
    var template = options.template || viewModel.template;
    var context = options.context;
    var onModalHidden = options.onModalHidden;
    var onModalShown = options.onModalShown;

    if (!template) throw new Error("options.template or options.viewModel.template is required.");

    return createModalElement(template, viewModel)
        .pipe($) // jQueryify the DOM element
        .pipe(function ($ui) {
            var deferredModalResult = $.Deferred();
            addModalHelperToViewModel(viewModel, deferredModalResult, context);
            whenUIShown($ui, onModalShown, viewModel, context);
            showTwitterBootstrapModal($ui);
            whenModalResultCompleteThenHideUI(deferredModalResult, $ui);
            whenUIHiddenThenRemoveUI($ui, onModalHidden, viewModel, context);
            return deferredModalResult;
        });
};


var addModalHelperToViewModel = function (viewModel, deferredModalResult, context) {
    // Provide a way for the viewModel to close the modal and pass back a result.
    viewModel.modal = {
        close: function (result) {
            if (typeof result !== "undefined") {
                deferredModalResult.resolveWith(context, [result]);
            } else {
                // When result is undefined, we don't want any `done` callbacks of
                // the deferred being called. So reject instead of resolve.
                deferredModalResult.rejectWith(context, []);
            }
        }
    };
};

var showTwitterBootstrapModal = function ($ui) {
    // Display the modal UI using Twitter Bootstrap's modal plug-in.
    $ui.modal({
        // Clicking the backdrop, or pressing Escape, shouldn't automatically close the modal by default.
        // The view model should remain in control of when to close.
        backdrop: "static",
        keyboard: false,
    });
};

var whenModalResultCompleteThenHideUI = function (deferredModalResult, $ui) {
    // When modal is closed (with or without a result)
    // Then always hide the UI.
    deferredModalResult.always(function () {
        $ui.modal("hide");
    });
};

var whenUIHiddenThenRemoveUI = function ($ui, onModalHidden, viewModel, context) {
    // Hiding the modal can result in an animation.
    // The `hidden` event is raised after the animation finishes,
    // so this is the right time to remove the UI element.
    $ui.on("hidden.bs.modal", function () {
        // Call ko.cleanNode before removal to prevent memory leaks.
        $ui.each(function (index, element) { ko.cleanNode(element); });
        $ui.remove();

        //call the hide callback
        if (typeof (onModalHidden) == "function") {
            onModalHidden(viewModel, context); 
        }
    });
};

var whenUIShown = function ($ui, onModalShown, viewModel, context) {
    //Wireup the modal's shown event
    //Set the focus on the element after the modal is rendered
    $ui.on("shown.bs.modal", function (e) {

        // The shown event is fired for elements within the modal such as tooltips
        if (e.target != null && $(e.target).hasClass('modal')) {
            var element = $('[data-focus="true"]', $ui);
            if (element != null) {
                element.focus();
            }

            //call the shown callback
            if (typeof (onModalShown) == "function") {
                onModalShown(viewModel, context);
            }
        }
    });
};


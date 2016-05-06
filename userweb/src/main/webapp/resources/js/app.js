$('#myApplyModal').on('show.bs.modal', function (event) {
	  var button = $(event.relatedTarget);
	  var id = button.data('id');
	  $('#cancelLink').attr('href','cancel/' + id);
});

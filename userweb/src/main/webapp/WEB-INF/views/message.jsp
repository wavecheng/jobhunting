<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<jsp:include page="header.jsp" /> 

         <section class="margin-bottom margin-top">
             <div class="container">
                 <div class="row">
                 	<div class="alert alert-info">
                 		<c:if test="${register_success == true}">
                 			${message}
                 		</c:if>
                 		${message}
                 	</div>
				</div>
                 </div>
             </div>
         </section>
		
		<%@ include file="footer.jsp" %>
        </div>
    </div> 
</body>
</html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<jsp:include page="header.jsp" /> 

         <section class="margin-bottom margin-top">
             <div class="container">
                 <div class="row">                	          		
	                 	<div class="text-center">    	                 				
							<h4>Whoops: something is wrong,please try again! </h4>												
						<div class="alert alert-danger" role="alert">
								${ex.message}								
					    </div>	
					    <div class="show"><pre>:${ex.stackTrace}</pre></div>	
					   </div>
				</div>
             </div>
         </section>
		
		<%@ include file="footer.jsp" %>
        </div>
    </div> 
</body>
</html>
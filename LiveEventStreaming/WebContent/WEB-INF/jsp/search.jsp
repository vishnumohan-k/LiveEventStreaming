<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <script src="js/jquery-1.12.2.js"></script>
<h4>Search Results</h4>


			<ul class="nav menu">
			
			<div class="container">
	
			
			<div id="demo">
			           <table >
                <c:forEach var="contact" items="${listSearch}">
                <tr>
      
                    <td>
   <dl class="accordion">
		<dt><h4><b>${contact.name}</b></h4></dt>
		<dd><h4>&nbsp;<a href="/LiveEventStreaming/ViewProfile?name=${contact.name}">View Profile</a> &nbsp;
		</dd>
   </dl>
    
                    </td>
                     
                </tr>
                </c:forEach>             
            </table>
            </div>

            </div>
			</ul>
		</div>
    <script>
    		$("dl.accordion dd").hide();
		
		$("dl.accordion dt").on("click",function(){
			$("dl.accordion dt[data-active]")
			.removeAttr("data-active")
			.next()
			.slideUp();
			
			$(this)
				.attr("data-active",true)
				.next()
				.slideDown();
		});
	</script>⁠⁠⁠⁠
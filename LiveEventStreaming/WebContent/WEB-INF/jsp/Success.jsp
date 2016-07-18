
<script src="js/jquery-1.12.2.js"></script>

		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		
		<ul class="nav menu">
			<div class="container">
			<h3><span class="glyphicon glyphicon-user"></span>Online&nbsp;<img alt="" src="images/online.jpg" style="width:2.1%;height:10%;"></h3>
			Hai
			<div id="demo">
			           <table >
                <c:forEach var="contact" items="${listOnline}" varStatus="status">
                <tr>
                    <td>

   <dl class="accordion">
		<dt><h4><b>${contact.name}</b></h4></dt>
		<dd><h4>&nbsp;&nbsp;<a href="/LiveEventStreaming/ChatRequest?name=${contact.name}">Send Chat Request</a> <br><br>&nbsp;
		<a href="/LiveEventStreaming/ViewProfile?name=${contact.name}">View Profile</a><br><br>&nbsp;
		<a href="#">Hide Contact</a><br><br>&nbsp;
		</h4>
		</dd>
   </dl>
	                </td>
                     
                </tr>
                </c:forEach>             
            </table>
            </div>
   
            </div>
            			<form></form>
			</ul>

			<ul class="nav menu">
			
			<div class="container">
	
			<h3><span class="glyphicon glyphicon-user"></span>Offline&nbsp;</h3>

			
			<div id="demo">
			           <table >
                <c:forEach var="contact" items="${listOffline}" varStatus="status">
                <tr>
      
                    <td>
                  <!-- 
                    <div class="dropdown">
    <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">${contact.name}
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li><a href="/LiveEventStreaming/ViewProfile?name=${contact.name}">View Profile</a></li>
      <li class="divider"></li>
      <li><a href="#">Hide Contact</a></li>
      <li><a href="#">Exit</a></li>
    </ul>
    <br/>
  </div>     
  <br/> 
   -->
   <dl class="accordion">
		<dt><h4><b>${contact.name}</b></h4></dt>
		<dd><h4>&nbsp;<a href="/LiveEventStreaming/ViewProfile?name=${contact.name}">View Profile</a> <br><br>&nbsp;
		<a href="#">Hide Contact</a><br><br>&nbsp;
		</h4>
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
	</script>		
		<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	
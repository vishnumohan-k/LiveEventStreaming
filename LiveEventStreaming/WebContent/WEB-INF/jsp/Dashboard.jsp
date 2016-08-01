<%@include file="UserHeader.jsp"%>
<script src="js/jquery-1.12.2.js"></script>
<%response.setIntHeader("Refresh", 20); %>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<form role="search">
		
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Search" id="searchBox">
				 <div id ="searchRslt">
		 </div>
			</div>
		</form>
		<ul class="nav menu">
	 <div id ="onlineHeader" tabindex='1'><h3><span class="glyphicon glyphicon-user"></span>Online&nbsp;<img alt="" src="images/online.jpg" style="width:2.1%;height:10%;"></h3></div>
			<div class="container" id="online" >
			
			
			<div id="demo">
			           <table >
                <c:forEach var="contact" items="${listOnline}" varStatus="status">
                <tr>
                    <td>

   <dl class="accordion">
		<dt><h4><b>${contact.name}</b></h4></dt>
		<dd><h4>&nbsp;&nbsp;<a href="/LiveEventStreaming/ChatRequest?name=${contact.name}">Send Chat Request</a> <br><br>&nbsp;
		<a href="/LiveEventStreaming/ViewProfile?name=${contact.name}">View Profile</a>&nbsp;
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

			<ul class="nav menu">
					 <div id ="offlineHeader" tabindex='1'><h3><span class="glyphicon glyphicon-user"></span>Offline&nbsp;</h3></div>
			
			<div class="container" id="offline">
	
			

			
			<div id="demo">
			           <table >
                <c:forEach var="contact" items="${listOffline}" varStatus="status">
                <tr>
      
                    <td>
      
   <dl class="accordion">
		<dt><h4><b>${contact.name}</b></h4></dt>
		<dd><h4>&nbsp;&nbsp;<a href="/LiveEventStreaming/ViewProfile?name=${contact.name}">View Profile</a>&nbsp;
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
	
<script type='text/javascript'>
	$("#searchBox").keyup(function(){
		var search= $("#searchBox").val();
		console.log(search);
		$('#searchRslt').load('search?val='+search).fadeIn('slow');
	});
	
	$("#searchBox").on('input',function(){
		$("#online").hide();
		$("#offline").hide();
	});
	
	$("#onlineHeader").focusin(function(){
		$("#online").show();
		$("#offline").show();
		$("#searchRslt").hide();
	});
	
	$("#offlineHeader").focusin(function(){
		$("#online").show();
		$("#offline").show();
		$("#searchRslt").hide();
	});
</script>		
		<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	
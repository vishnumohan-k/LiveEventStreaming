<%@include file="UserHeader.jsp"%>
<%@include file="Dashboard.jsp"%>
<style>
table {
    border-collapse: collapse;
    width: 60%;
}

th, td {
    text-align: left;
    padding: 8px;
}

th {
    background-color: #4CAF50;
    color: white;
}
</style>

<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			

		            
		
		<div class="row">
			<div class="col-lg-12">
				<h3 class="page-header">Hello <%=session.getAttribute("user")%></h3>
				
			</div>
		</div><!--/.row-->
						                
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
			
					<center><div class="panel-heading"><h2><abbr>Notifications</abbr></h2></div></center>
					
					<div class="panel-body">
						<div class="canvas-wrapper">
							<h4>Video Call Request From
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<a href="/LiveEventStreaming/ClearNoti">Clear All</a></h4><br/>
							<center><h4>${valid}</h4></center>
							<center>
							<table>
							<tr>
							<th>Name</th><th>Actions</th><th>Call Time</th>
							</tr>
								<c:forEach var="contact" items="${noti}" varStatus="status">
							
							<tr>
						<td><h4>	<p><a href="/LiveEventStreaming/ViewProfile?name=${contact.caller1}">${contact.caller1}</a>&nbsp;&nbsp;&nbsp;</td>
						<td>	<button type="button" class="btn btn-success" onclick="location.href='/LiveEventStreaming/success?id=${contact.id}';">Accept</button>&nbsp;&nbsp; 
							<button type="button" class="btn btn-danger" onclick="location.href='/LiveEventStreaming/Clear?id=${contact.id}';">Deny</button>&nbsp;&nbsp;
						</td>
						<td>
							 ${contact.date}&nbsp;&nbsp;
						</td>
							<td><a href="/LiveEventStreaming/Clear?id=${contact.id}"><img src="images/close_window.png" title="clear" style="width:15.1%;height:20%;"></a></td>
							</p></h4> 
							</tr>
	<!-- 
			<div id="dialog" title="Video call">
			<h5><b><img src="images/call.gif" alt="call" width="50" height="50" border="0" /> ${contact.caller1} Calling</b> </h5><br/>
			<center>
  			<button type="button" class="btn btn-success" onclick="location.href='/LiveEventStreaming/success?id=${contact.id}';">Accept</button>&nbsp;&nbsp;
			<button type="button" class="btn btn-danger" onclick="location.href='/LiveEventStreaming/Clear?id=${contact.id}';">Deny</button>&nbsp;&nbsp;
			</center>
			</div>		
	-->					
									</c:forEach>
									</table>
									</center>
						</div>
					</div>
					
				</div>
			</div>
	


		</div><!--/.row-->

		
		
											
	</div>	<!--/.main-->
	
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="js/jquery-1.12.2.js"></script>
  <script src="js/jquery-ui.js"></script>

  <script>
  $( function() {
    $( "#dialog" ).dialog();
  } );
  </script>
	
	
	<!--
	<button type="submit" class="btn btn-success" onclick="location.href='/LiveEventStreaming/success';">Accept</button>&nbsp;&nbsp;
							<button type="button" class="btn btn-danger" onclick="location.href='/LiveEventStreaming/Dash';">Deny</button>&nbsp;&nbsp; 
	 -->

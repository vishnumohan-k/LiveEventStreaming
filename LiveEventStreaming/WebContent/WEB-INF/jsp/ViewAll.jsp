<%@include file="UserHeader.jsp"%>
<%@include file="Dashboard.jsp"%>


<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			

		            
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Hello <%=session.getAttribute("user")%>,</h1>
				
			</div>
		</div><!--/.row-->
						                
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
			
					<center><div class="panel-heading"><h1><abbr>Your Complete Call History</abbr></h1></div></center>
					
					<div class="panel-body">
						<div class="canvas-wrapper">
							<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<a href="/LiveEventStreaming/ClearAll">Clear All</a></h2><br/>
							<center><h2>${valid}</h2></center>
								<c:forEach var="contact" items="${noti}" varStatus="status">
							<center>
							
						<h3>	<p><a href="/LiveEventStreaming/ViewProfile?name=${contact.caller1}">${contact.caller1}</a>&nbsp;&nbsp;&nbsp;
							
							Time: ${contact.date}
							<a href="/LiveEventStreaming/ClearSingle?id=${contact.id}"><img src="images/close_window.png" style="width:2.1%;height:10%;"></a>
							</p></h3> 
							</center>
									</c:forEach>
						</div>
					</div>
					
				</div>
			</div>
		</div><!--/.row-->

		
		
											
	</div>	<!--/.main-->
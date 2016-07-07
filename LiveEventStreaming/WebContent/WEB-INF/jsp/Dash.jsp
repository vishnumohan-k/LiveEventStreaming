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
					<center><div class="panel-heading"><h1><abbr>Notifications</abbr></h1></div></center>
					<div class="panel-body">
						<div class="canvas-wrapper">
							<h2>Video Call Request From</h2><br/>
							<center>
						<h3>	<p><a href="#">Sameesh</a>&nbsp;&nbsp;&nbsp;
							<button type="button" class="btn btn-success">Accept</button>&nbsp;&nbsp;
							<button type="button" class="btn btn-danger">Deny</button>
							</p></h3> 
							</center>
						</div>
					</div>
				</div>
			</div>
		</div><!--/.row-->
		
		
		
											
	</div>	<!--/.main-->
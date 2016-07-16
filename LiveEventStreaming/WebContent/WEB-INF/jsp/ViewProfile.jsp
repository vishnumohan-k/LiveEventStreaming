<%@include file="UserHeader.jsp"%>
<%@include file="Dashboard.jsp"%>
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			

		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Profile Page</h1>
				
			</div>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading"><center><h1><abbr>${name}</abbr></h1></center></div>
					<div class="panel-body">
						<div class="canvas-wrapper">
						     <c:forEach var="contact" items="${listProfile}" varStatus="status">
						
							<h2>Username:&nbsp;${contact.name}</h2><br/>
							<h2>Email Id:&nbsp;${contact.email}</h2><br/>
							<h2>Phone Number:&nbsp;${contact.number}</h2><br/>
							<h2>Last Login:&nbsp;${contact.date}</h2><br/>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div><!--/.row-->
		
		
		
											
	</div>	<!--/.main-->
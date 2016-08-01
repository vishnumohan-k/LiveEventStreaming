<%@include file="UserHeader.jsp"%>
<%@include file="Dashboard.jsp"%>
<style>
table {
    border-collapse: collapse;
    width: 65%;
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
				<center><h3 class="page-header">Profile-<abbr>${name}</abbr></h3></center>
				
			</div>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
				
					<div class="panel-body">
						<div class="canvas-wrapper">
						     <c:forEach var="contact" items="${listProfile}" varStatus="status">
							<center>
							<table >
							<tr>
							<th>Name</th><th>Email</th><th>Phone Number</th><th>Last Login Time</th>
							</tr>
							<tr>
							<td><h4>${contact.name}</h4></td><br/>
							<td><h4>${contact.email}</h4></td><br/>
							<td><h4>${contact.number}</h4></td><br/>
							<td><h4>${contact.date}</h4></td><br/>
							</tr>
							</center>
							</table>
							
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div><!--/.row-->
		
		
		
											
	</div>	<!--/.main-->
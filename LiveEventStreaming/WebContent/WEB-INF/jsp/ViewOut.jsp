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
			
					<center><div class="panel-heading"><h3><abbr>Call History - Outgoing Calls</abbr></h3></div></center>
					
					<div class="panel-body">
						<div class="canvas-wrapper">
							<h4>
							<a href="/LiveEventStreaming/ViewAll?name=<%=session.getAttribute("user")%>">Incoming Calls</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							
							<a href="/LiveEventStreaming/ClearAll">Clear All</a></h4><br/>
							<center><h4>${valid}</h4></center>
							<center>
							<table >
						
							<tr>
							<th>Called To</th><th>Time</th><th>Status</th>
							</tr>
								<c:forEach var="contact" items="${noti}" varStatus="status">
							<center>
							<tr>
							
							<td>
						<h4>	<p><a href="/LiveEventStreaming/ViewProfile?name=${contact.caller1}">${contact.caller2}</a>&nbsp;&nbsp;&nbsp;
							</td>
							<td>
							 <h4>${contact.date}&nbsp;&nbsp;</h4>
							 </td>
							<td>
							<c:if test="${contact.status == 0}">
							<h4><mark style="background-color: orange;color: white;">Not Attended&nbsp;&nbsp;</mark></h4>
							</c:if>
							<c:if test="${contact.status == 1}">
							<h4><mark style="background-color: green;color: white;">On Call&nbsp;&nbsp;</mark></h4>
							</c:if>
							<c:if test="${contact.status == 3}">
							<h4><mark style="background-color: red;color: white;">Dropped&nbsp;&nbsp;</mark></h4>
							</c:if>
							<c:if test="${contact.status == 4}">
							<h4><mark style="background-color: yellow;color: green;">Disconnected&nbsp;&nbsp;</mark></h4>
							</c:if>
							 </td>
							 <td>
							 <a href="/LiveEventStreaming/ClearSingle?id=${contact.id}"><img src="images/close_window.png" title="clear" style="width:15.1%;height:20%;"></a> 
							 </td>
						
							 
							 
							 </tr>
							
							</p></h4> 
							</center>
									</c:forEach>
							</table>
							</center>
						</div>
					</div>
					
				</div>
			</div>
		</div><!--/.row-->

		
		
											
	</div>	<!--/.main-->
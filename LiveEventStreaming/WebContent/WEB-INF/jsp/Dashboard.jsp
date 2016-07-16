<%@include file="UserHeader.jsp"%>
<%response.setIntHeader("Refresh", 30); %>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<form role="search">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Search">
			</div>
		</form>
		<ul class="nav menu">
	<!-- 		<li class="active"><a href="#"><svg class="glyph stroked dashboard-dial"><use xlink:href="#stroked-dashboard-dial"></use></svg> Online</a></li> -->
	<div class="container">
			<h3><span class="glyphicon glyphicon-user"></span>Online&nbsp;<img alt="" src="images/online.jpg" style="width:2.1%;height:10%;"></h3>
			
			<div id="demo">
			           <table >
                <c:forEach var="contact" items="${listOnline}" varStatus="status">
                <tr>
      
                    <td>
                   <!--  <h3>${contact.name}&nbsp;<img alt="" src="images/online.jpg" style="width:3.1%;height:10%;"></h3>
                    -->
                    <div class="dropdown">
    <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">${contact.name}
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li><a href="/LiveEventStreaming/ChatRequest?name=${contact.name}">Send Video-Chat Request</a></li>
      <li><a href="/LiveEventStreaming/ViewProfile?name=${contact.name}">View Profile</a></li>
      <li class="divider"></li>
      <li><a href="#">Hide Contact</a></li>
      <li><a href="#">Exit</a></li>
    </ul>
    <br/>
  </div>     
  <br/> 
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
                    </td>
                     
                </tr>
                </c:forEach>             
            </table>
            </div>
            </div>
			</ul>
		</div>
		
		<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	
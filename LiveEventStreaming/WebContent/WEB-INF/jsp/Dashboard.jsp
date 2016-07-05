<%@include file="UserHeader.jsp"%>
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
	
			<h3><span class="glyphicon glyphicon-user"></span>Online&nbsp;<button type="button" class="btn" data-toggle="collapse" data-target="#demo">Show</button></h3>
			
			<div id="demo" class="collapse">
			           <table >
                <c:forEach var="contact" items="${listContact}" varStatus="status">
                <tr>
      
                    <td><h3>${contact.name}&nbsp;<img alt="" src="images/online.jpg" style="width:3.1%;height:10%;"></h3></td>
                             
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
	<script>
		$('#calendar').datepicker({
		});

		!function ($) {
		    $(document).on("click","ul.nav li.parent > a > span.icon", function(){          
		        $(this).find('em:first').toggleClass("glyphicon-minus");      
		    }); 
		    $(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
		}(window.jQuery);

		$(window).on('resize', function () {
		  if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
		})
		$(window).on('resize', function () {
		  if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
		})
	</script>	
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="js/jquery-1.12.2.js"></script>
	<script type="text/javascript">
		var auto_refresh=setInterval( function()
		{
		$('#load').load('chat').fadeIn('slow');
		},
		10000);
	</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Show</title>
</head>
<body >
	<h2>for monitering ajax working</h2>
	<div id="load"></div>
	here
</body>
</html>
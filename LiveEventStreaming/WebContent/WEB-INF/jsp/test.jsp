<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <script src="js/jquery-1.12.2.js"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Testing purpose</title>
</head>
<body>
<h1>Jquery testbox onkeypress</h1>
 <input id="searchBox" type="text">
 <div id ="searchRslt">
 Results will be heres
 </div>
 <div id ="onlineHeader" tabindex='1'><h1>ONLINE</h1></div>
 <div id="online">
 	 online user1<br>online user2
 </div>
 
<script type='text/javascript'>
	$("#searchBox").keyup(function(){
		var search= $("#searchBox").val();
		console.log(search);
		$('#searchRslt').load('search?val='+search).fadeIn('slow');
	});
	
	$("#searchBox").focusin(function(){
		$("#online").hide();
	});
	
	$("#onlineHeader").focusin(function(){
		$("#online").show();
		$("#searchRslt").hide();
	});
</script>
</body>
</html>
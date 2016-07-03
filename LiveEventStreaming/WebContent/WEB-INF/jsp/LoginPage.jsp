<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>
<%@include file="newHeader.jsp"%>
<br/>
<div id="main" style="width:400px; margin:0 auto; border: thin solid grey; border-radius: 25px;padding: 20px;">
<center>
<h2>${msg}</h2>
<form action="/LiveEventStreaming/SubmitLogin.html" method="post">
<p>
<input type="text" name="userName" placeholder="User Name" required style="height:20px;font-size:14pt;">
</p>
<p>
	<input type="password" name="password" placeholder="Password" required style="height:20px;font-size:14pt;">
</p>	
                    <button type="submit" name="Login"  id="login" style="font-size: 15px;font-weight: bold;" >Login</button>&nbsp;&nbsp;&nbsp;&nbsp;
                    <button type="reset" name="cancel"  id="reset" style="font-size: 15px;font-weight: bold;">Cancel</button>
<br/><br/>
<i>Not a member yet,&nbsp;</i><a href="/LiveEventStreaming/SubmitRegistration.html#main"><b>Sign Up</b></a>&nbsp;
</form>


  </center>
</div>
<script src="script.js"></script>
<!--  <%@include file="slider.jsp"%> -->
</body>
</html>
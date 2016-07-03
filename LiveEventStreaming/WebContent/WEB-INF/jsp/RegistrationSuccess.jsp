<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home Page</title>
</head>
<body>
<a href="Logout.html">Logout</a>
 <center>
 <h1>${headermsg}</h1>
 <h3>Hello ${usr.name} </h3>
 <p>Please Check your details...</p>
<table>
 <tr>
 	<td>Password</td>
 	<td>${usr.password}</td>
 </tr>
  <tr>
  
 	<td>Email</td>
 	<td>${usr.email}</td>
 </tr>
 
 </table>
 </center>
</body>
</html>
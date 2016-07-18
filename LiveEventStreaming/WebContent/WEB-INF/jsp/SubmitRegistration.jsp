<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<head>
          <script type="text/javascript">
    function Validate() 
    {
        var password = document.getElementById("pwd").value;
        var confirmPassword = document.getElementById("repwd").value;
        var Tel=document.getElementById("phone").value;
        if (isNaN(Tel))
        	{
        	alert("Invalid Phone number");
        	return false;
        	}
        if (password != confirmPassword) {
            alert("Passwords do not match.");
            return false;
        }
        return true;
    }
</script>

<%@include file="newHeader.jsp"%>
      <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
        <br><hr>
        <form action="/LiveEventStreaming/LoginAfterRegsistration.html" method="post">
    <div class="container">
    <div class="row" >
        <div id="main" style="width:400px; margin:0 auto; border: thin solid grey; border-radius: 25px;padding: 20px;">
            <form method="POST" action="Register.php" >
                 <h2 class="text-center">Register</h2>
                <br/>
                <b><h4><mark>${valid}</mark></h4></b>
                <div class="form-group has-feedback">
                <input type="text" name="user_name" class="form-control" id="username" placeholder="Name" autofocus required>
                <i class="glyphicon glyphicon-user form-control-feedback"></i>
                </div>
                <div class="form-group has-feedback">
                    <input type="email" name="email" class="form-control" id="userid" placeholder="Email" required>
                    <i class="glyphicon glyphicon-envelope form-control-feedback"></i>
                </div>
                <div class="form-group has-feedback">
                    <input type="text" name="phno"  class="form-control" id="phone" placeholder="Phone Number" required pattern="[0-9]{10}">
              <i class="glyphicon glyphicon-phone form-control-feedback"></i>
                </div>
                <div class="form-group has-feedback">
                    <input type="password" name="password" class="form-control" id="pwd" placeholder="Password" required >
                    <i class="glyphicon glyphicon-hand-left form-control-feedback"></i>

                </div>
                <div class="form-group has-feedback">
                    <input type="password" name="repassword" class="form-control" id="repwd" placeholder="Repeat Password" required >
                    <i class="glyphicon glyphicon-thumbs-up form-control-feedback"></i>
                </div>
                <br/>
                <div class="align-center" style="text-align:center">
                    <button type="submit" name="register" class="btn btn-default" id="login" style="font-size: 15px;font-weight: bold;" onclick="return Validate()">Register</button>&nbsp;&nbsp;&nbsp;&nbsp;
                    <button type="reset" name="cancel" class="btn btn-default" id="reset" style="font-size: 15px;font-weight: bold;">Cancel</button>
                    <br/><br/>
                  <h4>  <i>Already a member,&nbsp;</i><a href="/LiveEventStreaming/Login.html#main"><b>Sign In</b></a></h4>  
                </div>
            </form>
        </div>
    </div><!--login form-->
    </div>
</form>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="newHeader.jsp"%>
<head>
      <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
        <br><hr>

    <div class="container" >
    <div class="row" >
        <div id="main" style="width:400px; margin:0 auto; border: thin solid grey; border-radius: 25px;padding: 20px;">
            <form method="POST" action="/LiveEventStreaming/SubmitLogin.html">
                 <h2 class="text-center">Sign-In</h2>
                <br/>
                <div class="form-group has-feedback">
                    <input type="text" name="userName" class="form-control" id="userid" placeholder="User Name" autofocus required>
                    <i class="glyphicon glyphicon-user form-control-feedback"></i>${valid}
                </div>
                <br/>
                <div class="form-group has-feedback">
                    <input type="password" name="password" class="form-control" id="pwd" placeholder="Password" required>
                    <i class="glyphicon glyphicon-hand-left form-control-feedback"></i>
                </div>
                <br/>
                <div class="align-center" style="text-align:center">
                    <button type="submit" name="usher_id" class="btn btn-default" id="login" style="font-size: 15px;font-weight: bold;">Login</button>&nbsp;&nbsp;&nbsp;&nbsp;
                    <button type="reset" name="cancel" class="btn btn-default" id="reset" style="font-size: 15px;font-weight: bold;">Cancel</button>
                    <br/><br/>
 <h4> <i>Not a member yet,&nbsp;</i><a href="/LiveEventStreaming/SubmitRegistration.html#main"><b>Sign Up</b></a>&nbsp;</h4>
                </div>
            </form>
        </div>
    </div><!--login form-->
    </div>
</html>

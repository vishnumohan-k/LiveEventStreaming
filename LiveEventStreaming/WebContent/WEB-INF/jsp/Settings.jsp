<%@include file="UserHeader.jsp"%>
<%@include file="Dashboard.jsp"%>


<head>
          <script type="text/javascript">
    function Validate() 
    {
        var password = document.getElementById("pwd").value;
        var confirmPassword = document.getElementById("repwd").value;
        if (password != confirmPassword) {
            alert("Passwords do not match.");
            return false;
        }
        return true;
    }
</script>
    </head>
        <br><hr>
        <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			

		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					
					<div class="panel-body">
						<div class="canvas-wrapper">
						                <c:forEach var="contact" items="${editProfile}" varStatus="status">
						
        <form action="/LiveEventStreaming/UpdateProfile" method="post">
    <div class="container">
    <div class="row" >
        <div id="main" style="width:700px;  border: thin solid grey; border-radius: 25px;padding: 20px;">

                 <h2 class="text-center">Update Your Profile</h2>
                <br/>
                <div class="form-group has-feedback">
                <input type="text" name="user_name" class="form-control" id="username" placeholder="New/Old UserName"  disabled value=${contact.name} >
                <i class="glyphicon glyphicon-user form-control-feedback"></i>${valid}
                </div>
                <div class="form-group has-feedback">
                    <input type="email" name="email" class="form-control" id="userid" placeholder="New Email" value=${contact.email} required autofocus>
                    <i class="glyphicon glyphicon-envelope form-control-feedback"></i>
                </div>
                <div class="form-group has-feedback">
                    <input type="text" name="phno"  class="form-control" id="age" placeholder="New Phone Number" value=${contact.number} required>
              <i class="glyphicon glyphicon-phone form-control-feedback"></i>
                </div>
                <div class="form-group has-feedback">
                    <input type="password" name="password" class="form-control" id="pwd" placeholder="New Password" required>
                    <i class="glyphicon glyphicon-hand-left form-control-feedback"></i>

                </div>
                <div class="form-group has-feedback">
                    <input type="password" name="repassword" class="form-control" id="repwd" placeholder="Repeat Password" required>
                    <i class="glyphicon glyphicon-thumbs-up form-control-feedback"></i>
                </div>
                <br/>
                <div class="align-center" style="text-align:center">
                    <button type="submit" name="register" class="btn btn-default" id="login" style="font-size: 15px;font-weight: bold;" onclick="return Validate()">Update</button>&nbsp;&nbsp;&nbsp;&nbsp;
                    <button type="reset" name="cancel" class="btn btn-default" id="reset" style="font-size: 15px;font-weight: bold;">Cancel</button>
                    <br/><br/>
             
                </div>
       
        </div>
    </div><!--login form-->
    </div>
</form>
</c:forEach>
</div>
					</div>
				</div>
		</div><!--/.row-->
</div>


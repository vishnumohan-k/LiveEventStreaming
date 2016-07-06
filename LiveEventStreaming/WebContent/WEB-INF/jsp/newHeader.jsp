
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
      <link rel="stylesheet" href="css/bootstrap.min.css">

<script type="text/javascript" src="js/visitorhome.js"></script>
<title>ShowTime</title>

<form:form modelAttribute="visitorhome">
    <div class="breadcrumbs">
        <h1 style="padding-left:420px;" ><tiles:insertAttribute name="menutitle"/> </h1>

        <ul class="accounts" >
            <li>  <img src="images/wireless.png" style="width:1.1%;height:10%;">            
                ShowTime

                <a id="events" style=" font-size: 20px;padding-left: 70%;text-decoration:none" href="home.html">Home</a>

                <a style="padding-left: 2%;font-size: 20px;text-decoration:none" id="login" href="Login.html#main">Login</a>
                <a id="signup" style="padding-left: 2%; font-size: 20px;text-decoration:none" href="SubmitRegistration.html#main">Sign Up</a>
            </li>   
        </ul>
    </div>	
    
       <!--#BDA8E2-->
    <div  style="background-color: #006699;Width:100%;Height:100%; ">
        <br>
        <div style="float:left;padding:5px;min-height:24px;width:15%;height:90%;">
            <img src="images/wireless.png" style="width:69%;padding-left: 30%;">
        </div>
        <div style="float:left;padding:0px 0px 0px 0px;min-height:24px;font-weight:bold; color:#000;width:80%;height:9%;">
            <div>  
                <h1 style="color: #ffffff;font-size:50px;">ShowTime</h1> 
              
            </div>
            <div style="Padding-left:9%;color: #ffffff;Padding-top:1%;;font-size: 30px;">
                Interactive live Streaming, Video on Demand
            </div>
            <div style="Padding-left:15%;font-size: 16px;color: #bcb0d1;Padding-top:2%;">ShowTime lets you broadcast shows and events onto the web,<br>
                and have your audiences interact and participate in real time.
            </div>
            <div style="padding-left:71%">
                <img src="images/go.gif" style="width:10%" ></div>
            <a  style="color: #ffA500;padding-left: 49%; font-size: 20px;cursor: default;text-decoration:none" href="#" onclick="setFocus()">How to Create an Event </a>  
            <!--<input type="button" onclick="window.location.href='login.htm'" id="login1" name="login" value="Create an Event"   style="background: linear-gradient(to bottom, #ffffff 0%, #ffa500 50%, #ffc966 100%) repeat scroll 0 0 rgba(0, 0, 0, 0); border: medium none; border-radius: 4px !important;cursor: pointer; margin: 0 0 0 5px; padding: 5px 17px;backpadding-left: 1%; font-size: 20px;text-decoration:none;margin-top: 15px;" class=""/>-->
            <a id="login1" style="color: #ffA500;padding-left: 1%; font-size: 20px;text-decoration:none" href="#">Create an Event</a> 
            <br>
        </div>
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</div>

<div style="background-color: #ffffff;Width:100%;Height:100%;">
        <br>
        <div style="width:16%;float:left;">
            <div class="left" style=" font-family: Comic Sans MS;color:#ffffff;float: right;height: 40px;background-color: green;width: 90%;border-radius: 11px;" ><center> &nbsp;Our Facilities</center></div>  
            <br><br><br><div class="left" style=" font-family: Comic Sans MS;color:#ffffff;float: right;height: 40px;background-color: orange;width: 90%;border-radius: 11px;" ><center> &nbsp;Watch Live Events </center></div>  
            <br> <br><br> <div class="left" style=" font-family: Comic Sans MS;color:white;float: right;height: 45px;background-color: #006699;width: 90%;border-radius: 11px;" ><center>&nbsp;Book Tickets for Live Shows</center> </div>
            <br><br><br> <div class="left" style=" font-family: Comic Sans MS;color:#ffffff;float: right;height: 40px;background-color: orange;width: 90%;border-radius: 11px;" ><center> &nbsp;Virtual Event Room </center></div>  
            <br><br><br><div class="left" style=" font-family: Comic Sans MS;color:white;float: right;height: 45px;background-color: #006699;width: 90%;border-radius: 11px;" ><center>&nbsp;Watch On Demand Shows</center> </div>
            <br><br><br>  <div class="left" style=" font-family: Comic Sans MS;color:#ffffff;float: right;height: 45px;background-color: orange;width: 90%;border-radius: 11px;" ><center> &nbsp;Interact With Ticket Holders</center></div>  
            <br> <br><br> <div class="left" style=" font-family: Comic Sans MS;color:white;float: right;height: 40px;background-color: #006699;width: 90%;border-radius: 11px;" ><center>&nbsp;Invite Your Friends</center> </div>
            <br><br><br> <div class="left" style=" font-family: Comic Sans MS;color:#ffffff;float: right;height: 45px;background-color: orange;width: 90%;border-radius: 11px;" ><center> &nbsp;Design Your Event Room</center></div>  
            <br><br><br><div class="left" style=" font-family: Comic Sans MS;color:white;float: right;height: 40px;background-color: #006699;width: 90%;border-radius: 11px;" ><center>&nbsp;Social Media Support</center> </div>
            <br><br><br>  <div class="left" style=" font-family: Comic Sans MS;color:#ffffff;float: right;height: 40px;background-color: orange;width: 90%;border-radius: 11px;" ><center> &nbsp;Paypal Support </center></div>  
            <br> <br><br> <div class="left" style=" font-family: Comic Sans MS;color:white;float: right;height: 40px;background-color: #006699;width: 90%;border-radius: 11px;" ><center>&nbsp;Watch Shows Free</center> </div>
            <br><br><br> <div class="left" style=" font-family: Comic Sans MS;color:#ffffff;float: right;height: 40px;background-color: orange;width: 90%;border-radius: 11px;" ><center> &nbsp;Get Mail Alerts</center></div>  
            <br><br><br>
        </div>
  </div>
        
       
    
    </form:form>

<%-- 
    Document   : visitor page
    Created on : May 23, 2014, 10:59:23 AM
    Author     : user
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<script type="text/javascript" src="js/visitorhome.js"></script>
<form:form modelAttribute="visitorhome">
    <div class="breadcrumbs">
        <h1 style="padding-left:420px;" ><tiles:insertAttribute name="menutitle"/> </h1>

        <ul class="accounts" >
            <li>  <img src="images/wireless.png" style="width:1.1%;height:10%;">            
                ShowTime

                <a id="events" style=" font-size: 20px;padding-left: 70%;text-decoration:none" href="">Home</a>

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
        <div class="center" style="padding:3%;min-height:24px;width:35%;height:80%; padding-top: 3%;float:left">
            <center style="margin-left:1%">
                <img src="images/pppt.png" style="width:132%;"></center>
        </div>
        <div  style="padding:20px 0px 0px 0px;min-height:24px;font-weight:bold; color:#000;width:30%;height:10%;float:left ">
            <img src="images/1.jpg" style="padding-left:35%;float:left">
            <div  style="Width:40%;Height:50%;margin-top:0px;float:left;padding-left:2%">
                <div class="left">
                    <img src="images/createevt.png" style="width:60%; ">
               
                    <span style="padding-top: 10%;color: blue;font-size: 20px;">  Design Your Event Page</span>
                </div>
                <div class="left" >
                    <p>Create an account in showTime by clicking create an event link.Our editor provides you powerful editing tool for
                        designing your event room.You can decide event rooms look and feel.
                    </p>
                </div>
            </div>
            <img src="images/2.jpg" style="float:left;">
            <div  style="Width:40%;Height:50%;padding-left:98%;float:left;margin-top:-325px">
                <div class="right">
                    <img src="images/promote.jpg" style="width:50%; ">   
                    <span style="padding-left: 1%;color: blue;font-size: 20px;"> Promote Your Show</span>
                </div>
                <div class="right" >
                    <p >You can sent email for inviting your friends for booking tickets. And built in social media tools allow you to invite your fans to book tickets and encourage them to share it with their friends.
                    </p>
                </div> 
            </div>
            <br><br>
            <img src="images/3.jpg" style="padding-left:35%;float:left;margin-top: 13%">
            <div  style="Width:40%;Height:50%;padding-left:44%;float:left">
                <div class="left">
                    <img src="images/live.png" style="width:45%; "> <br>   
                    <span style="padding-left: 9%;color: blue;font-size: 20px;"> Go Live</span>
                </div>
                <div class="right">
                    <p>Go live with your live events.
                    </p>
                </div>
            </div>
            <img src="images/4.jpg" style="padding-left:84%;float:left;margin-top: -198px">
            <div  style="Width:40%;Height:50%;padding-left:94%;float:left;margin-top: -164px">
                <div class="right">
                    <img src="images/interact.png" style="width:50%; "> <br>  
                    <span style="color: blue;font-size: 20px;"> Interact Live</span>
                </div>
                <div class="left">
                    <p>Chat option let you know about audience responses and their feed back.
                    </p>
                </div>
            </div>

        </div>


        <br>
        <br>
<!--                <br><br><br><br><br><br><br><br>
                <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>-->
    </div>
    <!--    <div id="divtutorial" style="background-color: #d6ca83;Width:100%;Height:100%;color: #302740;font-size: 16px;font-family: fantasy;font-weight: bold;font-stretch: expanded">
            <div id="left" style="Width:40%;Height:50%;padding-left:30%;">
                <img src="images/createevt.png" style="width:257px; height:200px;">
                <br>          <br>
                <span style="padding-left: 5%;">  Design Your Event Page</span></div>
            <div id="right" style="Width:40%;Height:50%;padding-left:60%;">
                <img src="images/promote.jpg" style="width:257px; height:200px;">          <br>          <br>
                <span style="padding-left: 7%;"> Promote Your Show</span></div>
            <div id="left" style="Width:40%;Height:50%;padding-left:30%;">
                <img src="images/live.png" style="width:257px; height:200px;">          <br>          <br>
                <span style="padding-left: 15%;"> Go Live</span></div>
            <div id="right" style="Width:40%;Height:50%;padding-left:60%;">
                <img src="images/interact.png" style="width:257px; height:200px;">          <br>          <br>
                <span style="padding-left: 15%;"> Interact Live</span></div>
            <br><br>
        </div>-->
</form:form>   

<!--
<a style="padding-left: 2%;font-size: 20px;text-decoration:none" id="login" href="Login.html#main">Login</a>
<a id="signup" style="padding-left: 2%; font-size: 20px;text-decoration:none" href="SubmitRegistration.html#main">Sign Up</a> 
 -->   
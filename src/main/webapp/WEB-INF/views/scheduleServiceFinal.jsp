<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.jayesh.model.User"%>
<%@ page import="com.jayesh.model.ServiceProvider"%>
<%@ page import="java.util.*"%>
<html>
  <head>
    <title>Service Provider Registration</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link
      href="http://fonts.googleapis.com/css?family=Montserrat:400,700"
      rel="stylesheet"
      type="text/css"
    />
   
  </head>
  <body>
  <%
  
  ServiceProvider sp=(ServiceProvider)session.getAttribute("spObj");
  User user=(User)session.getAttribute("uObj");
  String userName=user.getUname();
  String uId= Integer.toString(sp.getSid());
  String contact=user.getUmob();
  String email=user.getUemail();
  String serviceProviderName=sp.getSname();
  String serviceProviderContact=sp.getScontact();
  String status="Pending";
  
  
  
  
  %>
    <div class="logo"></div>
    <div class="login-block">
      <form action="afterServiceBooked" method="post">
        <h1>Schedule Service</h1>

        <!-- Existing user registration fields -->

        <div class="row">
            <input type="hidden" placeholder="User ID" id="uid" name="userId" value="<%=uId %>" />
            <input type="hidden" placeholder="Name" id="uname" name="userName" value="<%=userName %> "/>
              
            
           
        </div>

        <div class="row">
            <!-- Other existing fields -->
            <input type="hidden"  placeholder="Email" id="uemail" name="email" value="<%= email %>" />
             <input type="text" placeholder="Service Title" id="serviceTitle" name="serviceTitle" />
        </div>

        <!-- New attributes -->
        <div class="row">
           
            
        </div>

        <div class="row">
            <input type="hidden" placeholder="Contact" id="ucontact" name="contact" value="<%= contact %>"/>
           
             
            <input type="hidden" placeholder="ServiceProvider Name" id="userviceProviderName" name="serviceProviderName" value="<%= serviceProviderName %>"/>
            <input type="hidden" placeholder="ServiceProvider Contact" id="userviceProviderContact" name="serviceProviderContact" value="<%=serviceProviderContact %>"/>
            <input type="date" placeholder="Date" id="udate" name="date" />
            <input type="time" placeholder="Time" id="utime" name="time" />
            <input type="hidden" placeholder="Status" id="ustatus" name="ustatus" value="Pending" />
        </div>
        
<div class="row">
<textarea placeholder="Service Description" id="serviceDescription" name="serviceDescription" style="width: 100%; height: 100px; padding: 10px; border-radius: 5px; border: 1px solid #ccc;"></textarea>
        </div><br>
        <div class="row">
            <input type="submit" value="Submit" class="button-73" />
        </div>
        
        

         
    </form>
    </div>

 
     
  </body>
  
   <style>
      body {
        background: url("https://s3.wns.com/S3_5/Images/GenericHeaderBanner/DesktopImg/19227/3120/Shared-Services_HD-1980x1080px.jpg ")
          no-repeat fixed center center;
        background-size: cover;
        font-family: Montserrat;
        margin: 0;
        padding: 0;
      }

      .logo {
        width: 213px;
        height: 36px;
        margin: 30px auto;
        background-image: url("your-logo-image-path.jpg");
        background-size: contain;
        background-repeat: no-repeat;
      }

      .login-block {
        width: 500px;
        padding: 20px;
        background: #fff;
        border-radius: 10px;
        border: 1px solid #ddd;
        margin: 0 auto;
        box-shadow: 0px 0px 10px 0px #000000;
      }

      .login-block h1 {
        text-align: center;
        color: #333;
        font-size: 24px;
        text-transform: uppercase;
        margin-top: 0;
        margin-bottom: 20px;
      }

      .login-block input,
      .login-block select {
        width: calc(50% - 20px);
        height: 40px;
        box-sizing: border-box;
        border-radius: 5px;
        border: 1px solid #ccc;
        margin-bottom: 20px;
        font-size: 14px;
        font-family: Montserrat;
        padding: 0 10px;
        outline: none;
        display: inline-block;
      }

      .login-block select {
        background-color: #fff;
        color: #333;
        vertical-align: top;
      }

      .login-block input[type="submit"] {
        width: 100%;
        height: 40px;
        background: #3498db;
        box-sizing: border-box;
        border-radius: 5px;
        border: 1px solid #297cb3;
        color: #fff;
        font-weight: bold;
        text-transform: uppercase;
        font-size: 14px;
        font-family: Montserrat;
        cursor: pointer;
        transition: background 0.3s;
      }

      .login-block input[type="submit"]:hover {
        background: #2980b9;
      }

      .login-block a {
        text-decoration: none;
        color: #3498db;
        display: block;
        text-align: center;
        margin-top: 20px;
      }

      .login-block button {
        background-color: #3498db;
        border: none;
        color: #fff;
        padding: 10px 20px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 4px 2px;
        transition-duration: 0.4s;
        cursor: pointer;
        border-radius: 8px;
      }

      .button-73:hover {
        background-color: #2980b9;
      }

      .links {
        text-align: center;
        margin-top: 20px;
      }

      .links a {
        color: #3498db;
        text-decoration: none;
        margin-right: 10px;
      }

      .row {
        display: flex;
        justify-content: space-between;
        flex-wrap: wrap;
      }

      .row input,
      .row select {
        width: calc(48% - 20px);
        margin-bottom: 20px;
      }
    </style>
</html>

  
  
  
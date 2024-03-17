

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
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
  </head>
  <body>
  <%
  String slatitude=request.getParameter("lat");
  String slongitude=request.getParameter("lng");
  
  System.out.println("lat "+slatitude);
  System.out.println("lng "+slongitude);
  %>
    <div class="logo"></div>
    <div class="login-block">
      <form action="afterUserRegister" method="post">
    <h1>User Registration</h1>

    <div class="row">
        <input type="text" placeholder="User ID" id="uid" name="uid" />
        <input type="text" placeholder="Name" id="uname" name="uname" />
        <input type="date" placeholder="DOB" id="udob" name="udob" />
    </div>

    <div class="row">
        <input type="text" placeholder="Contact" id="umob" name="umob" />
        <input type="text" placeholder="Address" id="uaddress" name="uaddress" />
    </div>

    <div class="row">
        <input type="text" placeholder="Pincode" id="upincode" name="upincode" />
        <input type="text" placeholder="Area" id="uarea" name="uarea" />
    </div>

    <div class="row">
        <select name="ucity" id="ucity">
            <option value="">Select City</option>
            <optgroup label="Dhule District">
                <option value="Dhule">Dhule</option>
                <option value="Sakri">Sakri</option>
                <option value="Shirpur">Shirpur</option>
                <option value="Dondaicha">Dondaicha</option>
                <option value="Sindkheda">Sindkheda</option>
            </optgroup>
            <optgroup label="Nashik District">
                <option value="Nashik">Nashik</option>
                <option value="Malegaon">Malegaon</option>
                <option value="Niphad">Niphad</option>
                <option value="Sinnar">Sinnar</option>
                <option value="Igatpuri">Igatpuri</option>
                <option value="Wada Lasalgao">Wada Lasalgao</option>
            </optgroup>
            <optgroup label="Jalgaon District">
                <option value="Jalgaon">Jalgaon</option>
                <option value="Amalner">Amalner</option>
                <option value="Chopda">Chopda</option>
                <option value="Erandol">Erandol</option>
                <option value="Dharangao">Dharangao</option>
                <option value="Bhusawal">Bhusawal</option>
                <option value="Ravel">Ravel</option>
            </optgroup>
            <optgroup label="Nandurbar District">
                <option value="Nandurbar">Nandurbar</option>
                <option value="Akkalkuwa">Akkalkuwa</option>
                <option value="Taloda">Taloda</option>
                <option value="Shahada">Shahada</option>
            </optgroup>
            <optgroup label="Aurangabad District">
                <option value="Kannad">Kannad</option>
                <option value="Soegaon">Soegaon</option>
                <option value="Sillod">Sillod</option>
                <option value="Yeole">Yeole</option>
                <option value="Verul">Verul</option>
            </optgroup>
        </select>
        <input type="hidden" name="ulatitude" id="ulatitude" value="<%= slatitude %>" />
        <input type="hidden" name="ulongitude" id="ulongitude" value="<%= slongitude %>" />
        <input type="text" placeholder="Email" id="uemail" name="uemail" />
    </div>

    <div class="row">
        <input type="password" placeholder="Password" id="upassword" name="upassword" />
    </div>

    
  

    <div class="row">
        <input type="submit" value="Submit" class="button-73" />
    </div>

    <div class="links">
        <a href="userLogin">User Login</a>
        <a href="serviceProviderLogin">Service Provider Login</a>
        <a href="adminLogin">Admin Login</a>
    </div>
</form>

    </div>

 
     
  </body>
</html>

  
  
  
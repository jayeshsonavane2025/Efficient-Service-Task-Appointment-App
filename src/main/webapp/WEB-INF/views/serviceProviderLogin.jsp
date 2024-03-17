<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<html>
  <head>
    <title>Service Provider Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  </head>

  <link
    href="http://fonts.googleapis.com/css?family=Montserrat:400,700"
    rel="stylesheet"
    type="text/css"
  />
  <div class="logo"></div>
  <div class="login-block">
     <form action="afterServiceProviderLogin" method="post"  >
            <h1> Service Provider Login</h1>
            
            <!-- Add input fields for the Pharmacist information -->
            <input type="text" placeholder=" Service Provider ID" id="sid" name="sid" />
            
            
          
            
            <input type="password" placeholder="Password" id="password" name="spassword" />
            <input type="submit" value="Submit" class="button-73" /><br /><br />
            
            <center>
                <a href="registerServiceProvider">
                    &nbsp; Register for Service Provider  
                </a>
            </center>
            
            <br />
            
            <center>Not Pharmacist?</center>
            
            <br />
            
            <a href="userLoginl"> &nbsp;User Login </a>
            <a href="adminLogin">
                &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Admin Login
            </a>
        </form>

    <style>
      a {
        text-decoration: none;
        color: blue;
      }
      body {
        background: url("https://s3.wns.com/S3_5/Images/GenericHeaderBanner/DesktopImg/19227/3120/Shared-Services_HD-1980x1080px.jpg ")
          no-repeat fixed center center;
        background-size: cover;
        font-family: Montserrat;
      }

      .logo {
        width: 213px;
        height: 36px;

        margin: 30px auto;
      }

      .login-block {
        width: 320px;
        padding: 20px;
        background: #fff;
        border-radius: 5px;
        border-top: 5px solid #ff656c;
        margin: 0 auto;
      }

      .login-block h1 {
        text-align: center;
        color: #000;
        font-size: 18px;
        text-transform: uppercase;
        margin-top: 0;
        margin-bottom: 20px;
      }

      .login-block input {
        width: 100%;
        height: 42px;
        box-sizing: border-box;
        border-radius: 5px;
        border: 1px solid #ccc;
        margin-bottom: 20px;
        font-size: 14px;
        font-family: Montserrat;
        padding: 0 20px 0 50px;
        outline: none;
      }

      .login-block input#username {
        background: #fff url("http://i.imgur.com/u0XmBmv.png") 20px top
          no-repeat;
        background-size: 16px 80px;
      }

      .login-block input#username:focus {
        background: #fff url("http://i.imgur.com/u0XmBmv.png") 20px bottom
          no-repeat;
        background-size: 16px 80px;
      }

      .login-block input#password {
        background: #fff url("http://i.imgur.com/Qf83FTt.png") 20px top
          no-repeat;
        background-size: 16px 80px;
      }

      .login-block input#password:focus {
        background: #fff url("http://i.imgur.com/Qf83FTt.png") 20px bottom
          no-repeat;
        background-size: 16px 80px;
      }

      .login-block input:active,
      .login-block input:focus {
        border: 1px solid #ff656c;
      }

      .login-block button {
        width: 100%;
        height: 40px;
        background: #ff656c;
        box-sizing: border-box;
        border-radius: 5px;
        border: 1px solid #e15960;
        color: #fff;
        font-weight: bold;
        text-transform: uppercase;
        font-size: 14px;
        font-family: Montserrat;
        outline: none;
        cursor: pointer;
      }

      .login-block button:hover {
        background: #ff7b81;
      }
      .button-73 {
        appearance: none;
        background-color: #ffffff;
        border-radius: 40em;
        border-style: none;
        box-shadow: #adcfff 0 -12px 6px inset;
        box-sizing: border-box;
        color: #000000;
        cursor: pointer;
        display: inline-block;
        font-family: -apple-system, sans-serif;
        font-size: 1.2rem;
        font-weight: 700;
        letter-spacing: -0.24px;
        margin: 0;
        outline: none;
        padding: 1rem 1.3rem;
        quotes: auto;
        text-align: center;
        text-decoration: none;
        transition: all 0.15s;
        user-select: none;
        -webkit-user-select: none;
        touch-action: manipulation;
      }

      .button-73:hover {
        background-color: #ffc229;
        box-shadow: #ff6314 0 -6px 8px inset;
        transform: scale(1.125);
      }

      .button-73:active {
        transform: scale(1.025);
      }

      @media (min-width: 768px) {
        .button-73 {
          font-size: 1.5rem;
          padding: 0.75rem 2rem;
        }
      }
    </style>
  </div>
</html>

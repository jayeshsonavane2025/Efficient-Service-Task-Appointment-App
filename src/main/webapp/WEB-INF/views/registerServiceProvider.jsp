

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
      <form action="afterRegisterServiceProvider" method="post"  >
        <h1>Service Provider Registration</h1>
        <div class="row">
         <input type="text" placeholder="Service Provider ID" id="sid" name="sid" />

          <input type="text" placeholder="Name" id="sname" name="sname" />
          <input type="text" placeholder="Age" id="sage" name="sage" />
        </div>
        <div class="row">
          <input
            type="text"
            placeholder="Contact"
            id="scontact"
            name="scontact"
          />
          <input
            type="text"
            placeholder="Address"
            id="saddress"
            name="saddress"
          />
        </div>
        <div class="row">
          <input
            type="text"
            placeholder="Pincode"
            id="spincode"
            name="spincode"
          />
          <input type="text" placeholder="Area" id="sarea" name="sarea" />
        </div>
        <div class="row">
          <input type="text" placeholder="City" id="scity" name="scity" />
         <input type="hidden" name="slatitude" id="slatitude" value="<%= slatitude %>" />
<input type="hidden" name="slongitude" id="slongitude" value="<%= slongitude %>" />
          <input type="text" placeholder="Email" id="semail" name="semail" />
        </div>
        <div class="row">
          
          <input
            type="password"
            placeholder="Password"
            id="spassword"
            name="spassword"
          />
          
            <!--   <input type="file" name="imageData" placeholder="Upload Your Image" accept="image/*"/> -->
        </div>
        

        <!-- Category and Service Type Selection -->
        <div class="row">
          <select name="scategory" id="scategory">
            <option value="">Select Category</option>
            <option value="Home Services">Home Services</option>
            <option value="Technology Services">Technology Services</option>
            <option value="Creative Services">Creative Services</option>
            <option value="Event and Hospitality Services">
              Event and Hospitality Services
            </option>
            <option value="Education and Training Services">
              Education and Training Services
            </option>
            <option value="Automotive Services">Automotive Services</option>
            <option value="Beauty and Wellness Services">
              Beauty and Wellness Services
            </option>
            <option value="Professional Services">Professional Services</option>
          </select>

          <select name="sServiceType" id="sServiceType">
            <option value="">Select Service Type</option>
          </select>
        </div>

        <div class="row">
          <input
            type="text"
            placeholder="Opening Time"
            id="sopentime"
            name="sopentime"
          />
          <input
            type="text"
            placeholder="Closing Time"
            id="sclosetime"
            name="sclosetime"
          />
        </div>

        <div class="row">
          <input type="submit" value="Submit" class="button-73" />
        </div>

        <div class="links">
          <a href="serviceProviderLogin">Service Provider Login</a> 
          <a href="userLogin">User Login</a>
          <a href="adminLogin">Admin Login</a>
        </div>
      </form>
    </div>

    <script>
      // Get references to the dropdowns
      var categoryDropdown = document.getElementById("scategory");
      var serviceTypeDropdown = document.getElementById("sServiceType");

      // Define the service types for each category
      var serviceTypes = {
        "Home Services": [
          "Plumbing Services",
          "Electrical Services",
          "Painting Services",
          "Carpentry Services",
          "HVAC Services",
          "Appliance Repair Services",
          "Roofing Services",
          "Flooring Services",
          "Cleaning Services",
          "Landscaping Services",
          "Pest Control Services",
          "Home Renovation Services",
          "Moving Services",
        ],
        "Technology Services": [
          "Computer Repair Services",
          "Web Development Services",
          "Graphic Design Services",
          "Mobile App Development Services",
          "IT Consulting Services",
        ],
        "Creative Services": [
          "Photography Services",
          "Videography Services",
          "Graphic Design Services",
          "Writing and Content Creation Services",
        ],
        "Event and Hospitality Services": [
          "Catering Services",
          "Event Planning Services",
          "Venue Rental Services",
        ],
        "Education and Training Services": [
          "Personal Fitness Training Services",
          "Yoga and Meditation Classes",
          "Tutoring and Education Services",
        ],
        "Automotive Services": [
          "Car Repair and Maintenance Services",
          "Auto Detailing Services",
          "Towing Services",
        ],
        "Beauty and Wellness Services": [
          "Beauty and Spa Services",
          "Massage Therapy Services",
          "Wellness Coaching Services",
        ],
        "Professional Services": [
          "Legal Services",
          "Financial Planning Services",
          "Real Estate Services",
          "Consulting Services",
        ],
      };

      // Event listener for category dropdown
      categoryDropdown.addEventListener("change", function () {
        // Clear previous options
        serviceTypeDropdown.innerHTML =
          '<option value="">Select Service Type</option>';
        // Get selected category
        var selectedCategory = categoryDropdown.value;
        // Populate service types based on the selected category
        serviceTypes[selectedCategory].forEach(function (serviceType) {
          serviceTypeDropdown.innerHTML +=
            '<option value="' + serviceType + '">' + serviceType + "</option>";
        });
      });
    </script>
  </body>
</html>

  
  
  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.jayesh.model.User"%>
<%@ page import="com.jayesh.model.ServiceProvider"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>


<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="icon"
	href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQzEE0IUh5_no5tZxAnFktUX58Vnkbw_JWQA&usqp=CAU"
	type="image/x-icon" style="border-radius: 50%;">
<title>BizExpert Hub</title>



<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Novus Admin Panel Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
      addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }
    </script>

<!-- Bootstrap Core CSS -->
<link href="./resources/css/bootstrap.css" rel="stylesheet"
	type="text/css" />
<!-- Custom CSS -->
<link href="./resources/css/style.css" rel="stylesheet" type="text/css" />
<!-- font CSS -->
<!-- font-awesome icons -->
<link href="./resources/css/font-awesome.css" rel="stylesheet" />
<!-- //font-awesome icons -->
<!-- js-->
<script src="./resources/js/jquery-1.11.1.min.js"></script>
<script src="./resources/js/modernizr.custom.js"></script>
<!--webfonts-->
<link
	href="./resources/fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic"
	rel="stylesheet" type="text/css" />
<!--//webfonts-->
<!--animate-->
<link href="./resources/css/animate.css" rel="stylesheet"
	type="text/css" media="all" />
<script src="./resources/js/wow.min.js"></script>
<script>
      new WOW().init();
    </script>
<!--//end-animate-->
<!-- chart -->
<script src="./resources/js/Chart.js"></script>
<!-- //chart -->
<!--Calender-->
<link rel="stylesheet" href="./resources/css/clndr.css" type="text/css" />
<script src="./resources/js/underscore-min.js" type="text/javascript"></script>
<script src="./resources/js/moment-2.2.1.js" type="text/javascript"></script>
<script src="./resources/js/clndr.js" type="text/javascript"></script>
<script src="./resources/js/site.js" type="text/javascript"></script>
<!--End Calender-->
<!-- Metis Menu -->
<script src="./resources/js/metisMenu.min.js"></script>
<script src="./resources/js/custom.js"></script>
<link href="./resources/css/custom.css" rel="stylesheet" />
<!--//Metis Menu -->
<link rel="stylesheet"
	href="./resources/font-awesome/css/font-awesome.min.css">
</head>
<body class="cbp-spmenu-push">
	<div class="main-content">
		<!--left-fixed -navigation-->
		<div class="sidebar" role="navigation">
			<div class="navbar-collapse">
				<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left"
					id="cbp-spmenu-s1" style="overflow: auto;">
					<ul class="nav" id="side-menu">
						<li><a href="#" class="active"> <i
								class="fa fa-home nav_icon"></i> 
								Dashboard
						</a></li>
					 
					<!-- 	<li><a href="#" class="active"> <i
								class="fa-solid fa-address-card"></i> About Us
						</a></li>
					 -->
					 
					 

						<li><a href="scheduleService" class="active"><i class="fa-solid fa-clock"></i> Service Scheduler
						</a></li>
						
						<li><a href="viewMyApprovedUser" class="active"><i
								class="fa-solid fa-person-circle-check"></i> Approved Order
						</a></li>
 
						<li><a href="viewMyDisapprovedUser" class="active"><i
								class="fa-solid fa-thumbs-down"></i> Disapproved Order</a></li>	
						<li><a href="viewMyPendingUser" class="active"><i
								class="fa-solid fa-hourglass-half"></i>&nbsp;View Pending Orders</a></li>
							<br>	
					 	<li><a href="#"> <i class="fa-solid fa-person-walking"></i>&nbsp;Our
								Services <span class="nav-badge">12</span> <span
								class="fa arrow"></span></a>
							<ul class="nav nav-second-level collapse">
								<li><a href="#"><i class="fa-solid fa-wrench"></i>&nbsp;Plumbing
										Services</a></li>
								<li><a href="#"><i class="fa-solid fa-plug"></i>&nbsp;Carpentry
										Services</a></li>
								<li><a href="#"><i class="fa-solid fa-palette"></i>&nbsp;Painting
										Services </a></li>
								<li><a href="#"><i
										class="fa-solid fa-screwdriver-wrench"></i>&nbsp;Appliance
										Repair Services</a></li>
								<li><a href="#"><i class="fa-solid fa-house"></i>&nbsp;Roofing
										Services</a></li>
								<li><a href="#"><i class="fa-solid fa-house"></i>&nbsp;Flooring
										Services</a></li>
								<li><a href="#"><i class="fa-solid fa-broom"></i>&nbsp;Cleaning
										Services </a></li>
								<li><a href="#"><i class="fa-solid fa-bars"></i>&nbsp;Explore
										Many More Services </a></li>

							</ul> <!-- /nav-second-level --></li>





						<!-- //nav-second-level
                
                    <li>
                <a href="#"
                  ><i class="fa-solid fa-user-tie"></i>&nbsp;Login <span
                    class="nav-badge"
                    >03</span
                  ><span class="fa arrow"></span
                ></a>
                <ul class="nav nav-second-level collapse">
                  <li>
                    <a href="adminLogin">Admin</a>
                  </li>
                  <li>
                    <a href="spLogin">Service Provider</a>
                  </li>
                  <li>
                    <a href="userLogin">User</a>
                  </li>
                </ul>
                <!-- //nav-second-level -->
						</li>





					</ul>
					<!-- //sidebar-collapse -->
				</nav>
			</div>
		</div>
		<!--left-fixed -navigation-->
		<!-- header-starts -->
		<div class="sticky-header header-section">
			<div class="header-left">
				<!--toggle button start-->
				<button id="showLeftPush">
					<i class="fa fa-bars"></i>
				</button>
				<!--toggle button end-->
				<!--logo -->
				<div class="logo">
					<a href="index">

						<h1>
							<i class="fa-solid fa-handshake"></i> &nbsp;BizExpert Hub
						</h1> <span>UserPanel</span>
					</a>
				</div>
				<!--//logo-->
				<!--search-box-->
				<div class="search-box">
					<form class="input">
						<input class="sb-search-input input__field--madoka"
							placeholder="Search..." type="search" id="input-31" /> <label
							class="input__label" for="input-31"> <svg class="graphic"
								width="100%" height="100%" viewBox="0 0 404 77"
								preserveAspectRatio="none">
                  <path d="m0,0l404,0l0,77l-404,0l0,-77z" />
                </svg>
						</label>
					</form>
				</div>
				<!--//end-search-box-->
				<div class="clearfix"></div>
			</div>
			<div class="header-right">
				<div class="profile_details_left">
					<!--notifications of menu start -->
					<ul class="nofitications-dropdown">
						<li class="dropdown head-dpdn"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"
							aria-expanded="false"><i class="fa fa-envelope"></i><span
								class="badge">3</span></a>
							<ul class="dropdown-menu">
								<li>
									<div class="notification_header">
										<h3>You have 3 new messages</h3>
									</div>
								</li>
								<li><a href="#">
										<div class="user_img">
											<img src="./resources/images/3.png" alt="" />
										</div>
										<div class="notification_desc">
											<p>Jayesh requested to approve</p>
											<p>
												<span>1 hour ago</span>
											</p>
										</div>
										<div class="clearfix"></div>
								</a></li>
								<li class="odd"><a href="#">
										<div class="user_img">
											<img src="./resources/images/2.png" alt="" />
										</div>
										<div class="notification_desc">
											<p>Krishna Added new services</p>
											<p>
												<span>1 hour ago</span>
											</p>
										</div>
										<div class="clearfix"></div>
								</a></li>
								<li><a href="#">
										<div class="./resources/user_img">
											<img src="images/3.png" alt="" />
										</div>
										<div class="notification_desc">
											<p>Ram completed his all task</p>
											<p>
												<span>1 hour ago</span>
											</p>
										</div>
										<div class="clearfix"></div>
								</a></li>
								<li>
									<div class="notification_bottom">
										<a href="#">See all messages</a>
									</div>
								</li>
							</ul></li>
						<li class="dropdown head-dpdn"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"
							aria-expanded="false"><i class="fa fa-bell"></i><span
								class="badge blue">3</span></a>
							<ul class="dropdown-menu">
								<li>
									<div class="notification_header">
										<h3>You have 3 new notification</h3>
									</div>
								</li>
								<li><a href="#">
										<div class="user_img">
											<img src="./resources/images/2.png" alt="" />
										</div>
										<div class="notification_desc">
											<p>Jayesh requested to approve</p>
											<p>
												<span>1 hour ago</span>
											</p>
										</div>
										<div class="clearfix"></div>
								</a></li>
								<li class="odd"><a href="#">
										<div class="user_img">
											<img src="./resources/images/1.png" alt="" />
										</div>
										<div class="notification_desc">
											<p>Radha raised complain</p>
											<p>
												<span>1 hour ago</span>
											</p>
										</div>
										<div class="clearfix"></div>
								</a></li>
								<li><a href="#">
										<div class="user_img">
											<img src="./resources/images/3.png" alt="" />
										</div>
										<div class="notification_desc">
											<p>Shuk added task</p>
											<p>
												<span>1 hour ago</span>
											</p>
										</div>
										<div class="clearfix"></div>
								</a></li>
								<li>
									<div class="notification_bottom">
										<a href="#">See all notifications</a>
									</div>
								</li>
							</ul></li>
						<li class="dropdown head-dpdn"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"
							aria-expanded="false"><i class="fa fa-tasks"></i><span
								class="badge blue1">15</span></a>
							<ul class="dropdown-menu">
								<li>
									<div class="notification_header">
										<h3>You have 8 pending task</h3>
									</div>
								</li>
								<li><a href="#">
										<div class="task-info">
											<span class="task-desc">Database update</span><span
												class="percentage">40%</span>
											<div class="clearfix"></div>
										</div>
										<div class="progress progress-striped active">
											<div class="bar yellow" style="width: 40%"></div>
										</div>
								</a></li>
								<li><a href="#">
										<div class="task-info">
											<span class="task-desc">Dashboard done</span><span
												class="percentage">90%</span>
											<div class="clearfix"></div>
										</div>
										<div class="progress progress-striped active">
											<div class="bar green" style="width: 90%"></div>
										</div>
								</a></li>
								<li><a href="#">
										<div class="task-info">
											<span class="task-desc">8 Service Providers Approve</span><span
												class="percentage">33%</span>
											<div class="clearfix"></div>
										</div>
										<div class="progress progress-striped active">
											<div class="bar red" style="width: 33%"></div>
										</div>
								</a></li>
								<li><a href="#">
										<div class="task-info">
											<span class="task-desc">Issues fixed</span><span
												class="percentage">80%</span>
											<div class="clearfix"></div>
										</div>
										<div class="progress progress-striped active">
											<div class="bar blue" style="width: 80%"></div>
										</div>
								</a></li>
								<li>
									<div class="notification_bottom">
										<a href="#">See all pending tasks</a>
									</div>
								</li>
							</ul></li>
					</ul>
					<div class="clearfix"></div>
				</div>
				<!--notification menu end -->
				<div class="profile_details">
					<ul>
						<li class="dropdown profile_details_drop"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"
							aria-expanded="false">
								<div class="profile_img">
									<span class="prfil-img"> </span>
									<div class="user-name">

										<p>
											<img src="./resources/images/img1.png" alt=""
												style="width: 40px; height: 40px; border-radius: 50%;"
												class="profile_img" /> &nbsp;
											<%= ((User) session.getAttribute("uObj")).getUname() %></p>

									</div>
									<i class="fa fa-angle-down lnr"></i> <i
										class="fa fa-angle-up lnr"></i>
									<div class="clearfix"></div>
								</div>
						</a>
							<ul class="dropdown-menu drp-mnu">
								<li><a href="#"><i class="fa fa-cog"></i> Settings</a></li>
								<li><a href="#"><i class="fa fa-user"></i> Profile</a></li>
								<li><a href="index"><i class="fa fa-sign-out"></i>
										Logout</a></li>
							</ul></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
		<!-- //header-ends -->
		<!-- main content start-->
	<div id="page-wrapper">
		
		
        <div class="main-page">
         <div class="image-container">
<h2>Service Provider List</h2>



<table border="1">
    <thead>
        <tr>
            <th>Service Provider ID</th>
            <th>Name</th>
            <th>Age</th>
            <th>Contact</th>
            <!-- <th>Address</th>
            <th>Pincode</th>
            <th>Area</th> 
             <th>Latitude</th>
            <th>Longitude</th>
            -->
            <th>City</th>
            <th>Email</th>
            <th>Category</th>
            <th>Service Type</th>
            <th>Status</th>
            
        </tr>
    </thead>
    <tbody>
        <% 
            List<ServiceProvider> serviceProviderList = (List<ServiceProvider>) session.getAttribute("serviceProvider");
            for (ServiceProvider serviceProvider : serviceProviderList) {
        %>
            <tr>
                <td><%= serviceProvider.getSid() %></td>
                <td><%= serviceProvider.getSname() %></td>
                <td><%= serviceProvider.getSage() %></td>
                <td><%= serviceProvider.getScontact() %></td>
                <!--
                <td><%= serviceProvider.getSaddress() %></td>
                <td><%= serviceProvider.getSpincode() %></td>
                <td><%= serviceProvider.getSarea() %></td>
                <td><%= serviceProvider.getSlatitude() %></td>
                <td><%= serviceProvider.getSlongitude() %></td>
                -->
                <td><%= serviceProvider.getScity() %></td>
                <td><%= serviceProvider.getSemail() %></td>
                <td><%= serviceProvider.getScategory() %></td>
                <td><%= serviceProvider.getsServiceType() %></td>
               
               <!--  <td  ><a href="confirmedService"   style="display: inline-block; padding: 10px 15px; background-color: #28a745; color: #fff; text-decoration: none; border-radius: 5px;">Confirmed Service </a></td>  -->
              <td  ><a href="confirmedService/<%=serviceProvider.getSid()%>"   style="display: inline-block; padding: 10px 15px; background-color: #28a745; color: #fff; text-decoration: none; border-radius: 5px;">Confirmed Service </a></td>
                
                
            </tr>
        <% } %>
    </tbody>
</table>


        <style>.image-container {
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	/* Add this line to make the content center vertically */
	 
	width: 700px;
	height: 700px;
	margin: auto; /* Add this line to center the container horizontally */
}

.image-container table {
  border-collapse: collapse;
  width: 100%;
  margin: 20px;
}

.image-container th,
.image-container td {
  border: 1px solid #ddd;
  padding: 8px;
  text-align: left;
  background-color: #ffffff; /* Set the background color for all rows to white */
}

.image-container th {
  background-color: #f2f2f2;
}

.image-container img {
  max-width: 100%;
  max-height: 100%;
}

table {
  border-collapse: collapse;
  width: 100%;
  margin-top: 20px;
}

th, td {
  border: 1px solid #ddd;
  padding: 8px;
  text-align: left;
  background-color: #ffffff; /* Set the background color for all rows to white */
}

th {
  background-color: #f2f2f2;
}

@keyframes fadeInLeft {
  from {
    opacity: 0;
    transform: translateX(-20px);
  }

  to {
    opacity: 1;
    transform: translateX(0);
  }
}</style>
    </div>
        <h1 style="color: #333;  padding: 20px; border-radius: 10px;">Our Services</h1>
         
         <!--  <img src="https://th.bing.com/th/id/OIG3.FCjZD12Fjw01WaviIFxC?pid=ImgGn
" alt=""style="border-radius: 20px;">
          <br><br><br> -->
          <img src="https://th.bing.com/th/id/OIG3.z5903e44kBwcoFBDmVpQ?w=1024&h=1024&rs=1&pid=ImgDetMain" alt=""style="border-radius: 20px;">
          <br><br><br>
          <img src="https://th.bing.com/th/id/OIG3.lwuL5u.v0vxk8bcTZ0gf?pid=ImgGn"  alt="" style="border-radius: 20px;">
          <br><br><br>
          <img src="https://th.bing.com/th/id/OIG3.K8X.vKK1neW691sURxX2?pid=ImgGn"  alt="" style="border-radius: 20px;">
          <br><br><br>
          <img src="https://mobisoftinfotech.com/resources/wp-content/uploads/2018/08/Banner.png" alt=""style="width:1100px;height:500px;">
          <br><br>
          <div class="row-one">
            <div class="col-md-4 widget">
              <div class="stats-left">
                <h5>Today</h5>
                <h4>Sales</h4>
              </div>
              <div class="stats-right">
                <label> 45</label>
              </div>
              <div class="clearfix"></div>
            </div>
            <div class="col-md-4 widget states-mdl">
              <div class="stats-left">
                <h5>Today</h5>
                <h4>Visitors</h4>
              </div>
              <div class="stats-right">
                <label> 80</label>
              </div>
              <div class="clearfix"></div>
            </div>
            <div class="col-md-4 widget states-last">
              <div class="stats-left">
                <h5>Today</h5>
                <h4>Orders</h4>
              </div>
              <div class="stats-right">
                <label>51</label>
              </div>
              <div class="clearfix"></div>
            </div>
            <div class="clearfix"></div>
          </div>
          <div class="charts">
            <div class="col-md-4 charts-grids widget">
              <h4 class="title">Bar Chart Example</h4>
              <canvas id="bar" height="300" width="400"> </canvas>
            </div>
            <div class="col-md-4 charts-grids widget states-mdl">
              <h4 class="title">Line Chart Example</h4>
              <canvas id="line" height="300" width="400"> </canvas>
            </div>
            <div class="col-md-4 charts-grids widget">
              <h4 class="title">Pie Chart Example</h4>
              <canvas id="pie" height="300" width="400"> </canvas>
            </div>
            <div class="clearfix"></div>
            <script>
              var barChartData = {
                labels: ["Jan", "Feb", "March", "April", "May", "June", "July"],
                datasets: [
                  {
                    fillColor: "rgba(233, 78, 2, 0.9)",
                    strokeColor: "rgba(233, 78, 2, 0.9)",
                    highlightFill: "#e94e02",
                    highlightStroke: "#e94e02",
                    data: [65, 59, 90, 81, 56, 55, 40],
                  },
                  {
                    fillColor: "rgba(79, 82, 186, 0.9)",
                    strokeColor: "rgba(79, 82, 186, 0.9)",
                    highlightFill: "#4F52BA",
                    highlightStroke: "#4F52BA",
                    data: [40, 70, 55, 20, 45, 70, 60],
                  },
                ],
              };
              var lineChartData = {
                labels: ["Jan", "Feb", "March", "April", "May", "June", "July"],
                datasets: [
                  {
                    fillColor: "rgba(242, 179, 63, 1)",
                    strokeColor: "#F2B33F",
                    pointColor: "rgba(242, 179, 63, 1)",
                    pointStrokeColor: "#fff",
                    data: [70, 60, 72, 61, 75, 59, 80],
                  },
                  {
                    fillColor: "rgba(97, 100, 193, 1)",
                    strokeColor: "#6164C1",
                    pointColor: "rgba(97, 100, 193,1)",
                    pointStrokeColor: "#9358ac",
                    data: [50, 65, 51, 67, 52, 64, 50],
                  },
                ],
              };
              var pieData = [
                {
                  value: 90,
                  color: "rgba(233, 78, 2, 1)",
                  label: "Product 1",
                },
                {
                  value: 50,
                  color: "rgba(242, 179, 63, 1)",
                  label: "Product 2",
                },
                {
                  value: 60,
                  color: "rgba(88, 88, 88,1)",
                  label: "Product 3",
                },
                {
                  value: 40,
                  color: "rgba(79, 82, 186, 1)",
                  label: "Product 4",
                },
              ];

              new Chart(document.getElementById("line").getContext("2d")).Line(
                lineChartData
              );
              new Chart(document.getElementById("bar").getContext("2d")).Bar(
                barChartData
              );
              new Chart(document.getElementById("pie").getContext("2d")).Pie(
                pieData
              );
            </script>
          </div>
          <div class="row">
            <div class="col-md-4 stats-info widget">
              <div class="stats-title">
                <h4 class="title">Browser Stats</h4>
              </div>
              <div class="stats-body">
                <ul class="list-unstyled">
                  <li>
                    GoogleChrome <span class="pull-right">85%</span>
                    <div
                      class="progress progress-striped active progress-right"
                    >
                      <div class="bar green" style="width: 85%"></div>
                    </div>
                  </li>
                  <li>
                    Firefox <span class="pull-right">35%</span>
                    <div
                      class="progress progress-striped active progress-right"
                    >
                      <div class="bar yellow" style="width: 35%"></div>
                    </div>
                  </li>
                  <li>
                    Internet Explorer <span class="pull-right">78%</span>
                    <div
                      class="progress progress-striped active progress-right"
                    >
                      <div class="bar red" style="width: 78%"></div>
                    </div>
                  </li>
                  <li>
                    Safari <span class="pull-right">50%</span>
                    <div
                      class="progress progress-striped active progress-right"
                    >
                      <div class="bar blue" style="width: 50%"></div>
                    </div>
                  </li>
                  <li>
                    Opera <span class="pull-right">80%</span>
                    <div
                      class="progress progress-striped active progress-right"
                    >
                      <div class="bar light-blue" style="width: 80%"></div>
                    </div>
                  </li>
                  <li class="last">
                    Others <span class="pull-right">60%</span>
                    <div
                      class="progress progress-striped active progress-right"
                    >
                      <div class="bar orange" style="width: 60%"></div>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
            <div class="col-md-8 stats-info stats-last widget-shadow">
              <table class="table stats-table">
                <thead>
                  <tr>
                    <th>S.NO</th>
                    <th>PRODUCT</th>
                    <th>STATUS</th>
                    <th>PROGRESS</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row">1</th>
                    <td>Lorem ipsum</td>
                    <td>
                      <span class="label label-success">In progress</span>
                    </td>
                    <td>
                      <h5>85% <i class="fa fa-level-up"></i></h5>
                    </td>
                  </tr>
                  <tr>
                    <th scope="row">2</th>
                    <td>Aliquam</td>
                    <td><span class="label label-warning">New</span></td>
                    <td>
                      <h5>35% <i class="fa fa-level-up"></i></h5>
                    </td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>Lorem ipsum</td>
                    <td><span class="label label-danger">Overdue</span></td>
                    <td>
                      <h5 class="down">40% <i class="fa fa-level-down"></i></h5>
                    </td>
                  </tr>
                  <tr>
                    <th scope="row">4</th>
                    <td>Aliquam</td>
                    <td><span class="label label-info">Out of stock</span></td>
                    <td>
                      <h5>100% <i class="fa fa-level-up"></i></h5>
                    </td>
                  </tr>
                  <tr>
                    <th scope="row">5</th>
                    <td>Lorem ipsum</td>
                    <td>
                      <span class="label label-success">In progress</span>
                    </td>
                    <td>
                      <h5 class="down">10% <i class="fa fa-level-down"></i></h5>
                    </td>
                  </tr>
                  <tr>
                    <th scope="row">6</th>
                    <td>Aliquam</td>
                    <td><span class="label label-warning">New</span></td>
                    <td>
                      <h5>38% <i class="fa fa-level-up"></i></h5>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
            <div class="clearfix"></div>
          </div>
          <div class="row">
            <div class="col-md-8 map widget-shadow">
              <h4 class="title">Visitors Map</h4>
              <div class="map_container">
                <div id="vmap" style="width: 100%; height: 354px"></div>
              </div>
              <!--map js-->
              <link href="./resources/css/jqvmap.css" rel="stylesheet" type="text/css" />
              <script src="js/jquery.vmap.js"></script>
              <script
                src="./resources/js/jquery.vmap.sampledata.js"
                type="text/javascript"
              ></script>
              <script
                src="./resources/js/jquery.vmap.world.js"
                type="text/javascript"
              ></script>
              <script type="text/javascript">
                jQuery(document).ready(function () {
                  jQuery("#vmap").vectorMap({
                    map: "world_en",
                    backgroundColor: "#fff",
                    color: "#696565",
                    hoverOpacity: 0.8,
                    selectedColor: "#696565",
                    enableZoom: true,
                    showTooltip: true,
                    values: sample_data,
                    scaleColors: ["#585858", "#696565"],
                    normalizeFunction: "polynomial",
                  });
                });
              </script>
              <!-- //map js -->
            </div>
            <div class="col-md-4 social-media widget-shadow">
              <div class="wid-social twitter">
                <div class="social-icon">
                  <i class="fa fa-twitter text-light icon-xlg"></i>
                </div>
                <div class="social-info">
                  <h3
                    class="number_counter bold count text-light start_timer counted"
                  >
                    3.1 K
                  </h3>
                  <h4 class="counttype text-light">Tweets</h4>
                </div>
              </div>
              <div class="wid-social google-plus">
                <div class="social-icon">
                  <i class="fa fa-google-plus text-light icon-xlg"></i>
                </div>
                <div class="social-info">
                  <h3
                    class="number_counter bold count text-light start_timer counted"
                  >
                    523
                  </h3>
                  <h4 class="counttype text-light">Circles</h4>
                </div>
              </div>
              <div class="wid-social facebook">
                <div class="social-icon">
                  <i class="fa fa-facebook text-light icon-xlg"></i>
                </div>
                <div class="social-info">
                  <h3
                    class="number_counter bold count text-light start_timer counted"
                  >
                    1.06K
                  </h3>
                  <h4 class="counttype text-light">Likes</h4>
                </div>
              </div>
              <div class="wid-social dribbble">
                <div class="social-icon">
                  <i class="fa fa-dribbble text-light icon-xlg"></i>
                </div>
                <div class="social-info">
                  <h3
                    class="number_counter bold count text-light start_timer counted"
                  >
                    1.6 K
                  </h3>
                  <h4 class="counttype text-light">Subscribers</h4>
                </div>
              </div>
              <div class="wid-social vimeo">
                <div class="social-icon">
                  <i class="fa fa-vimeo-square text-light icon-xlg"> </i>
                </div>
                <div class="social-info">
                  <h3
                    class="number_counter bold count text-light start_timer counted"
                  >
                    2.1 m
                  </h3>
                  <h4 class="counttype text-light">Contacts</h4>
                </div>
              </div>
              <div class="wid-social xing">
                <div class="social-icon">
                  <i class="fa fa-xing text-light icon-xlg"></i>
                </div>
                <div class="social-info">
                  <h3
                    class="number_counter bold count text-light start_timer counted"
                  >
                    2525
                  </h3>
                  <h4 class="counttype text-light">Connections</h4>
                </div>
              </div>
              <div class="wid-social flickr">
                <div class="social-icon">
                  <i class="fa fa-android text-light icon-xlg"></i>
                </div>
                <div class="social-info">
                  <h3
                    class="number_counter bold count text-light start_timer counted"
                  >
                    1221
                  </h3>
                  <h4 class="counttype text-light">Media</h4>
                </div>
              </div>
              <div class="wid-social yahoo">
                <div class="social-icon">
                  <i class="fa fa-yahoo text-light icon-xlg"> Y!</i>
                </div>
                <div class="social-info">
                  <h3
                    class="number_counter bold count text-light start_timer counted"
                  >
                    2525
                  </h3>
                  <h4 class="counttype text-light">Connections</h4>
                </div>
              </div>
              <div class="wid-social rss">
                <div class="social-icon">
                  <i class="fa fa-rss text-light icon-xlg"></i>
                </div>
                <div class="social-info">
                  <h3
                    class="number_counter bold count text-light start_timer counted"
                  >
                    1523
                  </h3>
                  <h4 class="counttype text-light">Subscribers</h4>
                </div>
              </div>
              <div class="wid-social youtube">
                <div class="social-icon">
                  <i class="fa fa-youtube text-light icon-xlg"></i>
                </div>
                <div class="social-info">
                  <h3
                    class="number_counter bold count text-light start_timer counted"
                  >
                    1523
                  </h3>
                  <h4 class="counttype text-light">Subscribers</h4>
                </div>
              </div>
              <div class="clearfix"></div>
            </div>
            <div class="clearfix"></div>
          </div>
          <div class="row calender widget-shadow">
            <h4 class="title">Calender</h4>
            <div class="cal1"></div>
          </div>
          <div class="clearfix"></div>
        </div>
      </div>
      <!--footer-->	
		<!--footer-->
		<div class="footer">
			<p>
				&copy; 2024 All Rights Reserved | Design with <i
					class="fa fa-solid fa-heart" style="color: #f00505;"></i>by Jayesh
				Sonavane </a>
			</p>
		</div>
		<!--//footer-->
	</div>
	<!-- Classie -->
	<script src="./resources/js/classie.js"></script>
	<script>
      var menuLeft = document.getElementById("cbp-spmenu-s1"),
        showLeftPush = document.getElementById("showLeftPush"),
        body = document.body;

      showLeftPush.onclick = function () {
        classie.toggle(this, "active");
        classie.toggle(body, "cbp-spmenu-push-toright");
        classie.toggle(menuLeft, "cbp-spmenu-open");
        disableOther("showLeftPush");
      };

      function disableOther(button) {
        if (button !== "showLeftPush") {
          classie.toggle(showLeftPush, "disabled");
        }
      }
    </script>
	<!--scrolling js-->
	<script src="./resources/js/jquery.nicescroll.js"></script>
	<script src="./resources/js/scripts.js"></script>
	<!--//scrolling js-->
	<!-- Bootstrap Core JavaScript -->
	<script src="./resources/js/bootstrap.js"></script>
</body>
</html>

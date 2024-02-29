<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.r3sys.imt.DBConnect" %>
<%@ page import="java.sql.*" %>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="Responsive Admin &amp; Dashboard Template based on Bootstrap 5">
	<meta name="author" content="AdminKit">
	<meta name="keywords" content="adminkit, bootstrap, bootstrap 5, admin, dashboard, template, responsive, css, sass, html, theme, front-end, ui kit, web">

	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link rel="shortcut icon" href="img/icons/icon-48x48.png" />

	<link rel="canonical" href="https://demo-basic.adminkit.io/pages-sign-in.html" />

	<title>Add Pro | Inventory Management Tool</title>

	<link href="css/app.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
</head>

<body style="background-image: url('img/avatars/back.jpg')">
	<div class="wrapper">
		<nav id="sidebar" class="sidebar js-sidebar">
			<div class="sidebar-content js-simplebar">
				<a class="sidebar-brand" href="index.html">
					<span class="align-middle">Inventory Management Tool</span>
				</a>

				<ul class="sidebar-nav">
					<li class="sidebar-header">
						Admin
					</li>

					

					

					<li class="sidebar-item">
						<a class="sidebar-link" href="addraw.html">
							<i class="align-middle" data-feather="log-in"></i> <span class="align-middle">Add Raw Material</span>
						</a>
					</li>

					<li class="sidebar-item">
						<a class="sidebar-link" href="viewraw.jsp">
							<i class="align-middle" data-feather="log-in"></i> <span class="align-middle">View Raw Material</span>
						</a>
					</li>
					<li class="sidebar-item">
						<a class="sidebar-link" href="addpro.html">
							<i class="align-middle" data-feather="log-in"></i> <span class="align-middle">Add Processed Item</span>
						</a>
					</li>
					<li class="sidebar-item">
						<a class="sidebar-link" href="viewpro.jsp">
							<i class="align-middle" data-feather="log-in"></i> <span class="align-middle">View Processed Item</span>
						</a>
					</li>
					
					<li class="sidebar-item">
						<a class="sidebar-link" href="issueraw.html">
							<i class="align-middle" data-feather="log-in"></i> <span class="align-middle">Issue Raw Material</span>
						</a>
					</li>
					<li class="sidebar-item">
						<a class="sidebar-link" href="viewissue.jsp">
							<i class="align-middle" data-feather="log-in"></i> <span class="align-middle">View Issue Raw Logs</span>
						</a>
					</li>
					<li class="sidebar-item">
						<a class="sidebar-link" href="issueprocessed.html">
							<i class="align-middle" data-feather="log-in"></i> <span class="align-middle">Issue Processed Item</span>
						</a>
					</li>
					<li class="sidebar-item">
						<a class="sidebar-link" href="viewprocessed.jsp">
							<i class="align-middle" data-feather="log-in"></i> <span class="align-middle">View Issue Processed Logs</span>
						</a>
					</li>
					
					
				</ul>

				
			</div>
		</nav>

		<div class="main">
			<nav class="navbar navbar-expand navbar-light navbar-bg">
				<a class="sidebar-toggle js-sidebar-toggle">
					<i class="hamburger align-self-center"></i>
				</a>

				<div class="navbar-collapse collapse">
					<ul class="navbar-nav navbar-align">
						
						<li class="nav-item dropdown">
							<a class="nav-icon dropdown-toggle d-inline-block d-sm-none" href="#"
								data-bs-toggle="dropdown">
								<i class="align-middle" data-feather="settings"></i>
							</a>

							<a class="nav-link dropdown-toggle d-none d-sm-inline-block" href="#"
								data-bs-toggle="dropdown">
								<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUyqEDp_ogPSU7wiVutAR54QRjfOovbpS8Wg&usqp=CAU " class="avatar img-fluid rounded me-1"
									alt="Charles Hall" /> <span class="text-dark">Riddhi Magare</span>
							</a>
							<div class="dropdown-menu dropdown-menu-end">
								<a class="dropdown-item" href="pages-profile.html"><i class="align-middle me-1"
										data-feather="user"></i> Profile</a>
								<a class="dropdown-item" href="#"><i class="align-middle me-1"
										data-feather="pie-chart"></i> Analytics</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="index.html"><i class="align-middle me-1"
										data-feather="settings"></i> Settings & Privacy</a>
								<a class="dropdown-item" href="#"><i class="align-middle me-1"
										data-feather="help-circle"></i> Help Center</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="index.html">Log out</a>
							</div>
						</li>
					</ul>
				</div>
			</nav>

            <main class="content">
	<main class="d-flex w-100">
		<div class="container d-flex flex-column">
			<div class="row vh-100">
				<div class="col-sm-10 col-md-9 col-lg-8 mx-auto d-table h-100">
					<div class="d-table-cell align-middle">

					

						<div class="card p-0">
							<div class="card-body p-0">
								<div class="text-center mt-4">
                                    <h1 class="h2">Add Processed Material</h1>
                                   
                                </div>
                                    <main class="content pt-1">

                                        <div class="container-fluid p-0">
                        
                                           
                        
                                            <div class="row">
                                                <div class="col-md-12">
                        
                        

<main id="main" class="main">
<%
Connection con = DBConnect.connect();
int id = Integer.parseInt(request.getParameter("id"));
String query = "SELECT * FROM processed_material WHERE id=?";

PreparedStatement st = con.prepareStatement(query);
st.setInt(1,id);
ResultSet rs = st.executeQuery();
%>
<%while(rs.next()){%>
														<form action="processedUpdate" id ="register" method="post">
                                                            <div class="card-body">
                                                                <div class="row mb-4">
                                                                    <div class="col-md-6 col-lg-6">
                                                                     <div class="form-group">
                                                                            <label class="mb-2" for="name">Processed ID</label>
                                                                            <input type="text" name="id" class="form-control" id="name"
                                                                                value=<%=rs.getInt(1)%> required>
                                                                        </div>
                                       <div class="form-group">
                                                                            <label class="mb-2" for="name">Old Quantity</label>
                                                                            <input type="text" name="oquantity" class="form-control" id="name"
                                                                                value=<%=rs.getInt(3)%> required>
                                                                        </div>
                                       
                                                                        <div class="form-group">
                                                                            <label class="mb-2" for="name">New Quantity</label>
                                                                            <input type="text" name="quantity" class="form-control" id="name"
                                                                                placeholder="Enter the Name" required>
                                                                        </div>
                                                                    </div>
                                       
                                                                    </div>
                                                                </div>
                        
                                                                
                                                                
                                                                
                        
                        
                        
                        
                        
                        
                                                                <div class="card-action">
                                                                <button type="submit" class="btn btn-success mr-2" id="id="registerForm">Submit</button>
                                                             
                                                                    <button type="reset" class="btn btn-warning">Reset</button>
                                                                </div>
                                                        </form>
                                                        <%}%>
                                                </div>
                                            </div>
                        
                                        </div>
                        
                                    </main>
                        </main>



			<footer class="footer">
				<div class="container-fluid">
					<div class="row text-muted">
						<div class="col-6 text-start">
							<p class="mb-0">
								<a class="text-muted" href="https://adminkit.io/"
									target="_blank"><strong>Inventory management Tool</strong></a> &copy;
							</p>
						</div>
						
						<div class="col-6 text-end">
							<ul class="list-inline">
								<li class="list-inline-item">
									<a class="text-muted" href="https://adminkit.io/" target="_blank">Support</a>
								</li>
								<li class="list-inline-item">
									<a class="text-muted" href="https://adminkit.io/" target="_blank">Help Center</a>
								</li>
								<li class="list-inline-item">
									<a class="text-muted" href="https://adminkit.io/" target="_blank">Privacy</a>
								</li>
								<li class="list-inline-item">
									<a class="text-muted" href="https://adminkit.io/" target="_blank">Terms</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>

	<script src="js/app.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
     <script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
     <script>
     var form = document.getElementById('cndreq');
     
        function showAlert(event) {
        	event.preventDefault();
            swal({
                title:"Suucessed!",
                text: "View Table!",
                icon: "success",
            });
            
     		form.reset();
        }
     form.addEventListener('submit',showAlert);
     
       // showAlert();
    </script>
	
		
	
</body>



								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</main>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
     <script>
     var form = document.getElementById('registerForm');
     
        function showAlert(event) {
        	event.preventDefault();
            swal({
                title:"Registered !",
                text: "Registered Successfully !",
                icon: "success",
            });
            
     		form.reset();
        }
     form.addEventListener('submit',showAlert);
     
       showAlert();
    </script>
  

</body>

														                                                  
</body>
</html>
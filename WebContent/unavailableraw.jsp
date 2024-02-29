<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.r3sys.imt.DBConnect" %>
<!DOCTYPE html>
<html>
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

    <title>Add Raw | Inventory Management Tool</title>

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
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-log-in align-middle mr-2">
                		<path d="M15 3h4a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2h-4"></path>
                		<polyline points="10 17 15 12 10 7"></polyline>
                		<line x1="15" y1="12" x2="3" y2="12"></line>
            			</svg>
                            <i class="align-middle" data-feather="log-in"></i> <span class="align-middle">Add Raw Material</span>
                        </a>
                    </li>

                    <li class="sidebar-item">
                        <a class="sidebar-link" href="viewraw.jsp">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-log-in align-middle mr-2">
                		<path d="M15 3h4a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2h-4"></path>
                		<polyline points="10 17 15 12 10 7"></polyline>
                		<line x1="15" y1="12" x2="3" y2="12"></line>
            			</svg>
                        
                            <i class="align-middle" data-feather="log-in"></i> <span class="align-middle">View Raw Material</span>
                        </a>
                    </li>
                    <!-- Add other sidebar items here -->
                    <li class="sidebar-item">
						<a class="sidebar-link" href="addpro.html">
						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-log-in align-middle mr-2">
                		<path d="M15 3h4a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2h-4"></path>
                		<polyline points="10 17 15 12 10 7"></polyline>
                		<line x1="15" y1="12" x2="3" y2="12"></line>
            			</svg>
                        
							<i class="align-middle" data-feather="log-in"></i> <span class="align-middle">Add Processed Item</span>
						</a>
					</li>
					<li class="sidebar-item">
						<a class="sidebar-link" href="viewpro.jsp">
						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-log-in align-middle mr-2">
                		<path d="M15 3h4a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2h-4"></path>
                		<polyline points="10 17 15 12 10 7"></polyline>
                		<line x1="15" y1="12" x2="3" y2="12"></line>
            			</svg>
                        
							<i class="align-middle" data-feather="log-in"></i> <span class="align-middle">View Processed Item</span>
						</a>
					</li>
					
					<li class="sidebar-item">
						<a class="sidebar-link" href="issueraw.html">
						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-log-in align-middle mr-2">
                		<path d="M15 3h4a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2h-4"></path>
                		<polyline points="10 17 15 12 10 7"></polyline>
                		<line x1="15" y1="12" x2="3" y2="12"></line>
            			</svg>
                        
							<i class="align-middle" data-feather="log-in"></i> <span class="align-middle">Issue Raw Material</span>
						</a>
					</li>
					<li class="sidebar-item">
						<a class="sidebar-link" href="viewissue.jsp">
						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-log-in align-middle mr-2">
                		<path d="M15 3h4a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2h-4"></path>
                		<polyline points="10 17 15 12 10 7"></polyline>
                		<line x1="15" y1="12" x2="3" y2="12"></line>
            			</svg>
                        
							<i class="align-middle" data-feather="log-in"></i> <span class="align-middle">View Issue Raw Logs</span>
						</a>
					</li>
					<li class="sidebar-item">
						<a class="sidebar-link" href="issueprocessed.html">
						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-log-in align-middle mr-2">
                		<path d="M15 3h4a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2h-4"></path>
                		<polyline points="10 17 15 12 10 7"></polyline>
                		<line x1="15" y1="12" x2="3" y2="12"></line>
            			</svg>
                        
							<i class="align-middle" data-feather="log-in"></i> <span class="align-middle">Issue Processed Item</span>
						</a>
					</li>
					<li class="sidebar-item">
						<a class="sidebar-link" href="viewprocessed.jsp">
						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-log-in align-middle mr-2">
                		<path d="M15 3h4a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2h-4"></path>
                		<polyline points="10 17 15 12 10 7"></polyline>
                		<line x1="15" y1="12" x2="3" y2="12"></line>
            			</svg>
                        
							<i class="align-middle" data-feather="log-in"></i> <span class="align-middle">View Issue Processed Logs</span>
						</a>
					</li>
					<li class="sidebar-item">
						<a class="sidebar-link" href="unavailableraw.jsp">
						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-log-in align-middle mr-2">
                		<path d="M15 3h4a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2h-4"></path>
                		<polyline points="10 17 15 12 10 7"></polyline>
                		<line x1="15" y1="12" x2="3" y2="12"></line>
            			</svg>
                        
							<i class="align-middle" data-feather="log-in"></i> <span class="align-middle">Show Unavailable Raw Material</span>
						</a>
					</li>
					<li class="sidebar-item">
						<a class="sidebar-link" href="unavailablepro.jsp">
						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-log-in align-middle mr-2">
                		<path d="M15 3h4a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2h-4"></path>
                		<polyline points="10 17 15 12 10 7"></polyline>
                		<line x1="15" y1="12" x2="3" y2="12"></line>
            			</svg>
                        
							<i class="align-middle" data-feather="log-in"></i> <span class="align-middle">Show Unavailable Processed Item</span>
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
                                    alt="Charles Hall" /> <span class="text-dark">Vibhanshu Rajput</span>
                            </a>
                            <!-- Add dropdown menu items here -->
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
                                                <h1 class="h2">View Issue Processed Log</h1>
                                            </div>
                                            <main class="content pt-1"><div class="container">    <div class="row mt-4">
        <div class="col">
            <div class="card">
                <div class="card-body">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Name</th>
                                <th scope="col">Quantity</th>
                                <th scope="col">Unit</th>
                                <th scope="col">CostPerUnit</th>
                                <th scope="col">Update</th>
                                <th scope="col">Delete</th>
                                
                            </tr>
                        </thead>
                        <tbody>
                            <% 
                            try {
                                Connection con = DBConnect.connect();
                                Statement st = con.createStatement();
                                String query = "SELECT * FROM raw_material WHERE quantity=0";
                                ResultSet rs = st.executeQuery(query);
                                while (rs.next()) { 
                            %>
                            <tr>
                                <td><%= rs.getInt("id") %></td>
                                <td><%= rs.getString("name") %></td>
                                <td><%= rs.getString("quantity") %></td>
                                <td><%= rs.getString("unit") %></td>
                                <td><%= rs.getString("costperunit") %></td>
                                <td><a class="delete-button" href="pupdate.jsp?id=<%= rs.getInt(1)%>">Update</a></td>
                                <td><a class="delete-button" href="pdelete.jsp?id=<%= rs.getInt(1)%>">Delete</a></td>
                            </tr>
                            <% 
                                }
                                rs.close();
                                st.close();
                                con.close();
                            } catch (SQLException e) {
                                e.printStackTrace();
                            }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
    

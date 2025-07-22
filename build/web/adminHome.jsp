<%-- 
    Document   : adminHome
    Created on : 24 Sep, 2024, 10:40:03 PM
    Author     : ydhup
--%>


<%@page import="dto.AdminDTO"%>
<%@page import="dao.AdminDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>CSI Admin Dashboard</title>
        <link rel="stylesheet" href="adminHome.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    </head>
    <%
        String name = null;
        if(session.getAttribute("username") == null){
            response.sendRedirect("login.html");
        }
        else{
            String adminID = (String)session.getAttribute("username");
            AdminDAO adao = new AdminDAO();
            AdminDTO admin = adao.getAdminDetails(adminID);

            name = admin.getAdminName();
        }
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        //response.setHeader("Pragma", "no-chache"); // HTTP 1.0
        //response.setHeader("Expires", "0");  // Proxy Server
    %>
    
    <body>
        <div class="dashboard-container">
            <!-- Sidebar -->
            <div class="sidebar">
                <div class="logo">
                    <h2>CSI</h2>
                    <p>Centralized Student Interface</p>
                </div>
                <div class="sidebar-menu">
                    <div class="menu-item active">
                        <i class="fas fa-home"></i>
                        <span>Dashboard</span>
                    </div>
                    <div class="menu-item">
                        <i class="fas fa-user-graduate"></i>
                        <span>Students</span>
                    </div>
                    <div class="menu-item">
                        <i class="fas fa-chalkboard-teacher"></i>
                        <span>Faculty</span>
                    </div>
                    <div class="menu-item">
                        <i class="fas fa-user-tie"></i>
                        <span>HODs</span>
                    </div>
                    <div class="menu-item">
                        <i class="fas fa-bell"></i>
                        <span>Notifications</span>
                    </div>
                    <div class="menu-item">
                        <i class="fas fa-exclamation-circle"></i>
                        <span>Complaints</span>
                    </div>
                </div>
                <div class="sidebar-footer">
                    <a href="signout.jsp" class="sign-out">
                        <i class="fas fa-sign-out-alt"></i>
                        <span>Sign Out</span>
                    </a>
                </div>
            </div>

            <!-- Main Content -->
            <div class="main-content">
                <header>
                    <div class="header-content">
                        <div class="welcome-section">
                            <h1>Welcome, <span class="admin-name"><%=name%></span></h1>
                            <p>Admin Dashboard</p>
                        </div>
                        <div class="header-actions">
                            <div class="date-time">
                                <i class="far fa-calendar-alt"></i>
                                <span id="currentDate">Loading...</span>
                            </div>
                            <div class="admin-profile">
                                <div class="admin-avatar">
                                    <i class="fas fa-user-shield"></i>
                                </div>
                                <span>Admin</span>
                            </div>
                        </div>
                    </div>
                </header>

                <div class="dashboard-content">
                    <!-- Overview Stats -->
                    <div class="stats-container">
                        <div class="stat-card">
                            <div class="stat-icon student-icon">
                                <i class="fas fa-user-graduate"></i>
                            </div>
                            <div class="stat-details">
                                <h3>Students</h3>
                                <p>Manage student records</p>
                            </div>
                        </div>
                        <div class="stat-card">
                            <div class="stat-icon faculty-icon">
                                <i class="fas fa-chalkboard-teacher"></i>
                            </div>
                            <div class="stat-details">
                                <h3>Faculty</h3>
                                <p>Manage faculty records</p>
                            </div>
                        </div>
                        <div class="stat-card">
                            <div class="stat-icon hod-icon">
                                <i class="fas fa-user-tie"></i>
                            </div>
                            <div class="stat-details">
                                <h3>HODs</h3>
                                <p>Manage HOD records</p>
                            </div>
                        </div>
                        <div class="stat-card">
                            <div class="stat-icon notification-icon">
                                <i class="fas fa-bell"></i>
                            </div>
                            <div class="stat-details">
                                <h3>Notifications</h3>
                                <p>Manage notifications</p>
                            </div>
                        </div>
                    </div>

                    <!-- Management Modules -->
                    <div class="modules-container">
                        <!-- Students Module -->
                        <div class="module">
                            <div class="module-header">
                                <i class="fas fa-user-graduate"></i>
                                <h2>Students Management</h2>
                            </div>
                            <div class="module-actions">
                                <a href="addStudent.jsp" class="action-card">
                                    <div class="action-icon"><i class="fas fa-plus-circle"></i></div>
                                    <span>Add New Student</span>
                                </a>
                                <a href="viewStudent.jsp" class="action-card">
                                    <div class="action-icon"><i class="fas fa-eye"></i></div>
                                    <span>View Student Record</span>
                                </a>
                                <a href="updateStudent.jsp" class="action-card">
                                    <div class="action-icon"><i class="fas fa-edit"></i></div>
                                    <span>Update Student Record</span>
                                </a>
                                <a href="removeStudent.jsp" class="action-card">
                                    <div class="action-icon"><i class="fas fa-trash-alt"></i></div>
                                    <span>Remove Student</span>
                                </a>
                            </div>
                        </div>

                        <!-- Faculty Module -->
                        <div class="module">
                            <div class="module-header">
                                <i class="fas fa-chalkboard-teacher"></i>
                                <h2>Faculty Management</h2>
                            </div>
                            <div class="module-actions">
                                <a href="addFaculty.jsp" class="action-card">
                                    <div class="action-icon"><i class="fas fa-plus-circle"></i></div>
                                    <span>Add New Faculty</span>
                                </a>
                                <a href="viewFaculty.jsp" class="action-card">
                                    <div class="action-icon"><i class="fas fa-eye"></i></div>
                                    <span>View Faculty Record</span>
                                </a>
                                <a href="updateFaculty.jsp" class="action-card">
                                    <div class="action-icon"><i class="fas fa-edit"></i></div>
                                    <span>Update Faculty Record</span>
                                </a>
                                <a href="removeFaculty.jsp" class="action-card">
                                    <div class="action-icon"><i class="fas fa-trash-alt"></i></div>
                                    <span>Remove Faculty</span>
                                </a>
                            </div>
                        </div>

                        <!-- HOD Module -->
                        <div class="module">
                            <div class="module-header">
                                <i class="fas fa-user-tie"></i>
                                <h2>HOD Management</h2>
                            </div>
                            <div class="module-actions">
                                <a href="addHOD.jsp" class="action-card">
                                    <div class="action-icon"><i class="fas fa-plus-circle"></i></div>
                                    <span>Add New HOD</span>
                                </a>
                                <a href="viewHOD.jsp" class="action-card">
                                    <div class="action-icon"><i class="fas fa-eye"></i></div>
                                    <span>View HOD Record</span>
                                </a>
                                <a href="updateHOD.jsp" class="action-card">
                                    <div class="action-icon"><i class="fas fa-edit"></i></div>
                                    <span>Update HOD Record</span>
                                </a>
                                <a href="removeHOD.jsp" class="action-card">
                                    <div class="action-icon"><i class="fas fa-trash-alt"></i></div>
                                    <span>Remove HOD</span>
                                </a>
                            </div>
                        </div>

                        <!-- Notifications Module -->
                        <div class="module">
                            <div class="module-header">
                                <i class="fas fa-bell"></i>
                                <h2>Notifications Management</h2>
                            </div>
                            <div class="module-actions">
                                <a href="notificationFor.jsp" class="action-card">
                                    <div class="action-icon"><i class="fas fa-plus-circle"></i></div>
                                    <span>Add Notification</span>
                                </a>
                                <a href="notification.jsp" class="action-card">
                                    <div class="action-icon"><i class="fas fa-eye"></i></div>
                                    <span>View Notification</span>
                                </a>
                                <a href="updateFromNotification.jsp" class="action-card">
                                    <div class="action-icon"><i class="fas fa-edit"></i></div>
                                    <span>Update Notification</span>
                                </a>
                                <a href="removeFromNotification.jsp" class="action-card">
                                    <div class="action-icon"><i class="fas fa-trash-alt"></i></div>
                                    <span>Remove Notification</span>
                                </a>
                            </div>
                        </div>

                        <!-- Complaints Module -->
                        <div class="module">
                            <div class="module-header">
                                <i class="fas fa-exclamation-circle"></i>
                                <h2>Complaints Management</h2>
                            </div>
                            <div class="module-actions">
                                <a href="complaintTo.jsp" class="action-card">
                                    <div class="action-icon"><i class="fas fa-plus-circle"></i></div>
                                    <span>Add Complaint</span>
                                </a>
                                <a href="viewComplaints.jsp" class="action-card">
                                    <div class="action-icon"><i class="fas fa-eye"></i></div>
                                    <span>View Complaints</span>
                                </a>
                                <a href="updateComplaint.jsp" class="action-card">
                                    <div class="action-icon"><i class="fas fa-edit"></i></div>
                                    <span>Update Complaints</span>
                                </a>
                                <a href="removeComplaint.jsp" class="action-card">
                                    <div class="action-icon"><i class="fas fa-trash-alt"></i></div>
                                    <span>Remove Complaints</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <footer>
                    <p>&copy; 2025 Centralized Student Interface. All rights reserved.</p>
                </footer>
            </div>
        </div>

        <script>
            // Display current date
            document.addEventListener('DOMContentLoaded', function() {
                const dateElement = document.getElementById('currentDate');
                const options = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' };
                const today = new Date();
                dateElement.textContent = today.toLocaleDateString('en-US', options);
            });
        </script>
    </body>
</html>
















<%--
<%@page import="dto.AdminDTO"%>
<%@page import="dao.AdminDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Home</title>
        <link rel="stylesheet" href="adminHome.css">
    </head>
    <%
        String name = null;
        if(session.getAttribute("username") == null){
            response.sendRedirect("login.html");
        }
        else{
            String adminID = (String)session.getAttribute("username");
            AdminDAO adao = new AdminDAO();
            AdminDTO admin = adao.getAdminDetails(adminID);

            name = admin.getAdminName();
        }
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        //response.setHeader("Pragma", "no-chache"); // HTTP 1.0
        //response.setHeader("Expires", "0");  // Proxy Server
    %>
    
    <body bgcolor="#E0FFFF">
        <a href="signout.jsp" class="sign_out">Sign Out</a>
        <h1 class="welcome">Welcome, Admin : <%=name%>!</h1>
        
        <div class="outer">
            <div class="topic">
                <Strong class="topic_name">Students : </Strong>
                <div class="operations">
                    <a href="addStudent.jsp">Add New Student</a>
                    <a href="viewStudent.jsp">View Student Record</a>
                    <a href="updateStudent.jsp">Update Student Record</a>
                    <a href="removeStudent.jsp">Remove Student</a>
                </div>
            </div>
            
            
            <div class="topic">
                <strong class="topic_name">Faculties : </Strong>
                <div class="operations">
                    <a href="addFaculty.jsp">Add New Faculty</a>
                    <a href="viewFaculty.jsp">View Faculty Record</a>
                    <a href="updateFaculty.jsp">Update Faculty Record</a>
                    <a href="removeFaculty.jsp">Remove Faculty</a>
                </div>
            </div>
            
            
            <div class="topic">
                <strong class="topic_name">HODs : </Strong>
                <div class="operations">
                    <a href="addHOD.jsp">Add New HOD</a>
                    <a href="viewHOD.jsp">View HOD Record</a>
                    <a href="updateHOD.jsp">Update HOD Record</a>
                    <a href="removeHOD.jsp">Remove HOD</a>
                </div>
            </div>
            
            
            <div class="topic">
                <strong class="topic_name">Notifications : </Strong>
                <div class="operations">
                    <a href="notificationFor.jsp">Add Notification</a>
                    <a href="notification.jsp">View Notification</a>
                    <a href="updateFromNotification.jsp">Update Notification</a>
                    <a href="removeFromNotification.jsp">Remove Notification</a>
                </div>
            </div>
            
            <div class="topic">
                <strong class="topic_name">Complaints : </Strong>
                <div class="operations">
                    <a href="complaintTo.jsp">Add Complaints</a>
                    <a href="viewComplaints.jsp">View Complaints</a>
                    <a href="updateComplaint.jsp">Update Complaints</a>
                    <a href="removeComplaint.jsp">Remove Complaints</a>
                </div>
            </div>
      
        </div>
<!--        <table width="700">
            <tr>
                <td colspan="4"><Strong>Students : </Strong></td>
            </tr>
            <tr>
                <td><a href="addStudent.jsp">Add New Student</a></td>
                <td><a href="viewStudent.jsp">View Student Record</a></td>
                <td><a href="updateStudent.jsp">Update Student Record</a></td>
                <td><a href="removeStudent.jsp">Remove Student</a></td>
            </tr>
            <tr>
                <td colspan="4"><strong>Faculties : </Strong></td>
            </tr>
            <tr>
                <td><a href="addFaculty.jsp">Add New Faculty</a></td>
                <td><a href="viewFaculty.jsp">View Faculty Record</a></td>
                <td><a href="updateFaculty.jsp">Update Faculty Record</a></td>
                <td><a href="removeFaculty.jsp">Remove Faculty</a></td>
            </tr>
            <tr>
                <td colspan="4"><strong>HODs : </Strong></td>
            </tr>
            <tr>
                <td><a href="addHOD.jsp">Add New HOD</a></td>
                <td><a href="viewHOD.jsp">View HOD Record</a></td>
                <td><a href="updateHOD.jsp">Update HOD Record</a></td>
                <td><a href="removeHOD.jsp">Remove HOD</a></td>
            </tr>
            <tr>
                <td colspan="4"><strong><br><br><br>Notifications : </Strong></td>
            </tr>
            <tr>
                <td><a href="addNotification.jsp">Add Notification</a></td>
                <td><a href="notification.jsp">View Notification</a></td>
                <td><a href="updateNotification.jsp">Update Notification</a></td>
                <td><a href="removeNotification.jsp">Remove Notification</a></td>
            </tr>
        </table>-->
    </body>
    
    <style>
        h1{
            text-align: center;
        }
    </style>
</html> --%>

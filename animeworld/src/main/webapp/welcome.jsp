<%@page import="java.util.List"%>
<%@page import="animeworldmodels.animemodels"%>
<%@page import="animeworlddbconnections.animeconnections"%>
<%@page import="animeworldservices.animeservices"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
    // Check if user is logged in
    animemodels loggedInUser = (animemodels) session.getAttribute("loggedInUser");
    String userName = (String) session.getAttribute("userName");
    
    if (loggedInUser == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Anime World - Dashboard</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
        background-size: cover;
        background-image: url('https://images.alphacoders.com/136/thumb-1920-1363137.png');
    }
    body::before {
        content: "";
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: linear-gradient(to bottom, rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5));
        z-index: -1;
    }
    
    .header {
        background-color: rgba(0, 0, 0, 0.8);
        color: white;
        padding: 15px 20px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        box-shadow: 0 2px 5px rgba(0,0,0,0.3);
    }
    
    .header h1 {
        margin: 0;
        color: #D6295F;
    }
    
    .user-info {
        display: flex;
        align-items: center;
        gap: 15px;
    }
    
    .welcome-text {
        font-size: 16px;
    }
    
    .logout-btn {
        background-color: #DF1C58;
        color: white;
        border: none;
        padding: 8px 15px;
        border-radius: 5px;
        cursor: pointer;
        text-decoration: none;
        font-size: 14px;
    }
    
    .logout-btn:hover {
        background-color: #c41850;
    }
    
    h2 {
        text-align: center;
        margin-top: 20px;
        color: white;
        font-size: 2em;
    }
    
    table {
        width: 90%;
        margin: 20px auto;
        border-collapse: collapse;
        background-color: transparent;
        backdrop-filter: blur(5px);
        border: 2px solid rgba(255, 255, 255, 0.5);
        border-radius: 10px;
        overflow: hidden;
        box-shadow: 0 5px 15px rgba(0,0,0,0.3);
    }
    
    th, td {
        padding: 12px;
        border: 1px solid rgba(255, 255, 255, 0.3);
        text-align: center;
        color: white;
    }
    
    th {
        background-color: rgba(76, 175, 80, 0.7);
        font-weight: bold;
        font-size: 16px;
    }
    
    tr:nth-child(even) {
        background-color: rgba(255, 255, 255, 0.1);
    }
    
    tr:hover {
        background-color: rgba(255, 255, 255, 0.2);
    }
    
    .btn {
        padding: 6px 12px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        text-decoration: none;
        display: inline-block;
        font-size: 14px;
        margin: 2px;
    }
    
    .btn-update {
        background-color: rgba(76, 175, 80, 0.8);
        color: white;
    }
    
    .btn-update:hover {
        background-color: rgba(69, 160, 73, 0.9);
    }
    
    .btn-danger {
        background-color: rgba(244, 67, 54, 0.8);
        color: white;
    }
    
    .btn-danger:hover {
        background-color: rgba(218, 25, 11, 0.9);
    }
    
    .no-data {
        text-align: center;
        color: white;
        font-size: 18px;
        padding: 40px;
    }
    
    .current-user-row {
        background-color: rgba(214, 41, 95, 0.3) !important;
        border: 2px solid rgba(214, 41, 95, 0.6);
    }
</style>
<script>
    function confirmDelete(name) {
        return confirm("Are you sure you want to delete the record for " + name + "?");
    }
</script>
</head>
<body>
    <div class="header">
        <h1>Anime World Dashboard</h1>
        <div class="user-info">
            <span class="welcome-text">Welcome, <%= userName %>!</span>
            <a href="logout" class="logout-btn">Logout</a>
        </div>
    </div>
    
    <h2>Registered Users</h2>
    
    <%
    animeservices service = new animeservices(animeconnections.getconnection());
    List<animemodels> userList = service.getall();
    
    if (userList != null && !userList.isEmpty()) {
    %>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
        <%
        for(animemodels user : userList) {
            boolean isCurrentUser = user.getId() == loggedInUser.getId();
        %>
            <tr <%= isCurrentUser ? "class='current-user-row'" : "" %>>
                <td><%= user.getId() %></td>
                <td><%= user.getName() %> <%= isCurrentUser ? "(You)" : "" %></td>
                <td><%= user.getEmail() %></td>
                <td>
                    <a href="update.jsp?id=<%= user.getId() %>" class="btn btn-update">Update</a>
                    <% if (isCurrentUser) { %>
                        <span style="color: #ccc; font-style: italic;">Cannot delete own account</span>
                    <% } else { %>
                        <a href="delete?id=<%= user.getId() %>" 
                           class="btn btn-danger" 
                           onclick="return confirmDelete('<%= user.getName() %>')">Delete</a>
                    <% } %>
                </td>
            </tr>
        <%
        }
        %>
        </tbody>
    </table>
    <% } else { %>
        <div class="no-data">
            <p>No users found in the system.</p>
        </div>
    <% } %>
</body>
</html>
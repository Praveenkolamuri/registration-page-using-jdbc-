<%@page import="java.util.List"%>
<%@page import="animeworldmodels.animemodels"%>
<%@page import="animeworlddbconnections.animeconnections"%>
<%@page import="animeworldservices.animeservices"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>welcome</h1>
	<table>
		<thead>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Email</th>
				<th>Password</th>
				<th>Confirm Password</th>
				<td>update</td>
				<td>Deletebyid</td>
				<td>Deletebyemail</td>
			</tr>
		</thead>
		<tbody>
		<%
		animeservices an = new animeservices(animeconnections.getconnection());
		
		List<animemodels> ll = an.getall();
		
		for(animemodels a:ll){
		
		%>
		
			<tr>
				<td><%=a.getId()%></td>
				<td><%=a.getName()%></td>
				<td><%=a.getEmail()%></td>
				<td><%=a.getPassword()%></td>
				<td><%=a.getConfirmpassword()%></td>

				<td>
					<button>Update</button>
				</td>
				<td><a><button>Deletebyid</button></a>
				</td>
				<td><a><button>deletebyemail</button></a></td>



			</tr>
			<%
		}
			%>
		</tbody>
	</table>
</body>
</html>
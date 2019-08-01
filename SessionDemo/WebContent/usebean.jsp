<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>UseBean JSP</title>
	</head>
	<body>
		<%
			try {
		%>
		<!-- try and catch block is for handling exception, cause user may enter the details as he like without following any contraints,in that case the exception is handled -->
		<jsp:useBean 
		id="uObject" 
		class="com.jspactiontags.example.Usebean"
		scope="session">
		</jsp:useBean>
		
		<!-- use bean id is for name, provide fully qualified class name and put the scope to session -->
		<jsp:setProperty property="*" name="uObject" />
		<!-- setting the properties to Use bean Class -->
		<h1>WELCOME ${param.gender}</h1>

	<a href="sessionplace.jsp">Click Here</a> to View Details :
	
	<jsp:forward page="usebean.jsp"></jsp:forward>
	
		<%
			} catch (Exception e) {
				//if exception occurs this block will execute
				//to execute this block enter the user id in characters
				out.print("<p>Invalid User Details</p>");
				request.getRequestDispatcher("index.jsp").include(request, response);
			}
		%>
	</body>
</html>

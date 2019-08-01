<%@page import="com.jspactiontags.example.Usebean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Properties Scope</title>
	</head>
	<body>
		<h1>Details are :</h1>
		<!-- sessioned in useBean.jsp are utilized here -->
		<jsp:useBean id="uObject" class="com.jspactiontags.example.Usebean" scope="session"></jsp:useBean>
		<!-- getting all the properties which are kept in session -->
		<h3>USER ID :<jsp:getProperty property="id" name="uObject"/></h3>
		<h3>USER NAME: <jsp:getProperty property="username" name="uObject"/></h3>
		<h3>EMAIL ID:<jsp:getProperty property="email" name="uObject"/></h3>
		<h3>GENDER:<jsp:getProperty property="gender" name="uObject"/></h3>

	<%
	List<Usebean> listofName= new ArrayList<Usebean>();
	listofName.add(new Usebean(1,"Dheeraj","aa@aa.com","Male"));
	listofName.add(new Usebean(2,"Smit","aa@aa.com","Male"));
	listofName.add(new Usebean(3,"Amit","aa@aa.com","Male"));
	listofName.add(new Usebean(4,"Rohit","aa@aa.com","Male"));
	listofName.add(new Usebean(5,"Jayesh","aa@aa.com","Male"));
	getServletContext().setAttribute("name", listofName);
	%>

Data: ${param.name}



		<!-- TO SEE THE SESSIONED PROPERTIES, COPY THE URL OF SESSIONPLACE.JSP(WHEN EXECUTED) AND OPEN A NEW TAB IN THE SAME BROWSER
		AND PASTE AND GO WITH THE URL
		 -->
	</body>
</html>

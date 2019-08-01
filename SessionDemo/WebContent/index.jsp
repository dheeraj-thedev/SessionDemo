<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP ACTION TAGS EXAMPLE</title>
<style>
.formsubmit {
	border: 2px solid #000;
	padding: 20px;
}
</style>
</head>
<body>

	<h1>Jsp UseBean Action Tag Example</h1>
	<div class="formsubmit">
		<form action="testparam.jsp" method="post">
			<!--The values input are triggered to UseBean.jsp  -->
			ID:<input type="text" name="id"> 
			USERNAME:<input type="text"	name="username"> 
			EMAIL:<input type="email" name="email">
			GENDER:<select name="gender" required>
				<!--input the values from user  -->
				<option value="">Select</option>
				<option value="Male">Male</option>
				<option value="Female">Female</option>
			</select>
			<button>SESSION THESE</button>
		</form>


	</div>
</body>
</html>

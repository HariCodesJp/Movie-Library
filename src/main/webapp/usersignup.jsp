<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<style>

form,h1
{
	text-align: center;
	}

</style>

<body>

<h1>User Signup Page</h1>

<form action="usersignup" method="post">

User Id : <input type = "tel" name="userid"> <br>
User Name : <input type = "text" name="username"> <br>
User Contact : <input type ="tel" name="usercontact"> <br>
User Email : <input type = "email" name="useremail"> <br>
User Password : <input type = "password" name="userpassword">

<input type="submit">

</form>


</body>
</html>
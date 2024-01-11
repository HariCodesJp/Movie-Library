<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<style>

form{
text-align: center;
}

</style>

<body>

<h1>Add Movie</h1>

<form action="movieinsertion" method="post" enctype="multipart/form-data">

Movie Id : <input type="text" placeholder="Movie Id" name="movieid" required /> <br><br>
Movie Name : <input type="text" placeholder="Movie Name" name="moviename" required /> <br><br>
Movie Budget : <input type="text" placeholder="Movie Budget" name="moviebudget" required /> <br><br>
Movie Rating : <input type="text" placeholder="Movie Rating" name="movierating" required /> <br><br>
Movie Genre : <input type="text" placeholder="Movie Genre" name="moviegenre" required /> <br><br>
Movie Language : <input type="text" placeholder="Movie Language" name="movielanguage" required /> <br> <br>
Movie Image : <input type="file" placeholder="Movie Image" name="movieimage"  /> <br> <br>

<input type="submit">


</form>

</body>
</html>
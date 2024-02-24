<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<style>
*
{
    margin: 0;
    padding: 0;
}
.first
{
    text-align: center;
    margin-top: 170px;
}
.first h1
{
margin-bottom: 20px;
}
body
{
    background-image: url("haikyu.jpg");
    
    background-size: cover;
    background-repeat: no-repeat;

}
input
{
    padding: 5px 10px;
    font-style: italic;
    font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
}
.click
{
    border-radius: 20px;
    color: black;
    padding: 7px 35px;
    border-color: transparent;
    font-size: 17px;
    letter-spacing: 1.2px;
    font-style: normal;
    font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
}
.click:hover
{
    background-color: black;
    color: #fff;
    cursor: pointer;
}

</style>

<body>
    <div class="image"></div>
<div class="first">
<h1>Add Movie</h1>

<form action="movieinsertion" method="post" enctype="multipart/form-data">

Movie Id : <input type="text" placeholder="Movie Id" name="movieid" required /> <br><br>
Movie Name : <input type="text" placeholder="Movie Name" name="moviename" required /> <br><br>
Movie Budget : <input type="text" placeholder="Movie Budget" name="moviebudget" required /> <br><br>
Movie Rating : <input type="text" placeholder="Movie Rating" name="movierating" required /> <br><br>
Movie Genre : <input type="text" placeholder="Movie Genre" name="moviegenre" required /> <br><br>
Movie Language : <input type="text" placeholder="Movie Language" name="movielanguage" required /> <br> <br>
Movie Image : <input type="file" placeholder="Movie Image" name="movieimage"  /> <br> <br>

<input type="submit" class="click">


</form>
</div>
</body>
</html>
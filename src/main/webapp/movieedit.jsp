<%@page import="java.util.Base64"%>
<%@page import="dtoclasses.MovieDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% MovieDto m = (MovieDto)request.getAttribute("movies"); %>

<form action="movieedit" method="post" enctype="multipart/form-data">

Movie Id : <input type="text" name="movieid" required readonly="readonly" value="<%= m.getMovieId()%>"/> <br><br>
Movie Name : <input type="text"  name="moviename" required value="<%= m.getMovieName()%>" /> <br><br>
Movie Budget : <input type="text"  name="moviebudget" required value="<%= m.getMovieBudget()%>" /> <br><br>
Movie Rating : <input type="text"   name="movierating" required value="<%= m.getMovieRating()%>"/> <br><br>
Movie Genre : <input type="text"   name="moviegenre" required value="<%= m.getMovieGenre()%>" /> <br><br>
Movie Language : <input type="text"   name="movielanguage" required value="<%= m.getMovieLangugae()%>"/> <br> <br>
Movie Image : <input type="file"   name="movieimage"   /> <br> <br>

<input type="submit">
</form>
<% String base64images = new String(Base64.getEncoder().encode(m.getMovieImage())); %>
<img src=" data:image/jpeg;base64,<%= base64images %>" height="50px" width="100px">


</body>
</html>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

h1
{
text-align: center;
color: white;
font-family: Georgia, 'Times New Roman', Times, serif;
}
#center
{
text-align: center;


}
#link1
{
/* border: 1px solid black;
border-radius: 3px;
padding: 5px;
line-height: 10px;
color: black; */
}
#link2
{
/* border: 1px solid black;
border-radius: 3px;
padding: 5px;
color: black; */


}

button
{
font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
padding: 9px 20px;
border-radius: 9px;
color: white;
background-color: black;
font-size: large;

}
button:hover
{
background-color: rgb(162, 231, 219);
color: white;
box-shadow: rgb(172, 243, 234) 0px 7px 29px 0px;
cursor: pointer;
}
button:active
{

background-color: rgb(148, 232, 217);
color: white;
box-shadow: rgb(64, 238, 221) 0px 7px 29px 0px;
transform: translateY(1px);
}
img
{
  background-image:url("3526954.jpg");
    position: absolute;
    z-index: -1;
    object-fit: cover;
    filter: blur(5px);
    height: 100vh;
    width: 100vw;
    background-position: center;
    background-size: cover;

}
div
{
position: absolute;
background-position: center;
margin-top: 310px;
margin-left: 685px;


}
body
{
    height: 100vh;
}
</style>

</head>

<body>

<img alt="" src="3526954.jpg">


<div id ="center">

<a href="userhome.jsp"><button>User</button></a>
<a href="adminhome.jsp"><button>Admin</button></a>

</div>

</body>
</html>
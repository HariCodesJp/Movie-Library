<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Outfit:wght@100..900&display=swap');

    
    *
    {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        
    }
    body
    {
        background-color: rgba(12,3,51,0.3);
 
    }
    button
    {
        font-family: Outfit;
        padding: 8px 30px;
    }
    /* .main
    {
        width: 100%;
        height: 100vh;
        background-image: linear-gradient(rgba(12,3,51,0.3)) ;
        position: relative;
        padding: 0 5%;
        display: flex;
        align-items: center;
        justify-content: center;
    } */
.main
{
    text-align: center;
}
.main h1
{
   margin-top: 300px;
   margin-right: 20px;
    font-family: Outfit;
    font-size:80px;
    color: #fff;
    font-weight: 600;
    transition: 0.5s;
}
.main h1:hover
{
   -webkit-text-stroke: 2px #fff; 
   color: transparent;
   cursor: pointer;
}
.main button
{
    
    position: relative;
    display: inline-block;
    color: #fff;
    font-size: 16px;
    border-color: transparent;
    border-radius: 50px;
    margin-top: 20px;
    background-color: black;
}
.main button:hover
{
    background-color: #fff;
    color: black;
    border-color: transparent;
    cursor: pointer;
}
.back-video
{
    position: absolute;
    right: 0;
    bottom: 0;
    z-index: -1;
}
@media(min-aspect-ratio: 16/9)
{
    .back-video
    {
        width: 100%;
        height: auto;
    }
}
@media(max-aspect-ratio: 16/9)
{
    .back-video
    {
        width: auto;
        height: 100%;
    }
}
    </style>
</head>

<body>
   <div class="videotag">
    <video autoplay muted loop plays-inline class="back-video">
        <source src="Y2meta.app-Miles Morales Spiderman 4k Live Wallpaper _ Spiderman into the spiderverse _ Marvel.-(1080p60).mp4" type="video/mp4">
    </video>
   </div>
    <div class="main">

        <h1>Hello Welcome To Movie Library</h1>


    <a href="userhome.jsp"><button><i class="fa-solid fa-user"></i> USER</button></a>
    <a href="adminhome.jsp">
    <button><i class="fa-solid fa-user-tie"></i> ADMIN</button></a>

</div>

    <script src="https://kit.fontawesome.com/f970853ef3.js" crossorigin="anonymous"></script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Outfit:wght@100..900&family=Protest+Revolution&display=swap');

        *
        {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        .outer
        {
            height: 100vh;
            position: relative;
            overflow: hidden;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            text-align: center;
            animation-name: change;
            animation-duration: 30s;
            animation-iteration-count: infinite;
            animation-timing-function: ease-in-out;
            animation-direction: alternate;
        }
        @keyframes change
        {
            0%
            {
                background-image: url("avatar.jpg");

                
            }
            20%
            {
                background-image: url("izuku.jpg");

            }
            40%
            {
                background-image: url("marvel.jpg");
            }
            60%
            {
                background-image: url("johnwick.png");
            }
            80%
            {
                background-image: url("tanjiro.jpg");
            }
            100%
            {
                background-image: url("spiderman.jpg");
            }
        }
        .inner button
        {
            font-family: protest revolution;
            background-color: rgb(0, 0, 0);
            border-color: black;
            padding: 12px 35px;
            border-radius: 40px;
            margin-top: 20px;
            color: #fff;
            border-color: transparent;
        }
        .inner h1
        {
            font-family: outfit;
            color: #fff;
            font-size: 69px;
            margin-top: 315px;
        }
        .inner button:hover
        {
            background-color: #fff;
            border: #fff;
            color: black;
            cursor: pointer;
        }
        .one
        {
            margin-left: -10px;
        }
        .two
        {
            margin-left: 20px;
        }

    </style>
</head>
<body>
    <div class="outer">
        <div class="inner">
            <h1>Hey Users Welcome To User Home</h1>
            <a href="usersignin.jsp"><button class="one"><i class="fa-solid fa-user-plus"></i> USER SIGNIN</button></a>
            <a href="usersignup.jsp"><button class="two"><i class="fa-solid fa-users"></i> USER SIGNUP</button></a>
        </div>
    </div>
    <script src="https://kit.fontawesome.com/f970853ef3.js" crossorigin="anonymous"></script>
</body>
</html>
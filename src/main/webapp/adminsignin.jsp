<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-pUA-Compatible" content="ie=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login Page</title>
    <link rel="stylesheet" href="../Css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <style>

@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Hanken Grotesk", sans-serif;
}

img
{
		background-image:url("pxfuel (2).jpg");
        position: absolute;
        z-index: -1;
        height: 100vh;
        width: 100vw;
        object-fit: cover;
         background-repeat: no-repeat;
        background-size: cover;
        opacity: 0.8;
        filter: blur(2px);
}
p
{
  text-align: center;
}
.signuppage
{

  text-align: center;
   background-color: rgb(9, 12, 9);
  color: white;
  padding: 14px 20px ;
  border-radius: 12px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}
html
{
    height: 100vh;
}
body {
    height: 100vh;
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
    
}


.wrapper {
  position: relative;
  max-width: 470px;
  width: 100%;
  border-radius: 12px;
  padding: 20px 30px 120px;
  background: #ffffff61;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
  overflow: hidden;
}



/* .form.login {

  position: relative;
  max-width: 470px;
  width: 100%;
  /* border-radius: 12px; */
  padding: 20px 30px 200px;
  /* background: #85656561; */
  /* box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1); */
  overflow: hidden;
  /* position: absolute; */ */
  /* left: 50%; */
  /* bottom: -86%; */
  /* transform: translateX(-50%); */

   width: 100vw;
  /* padding: 20px 140px; */
  /* border-radius: %; */
  height: 100%;
  /* background: #000000b8;  */
  /* transition: all 0.6s ease-in-out;
} */


.wrapper.active .form.login {
  /* bottom: -12%; */
  border-radius: 35%;
  box-shadow: 0 -5px 10px rgba(0, 0, 0, 0.1);
}

.wrapper.active .signup header {
  opacity: 0.6;
}

.wrapper.active .signup header:hover {
  opacity: initial;
  transition: 0.4s ease;
}

.wrapper.active .form.login header {
  opacity: initial;
  transition: 0.4s ease;
}

.form.login input {
  border: 1px solid #aaa;
}

.form.login input:focus {
  box-shadow: 0 1px 0 #ddd;
}

.form header {
  font-size: 30px;
  text-align: center;
  color: #fff;
  font-weight: 600;
 }

.form.login header {
  opacity: 0.9;
}

.form.login header:hover {
  opacity: initial;
  transition: 0.4s ease;
}

.wrapper form {
  display: flex;
  flex-direction: column;
  gap: 20px;
  margin-top: 40px;
}

form input {
  height: 60px;
  outline: none;
  border: none;
  padding: 0 15px;
  font-size: 16px;
  font-weight: 400;
  color: black;
  border-radius: 8px;
}

form .checkbox {
  display: flex;
  align-items: center;
  gap: 10px;
}

.checkbox input[type="checkbox"] {
  height: 16px;
  width: 16px;
  accent-color: #fff;
  cursor: pointer;
}

form .checkbox label {
  cursor: pointer;
  color: #fff;
}

form a {
  color: #fff;
  text-decoration: none;
}

form a:hover {
  text-decoration: underline;
}

form input[type="submit"] 
{
  font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
  color: black;
  margin-top: 15px;
  padding: none;
  font-size: 18px;
  font-weight: 500;
  cursor: pointer;
}

.form.login input[type="submit"] {
  background: #f8f4f3;
  color: #2a2b2a;
}
.form .error
{
  display: flex;
  align-items: center;
  margin-top: -10px;
  color: red;
  font-size: 13px;
}
.error .error-icon
{
  margin-right: 6px;
  font-size: 15px;
}
button
{
  text-align: center;
  background-color: rgb(9, 12, 9);
 color: white;
 padding: 14px 20px ;
 border-radius: 12px;
 margin: 8px 0;
 border: none;
 cursor: pointer;
 width: 100%;
 opacity: 0.9;
}
button:hover
{
  letter-spacing: 1px;
  color: #fffffff6;
  background-color: orange;
  box-shadow: 0px 7px 29px 1px;
}
button:active
{
  letter-spacing: 1px;
  color: #fffffff6;
  background-color: orange;
  box-shadow: 0px 7px 29px 1px;
  transform: translateY(1px);
}
</style>
</head>
<body>
    <img src="pxfuel (2).jpg" alt="">
    <section class="wrapper">
        <div class="form login">
            <header>Login</header>
            <form action="adminsignin" method="post">
              <input type="text" placeholder="Email address" name="adminemail" required />
              <input type="text" placeholder="Password" name="adminpassword" required />
              <span class="error pass error">
              <!-- <i class='bx bx-error-circle error-icon'></i> -->
              <p class="error-text"> <% String message = (String)request.getAttribute("message"); %>
										<%if(message!=null){ %>
											<%= message %>
												<%}%>
</p>
            </span>
              <a href="">Forgot my password</a>
              <button>Login</button>
              <p>New User ?</p>
              <a href="adminsignup.jsp" class="signuppage">Sign Up</a>
              
            </form>
          </div>
        </section>



</body>
</html>
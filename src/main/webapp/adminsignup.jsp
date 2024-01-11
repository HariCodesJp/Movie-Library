<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-pUA-Compatible" content="ie=edge" />
    <title>Admin Signup Page)</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
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
		background-image:url("pxfuel (3).png");
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

/* .form.login input {
  border: 1px solid #aaa;
}

.form.login input:focus {
  box-shadow: 0 1px 0 #ddd;
} */

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
  color: #f6acac;
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

form input[type="submit"] {
  margin-top: 15px;
  padding: none;
  font-size: 18px;
  font-weight: 500;
  cursor: pointer;
  color: black;
  font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif ;
}

.form.login input[type="submit"] {
  background: #f8f4f3;
  color: #2a2b2a;
}

</style>
  </head>
  <body>
    
    <img alt="" src="/adminloginuserinterface/src/main/webapp/images/imgcom.html">
    <section class="wrapper">
      <div class="form signup">
        <header>Signup</header>
        
        <form action="adminsignup" method="post">
            
            <!-- <i class="fas fa-envelope"></i> -->
          <input type="text" placeholder="Admin Id" name="adminid" required />
          <input type="text" placeholder="Admin Name" name="adminname" required />
          <input type="tel" placeholder="Admin Contact" name="admincontact" required />
          <input type="email" placeholder="Admin Email" name="adminemail" required />
          <input type="password" placeholder="Admin Password" name="adminpassword" required />
          <div class="checkbox">
            <input type="checkbox" id="signupCheck" />
            <label for="signupCheck"> I accept all terms & conditions</label>
          </div>
          <input type="Submit" value="Signup" />
        </form>
      </div>
   </section>

      
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="welcome.css"/>
    <script>
        function valid(){
            var pass=document.getElementById("p").value;
            var cpass=document.getElementById("cp").value;
            var uname=document.getElementById("uname").value;
            if(pass!=cpass){
            	document.getElementById("A").innerHTML="Boths passwords should be same";
            	return false;
            }
            if(uname==""){
            	document.getElementById("A").innerHTML="Email Required";
            	return false;	
            }
            if(p==""){
            	document.getElementById("A").innerHTML="Password Required";
            	return false;	
            }
            if(cpass==""){
            	document.getElementById("A").innerHTML="Confirm Password Required";
            	return false;	
            }
            return true;
        }
        function valid2(){
            var loginpass=document.getElementById("loginp").value;
            var loginuname=document.getElementById("loginuname").value;
            if(loginuname==""){
            	document.getElementById("A2").innerHTML="Email Required";
            	return false;	
            }
            if(loginpass==""){
            	document.getElementById("A2").innerHTML="Password Required";
            	return false;	
            }
            return true;
        }
    </script>
</head>
<body>
        <section id="home" class="home">
                <div class="navbar">
                    <div class="brand">Modern Living</div>
                    <div class="links">
                        <ul>
                            <div class="items"><li><a href="#">Homes</a></li></div>
                            <div class="items"><li><a href="#join">Join</a></li></div>
                            <div class="items"><li><a href="#login">Login</a></li></div>
                            <div class="items"><li><a href="#">Contact</a></li></div>
                            <div class="items"><li><a href="#">Help</a></li></div>
                        </ul>
                    </div>
                </div>
                <div class="content">
                <h1>FILL YOUR HOME WITH UNIQUE COLORS</h1>
                <div>
                    <button type="button" class="home-button"><span></span><a href="#join">Join</a></button>
                    <button type="button" class="home-button"><span></span><a href="#login">Login</a></button>
                </div>
            </div>
        </section>

        <section id="join" class="join">  
            <div class="container">
                <div class="form">
                    <h2>Register</h2>
                    <form action="register" method="post">
                        <div class="input">
                            <input type="text" id="uname"class="uname" name="uname" >
                            <label for="email" class="label1">Email</label>
                        </div>
                        <div class="input">
                            <input type="password" id="p" class="pass" name="pass" >
                            <label for="password" class="label2" >Password</label>
                        </div>
                        <div class="input">
                            <input type="password" id="cp" class="cpass" name="cpass" >
                            <label for="confirmpassword" class="label3">Confirm Password</label>
                            <p id="A" style="color:red"></p>
                        </div>
                        <div class="rf">
                           <p> <input type="checkbox">Remember me </p>
                            <p> <input type="checkbox">Terms And Conditions </p>
                        </div>
                        <input type="submit" class="btn" value="SignUp" onclick="return valid()">
                        <div class="register">
                            <p>Already have account?<a href="#login">Login</a></p>
                        </div>
                        
                    </form>
                </div>
            </div>
        </section>
        

        <section id="login" class="login">  
            <div class="container">
                <div class="form">
                    <h2>Login</h2>
                    <form action="login.jsp" method="post">
                        <div class="input">
                            <input type="text" id="loginuname"class="uname" name="loginuname" >
                            <label for="email" class="label1">Email</label>
                        </div>
                        <div class="input">
                            <input type="password" id="loginp" class="pass" name="loginpass" >
                            <label for="password" class="label2" >Password</label>
                        	<p id="A2" style="color:red"></p>
                        </div>
                        <div class="rf">
                           <p> <input type="checkbox">Remember me </p>
                           
                        </div>
                        <input type="submit" class="btn" value="Sign in" onclick="return valid2()">
                        <div class="register">
                            <p>Don't have account?<a href="#join">Register</a></p>
                        </div>
                    </form>
                </div>
            </div>
        </section>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>index.html</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js" integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS" crossorigin="anonymous"></script>
    <style>
        section{
            height: 100vh;
            justify-content: center;
            text-align: center;
            
        }
        .start{
            height:100vh;
            overflow: hidden;
        }
        .main{
            display:flex;
            justify-content: center;

            font-size:2em;
            font-family: 'Lucida Sans';
        }
        .container{
        	background: linear-gradient(to bottom, rgba(255,255,255,0.15) 0%, rgba(0,0,0,0.15) 100%), radial-gradient(at top center, rgba(255,255,255,0.40) 0%, rgba(0,0,0,0.40) 120%) #989898;
 			background-blend-mode: multiply,multiply;
 			width: 50%;
            margin: 0 auto;
            border:2px solid black;
            border-radius: 1em;
            
        }
        .fields{
            display:flex;
            flex-wrap: wrap;
            align-items:center;
            padding:10px;
            overflow: hidden;
        }
        .name,.phno,.mailid,.address,.pincode,.locality,.acc,.cvv,.am{
            width:45%;
            margin-bottom:20px;
            margin:20px auto;
            
        }
        .input{
            
            width:95%;
            padding:10px;
            border-radius:1em;
            font-size:1em;
        }
        .radio{
            margin:20px auto;
            font-size:30px;
            color:whitesmoke;
        }
        input[type='radio']{
           transform:scale(2);
           cursor:pointer;
        }
        .button{
            margin:0 auto 10px;
        }
        .next{
            font-size: 1.2em;
            margin:0 auto;
        }
        .back{
        	margin-top:20px;
            text-align: center;
        }
        .payment{
            align-items: center;
        }
        
        @media only screen and (max-width:900px){
            .name,.phno,.mailid,.address,.pincode,.locality,.acc,.cvv,.am{
            width:100%;
            margin-bottom:0px;
        }
        .radio{
            font-size:20px;
            color:whitesmoke;
        }
        input[type='radio']{
           transform:scale(1.5);
           cursor:pointer;
        }
        } 
            
        
    </style>
</head>
<script>
function valid(){
var name=document.getElementById('name').value;
var loc=document.getElementById('loc').value;
var mail=document.getElementById('mail').value;
var address=document.getElementById('address').value;
var phno=document.getElementById('phno').value;
var pincode=document.getElementById('pincode').value;

if(name==""){
	document.getElementById("A").innerHTML="<h6 style='color:red'>Enter first name</h6>";
	return false;
}
if(loc==""){
	document.getElementById("A").innerHTML="<h6 style='color:red'>Enter Location</h6>";
	return false;
}
if(address==""){
	document.getElementById("A").innerHTML="<h6 style='color:red'>address</h6>";
	return false;
}
if(phno==""){
	document.getElementById("A").innerHTML="<h6 style='color:red'>Enter Phone Number</h6>";
	return false;
}

if(mail==""){
	document.getElementById("A").innerHTML="<h6 style='color:red'>Enter Your MailId</h6>";
	return false;
}
if(pincode==""){
	document.getElementById("A").innerHTML="<h6 style='color:red'>Enter pincode</h6>";
	return false;
}

return true;
}
function valid1(){
	var acc=document.getElementById('acc').value;
	var cvv=document.getElementById('cvv').value;
	if(acc==""){
		document.getElementById("B").innerHTML="<h6 style='color:red'>Enter acc name</h6>";
		return false;
	}
	if(acc.length!=13){
		alert("invalid Account number");
		return false;
	}
	else if(cvv==""){
		document.getElementById("B").innerHTML="<h6 style='color:red'>Enter cvv</h6>";
		return false;
	}
	else  if (/[A-Z]/.test(acc)) {
		  alert("Account number should not contain letters");
		    return false;
	}
	else if (/[a-z]/.test(acc)) {
		  alert("Account nummber should not contain letters");
		  return false;
	}
	if(cvv.length!=3){
		alert("Invalid cvv");
		return false;
	}
	  if (/[A-Z]/.test(cvv)) {
		  alert("cvv should not contain letters");
		    return false;
	}
	  if (/[a-z]/.test(cvv)) {
		  alert("cvv should not contain letters");
		   return false;
	}
	return true;
}
</script>
<body>
<%
int amt=Integer.parseInt(request.getParameter("cost"));
int days=Integer.parseInt(request.getParameter("qy"));

int total=(amt*days);

%>
<form action=book method="post">
    <div class="start">

        <section id="one">
            <div class="main">Address</div>
            <div class="container">
            <div class="fields">
                <div class="name"><input type=text placeholder="name" class="input" name="name" id="name"></div>
                <div class="locality"><input type=text placeholder="locality" class="input" name="loc" id="loc"></div>
                <div class="mailid"><input type=text placeholder="mailid"  class="input" name="mail" id="mail"></div>
                <div class="address"><textarea placeholder="address" rows="2" cols="40" class="input" name="address" id="address"></textarea></div>
                <div class="phno"><input type="text" placeholder="phno" class="input" name="phno" id="phno"></div>
                <div class="pincode"><input type="text" placeholder="pincode" class="input" name="pincode" id="pincode"></div>
            </div>
                <div class="radio" >
                    <input type="radio" name="check" required/>
                    <label for="Online-Payment">Online Payment Only</label><br>
                    <input type="radio" name="check" disabled/>
                    <label for="cash-on-delivery">Cash on delivery</label><br>
                </div>
                <a href="#two">
                    <input type="button" class="btn btn-primary button" value="Next" onclick="return valid()">
                </a>
               
            </div>
             <p id="A"></p>
        </section>
       
        <section id="two">
                <div class="main">Payment</div>
                <div class="container">
                <div class="fields">
                    <div class="acc"><input type=text placeholder="Acc No" class="input" id="acc"></div>
                    <div class="cvv"><input type=text placeholder="Cvv" class="input" id="cvv"></div>
                    <div class="am"><input type=text name="cost" value="<%out.println(total);%>" readonly class="input"></div>
                    <input type="text" name="product_id" id="product_id" value='<%out.println(request.getParameter("product_id"));%>' readonly style="display:none" />
					<input type="text" id="qy" name="qy"class="qy" value='<%out.println(request.getParameter("qy"));%>' style="display:none"/>

                </div>
                </div>
                    <div class="back">
                        <input type="submit" class="btn btn-primary button" value="Pay" onclick="return valid1()">
                        <a href="#one" >
                            <input type="button" class="btn btn-primary button" value="Back" >
                        </a>
                    </div>
                     <p id="B"></p>
        </section>
    </div>
</form>
</body>
</html>
</body>
</html>
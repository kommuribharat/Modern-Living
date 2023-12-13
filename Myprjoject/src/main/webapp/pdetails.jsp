<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"  %>
<%@page import="Myprjoject.Jdbc" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background: linear-gradient(to bottom, rgba(255,255,255,0.15) 0%, rgba(0,0,0,0.15) 100%), radial-gradient(at top center, rgba(255,255,255,0.40) 0%, rgba(0,0,0,0.40) 120%) #989898;
 background-blend-mode: multiply,multiply;
}
.img{
text-align:center;
box-shadow:5px;
border:auto solid blue;
margin-bottom:70px;
margin-top:50px;
}
img
{
	border:5px solid #555;
	box-shadow:0px 0px 0px 20px #ccc;
	align:center;

}
article{
display:inline;
}
table, td, th {
  border: 1px solid black;
}

table {
  border-collapse: collapse;
  width: 50%;
}

td {
  text-align: center;
  width:50%;
}
span{
	font-weight:bold;
	color:black;
	font-size:30px;
}
input{
	width:10%;
	margin-left:40%;
	magin-top:15px;
	border-radius:20px;
	font-size:25px;
}
button{
	margin-top:10px;
	font-weight:bold;
	border-radius:20px;
	font-size:20px;
	padding:10px 50px;
	color:white;
	background-color:black;
	margin-left:40%;
	cursor:pointer;
	}
.qy{
margin-top:20px;
border-radius:0;
}
.props{
font-weight:bold;
line-height:2em;
font-size:20px;
color:block;
}
.values{
font-size:20px;
color:black;
}
</style>

<script>
function valid(){
var days=document.getElementById('qy').value;
if(days==""){
	alert("Please Enter Quantity");
	return false;
}
return true;
}
</script>
</head>
<body>
<div class="container">
<%
String image=request.getParameter("itemid");
int id=Integer.parseInt(image);
try{
Connection con= Jdbc.Database();
PreparedStatement st= con.prepareStatement("select * from images");
PreparedStatement st1=con.prepareStatement("select * from add_details where pro_id="+id);
ResultSet rst=st.executeQuery();
ResultSet rst1=st1.executeQuery();

while(rst.next() ){
	if(rst.getInt("pid")==id){
%>
<div class="img">
<img src="images\<%=rst.getString("imagepath")%>" width="390" height="300"/>
<h1 class="product_name"><%=rst.getString("NAME")%></h2>
<h1 class=""><%=rst.getString("Price")%></h2>
<%
	}
}
%>
</div>
<%
while(rst1.next()){
%>
<div>
<table>
<table align="center" border='2'>
<tr>
<td class="props"><%out.println(rst1.getString("name")); %></td>
<td class="values"><%out.println(rst1.getString("spec_valu")); %></td>
</tr>
</table>
</table>
</div>
</div>
<%
}
}
catch(Exception e){
e.printStackTrace();
}
%>
<form method="post" action="book.jsp">
<input type="text" name="product_id" id="product_id" value='<%out.println(request.getParameter("itemid"));%>' readonly style="display:none"/>
<input type="number" name= "qy" id="qy" class="qy"/><span>Quantity</span>
<p id="A" ></p>
<input type="text" id="cost" name="cost" readonly value='200' style="display: none" />
<button onclick="return valid()">Book</button>
</form>
</body>
</html>
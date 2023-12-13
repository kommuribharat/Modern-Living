<%@page import="java.sql.*"  %>
<%@page import="Myprjoject.Jdbc" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1 characterEncoding=utf8">
<title>Insert title here</title>
<link rel="stylesheet" href="homed.css">
<style>
*{
	padding:0;
	margin:0;
	box-sizing:border-box;
	color:black;
	background-color:white;
}
html{
	font-size:62.5%;
}
.main{

	max-width:2000px;
	width:95%;
	padding:50px;
	margin:30px auto;
	display:flex;
	flex-wrap:wrap;
	justify-content:space-between;
	margin:auto;
		background: linear-gradient(to bottom, rgba(255,255,255,0.15) 0%, rgba(0,0,0,0.15) 100%), radial-gradient(at top center, rgba(255,255,255,0.40) 0%, rgba(0,0,0,0.40) 120%) #989898;
 background-blend-mode: multiply,multiply;
	}
.main .card{
	max-width:600px;
	flex:1 1 250px;
	text-align:center;
	height:600px;
	border:2px solid black;
	border-radius:20px;
	margin:20px;
	background-color:gray;
}
.main .card .image{
	height:60%;
	margin-bottom:20px;
	border-radius:20px;
}

.main .card .image img{
	width:100%;
	height:100%;
	object-fit:cover;
	border-top-left-radius:20px;
	border-top-right-radius:20px;
}
.main .card .caption{
	padding-left:1em;
	text-align:left;
	line-height:3em;
	height:25%;
	text-transform:uppercase;
}
.main .card .caption p{
	font-size: 20px;
	line-height:50px;
}
.main .card .caption .price{
	font-weight:bold;
}
.main .card button{
	border: 2px solid black;
	padding:10px 100px;
	widht:80%;
	cursor:pointer;
	margin-top:20px;
	font-weight:bold;
	poistion:relative;
}
</style>
</head>
<body>
<%
try{
Connection con= Jdbc.Database();
PreparedStatement st= con.prepareStatement("select * from images");
ResultSet rst=st.executeQuery();
%>
<div class="main">
<% 
while(rst.next()){
%>
<div class="card">
<div class=image>
<img src="images\<%=rst.getString("imagepath")%>"/ >
</div>
<div class="caption">
<p class="product_name"><%=rst.getString("NAME")%></p>
<p class="price">rent:200</p>
</div>
<a href="pdetails.jsp?itemid=<%out.println(rst.getString("pid"));%>">
<button class ="add" >More Details
</button>
</a>
</div>

<%
}
}
catch(Exception e){
e.printStackTrace();

}
%>
</div>
</body>
</html>
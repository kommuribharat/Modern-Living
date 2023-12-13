<%@page import="java.sql.*"  %>
<%@page import="Myprjoject.Jdbc" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try{
Connection con= Jdbc.Database();
PreparedStatement st= con.prepareStatement("select * from register where name=? and password=?");
String name=request.getParameter("loginuname");
String password=request.getParameter("loginpass");
st.setString(1,name);
st.setString(2,password);
ResultSet rst=st.executeQuery();
if(rst.next()){
	response.sendRedirect("home.jsp");
}
else{
	response.sendRedirect("userfail.html");
}
}
catch(Exception e){
e.printStackTrace();
}
%>
</body>
</html>
<%@page import="javax.servlet.annotation.MultipartConfig"%>
<%@page import="org.apache.poi.ss.usermodel.Sheet"%>
<%@page import="org.apache.poi.ss.usermodel.WorkbookFactory"%>
<%@page import="org.apache.poi.sl.usermodel.*"%>
<%@page import="org.apache.poi.ss.usermodel.*"%>
<%@page import="java.io.InputStream"%>
<%@page import="org.model.ProductDetails"%>
<%@page import="java.util.List"%>
<%@page import="org.DAO.UpwardDAOimpl"%>
<%@page import="org.DAO.UpwardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
*{
	padding:0px;
	margin:0px;
	
}
body{
	width:100vw;
	height:100vh;
	
	
}
#header{
width:100vw;
height:28vh;
background-color: royalblue;
border: 1px solid black;
}
#container{
	width: 100vw;
	height:71vh;
	
}
.child{
	width: 79.8vw;
	height: 100%;
	border: 0.5px solid black;
	float: left;
}
#leftchild{
	width: 19.8vw;
	
	display: flex;
	flex-direction:column;
	justify-content:space-around;
	align-items: center;

	
}
#rightchild{

	display: flex;
	justify-content: center;
	align-items: start;
	
}
#home{

	position: absolute;
	left:22vw;
	top:14vw;
	font-size: 2vw;
	
}
#form{
	position: relative;
	top:2vw;
}
#form2{

position: relative;
top:4vw;
left:-10vw;
}
.clear{
	
	width: 5vw;
	height: 2vw;
}
#ud{
	
	position: relative;
	top:0.8vw;
}
table,th,td{
border: 1px solid black;
border-collapse: collapse;
}
</style>
</head>
<body>

<nav id="header"></nav>
<div id="container">

<div id="leftchild" class="child">
<h1><a href="UploadProduct.jsp">Upload Product</a></h1>
<h1><a href="SearchProduct.jsp">Search Product</a></h1>
</div>
<div id="rightchild" class="child">
<span id="home">Home >> Upload Product</span>
<form id="form"  method="post" enctype="multipart/form-data" action="verify">
<label>Select a file :</label>
<input type="file" name="xl" accept=".xls,.xlsx" required>
<br>
<input id="ud" class="clear" type="submit" value="Upload data">

</form>


<form id="form2" action="UploadProduct.jsp">
<input class="clear" type="submit" value="clear">
</form>

</div>
</div>

</body>
</html>
<%@page import="dao.KhoahocDAO"%>
<%@page import="model.Khoahoc" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
    
    <sql:setDataSource
	driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost/webcanhangv"
	user="root"
	password="1411"/>
	<sql:query var="items" sql="SELECT * FROM khoahoc"/>
	<sql:query var="items2" sql="SELECT * FROM xemthongbao"/>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>WEB</title>
	<link href="https://fonts.googleapis.com/css?family=Coiny" rel="stylesheet">
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css">
	<script src = "javascript/jquery-3.1.1.min.js"></script>
	<script src ="bootstrap/js/bootstrap.min.js"></script>
	<script src = "javascript/myjs.js"></script>

</head>
<body>
<%
	KhoahocDAO khoahocDAO=new KhoahocDAO();
%>
	<div class="container">
		<div class="row">
			<div class="col-md-5 col-sm-5 col-xs-5">
				<img src="image/logo.png" alt="" width="150px" height="40px">
			</div>
			<div class="col-md-7 col-sm-7 col-xs-7 toptieude">
				<p>Học - Học nữa - Học mãi - Học máu</p>
			</div>
		</div>
	</div>
	<nav class="navbar navbar-inverse " >
	    <div class="container">
	        <div class="navbar-header">
	            <a class="navbar-brand" href="#">Trang chủ</a>
	        </div>
	        <ul class="nav navbar-nav">
	            <li class="active"><a href="#">Thông tin cá nhân</a>
	            </li>
	            <li ><a href="#">Khóa học</a>           
	            </li>
	            <li><a href="#">Tìm kiếm</a>
	            </li>
	        </ul>
	        <ul class="nav navbar-nav navbar-right">
	            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a>
	            </li>
	            <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a>
	            </li>
	        </ul>
	    </div>
	</nav>
	<div class= "container">
		<ol class="breadcrumb">
			<li><a href="#">Trang chủ</a></li>
			<li class="active">Khóa học</li>
		</ol>
	</div>
	<div class="container">
	    <div class="row">
	        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
					
					<table class="table">
						
							<%
								for(Khoahoc c : khoahocDAO.getListKhoahoc()){
							
							%>
							<tr>
								<td><%=c.getKhoahocName()%></td>
								<td><%=c.getKhoahocMT()%></td>
								<td><%=c.getKhoahocNBD()%></td>
								<td><%=c.getKhoahocNKT()%></td>
							</tr>
							<%
								}
							%>

					</table>
					
	        </div>
	        
	        <div>
	        	<select>
	        		<%
								for(Khoahoc c : khoahocDAO.getListKhoahoc()){
							
							%>
				  <option value="volvo"><%=c.getKhoahocID() %></option>
				  <%
								}
							%>
				</select>
	        </div>

	       	<div class="col-md-4">
	         	<marquee onmouseover="this.stop()" onmouseout="this.start()" scrollamount="2" direction="up" width="100%" height="200" align="center">      
	         		<table class="table">
							<c:forEach items="${items2.rowsByIndex}" var="row">			
								<tr>
									<c:forEach items="${row}" var="col">			
										<td>${col}</td>			
									</c:forEach>							
								</tr>					
							</c:forEach>
					</table>
	            </marquee> 
	        </div>
	  	</div>
	</div><!-- content -->
	<footer>
		<div class="site-footer">
			<div class="container">
				<div class="row">
					<div class="col-md-5">
						<address>
							Website cá nhân của Giảng viên Nguyễn Văn ABC<br>
							Điện thoại:01652729999 <br>
							Địa chỉ: Số 1, Võ Văn Ngân, Quận Thủ Đức, Thành Phố Hồ Chí Minh<br>
							Email: nguyenvanabc@gmail.com<br>
						</address>
					</div>
					<div class="col-md-offset-2 col-md-5">
						<address>
							<p>Career</p>
							<p>Privacy Policy</p>
							<p>Terms & Conditions</p>
						</address>
					</div>
				</div>
				<div class="bottom-footer">
					<div class="col-md-5">
						&copy; Copyright WebDevMentors 2016.
					</div>
					<div class="col-md-7">
						<ul class="footer-nav">
							<li><a href="GV_HomePage.html">Trang Chủ</a></li>
							<li><a href="GV_HoSo.html">Thông tin cá nhân</a></li>
							<li><a href="GV_NghienCuu.html">Khóa Học</a></li>
							<li><a href="GV_AnPham.html">Tìm Kiếm</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</footer><!-- /Phần footer -->
</body>
</html>
<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="javax.websocket.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Expires" content="0">
<meta http-equiv="kiben" content="no-cache">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>毕业设计管理系统</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<!-- stylesheet -->
<link href="css/main.css" rel="stylesheet" media="screen" />
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen" />
<!-- icon -->
<!--  link rel="icon" href="httP://www.find1x.com/favicon.ico"
	type="image/x-icon" /-->
<!-- link rel="shortcut icon" href="http://www.find1x.com/favicon.ico"
	type="image/x-icon" /-->

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
	<script src="../../assets/js/html5shiv.js"></script>
	<script src="../../assets/js/respond.min.js"></script>
	<![endif]-->
</head>
<body>
	<!-- nav -->
	<%@ include file="nav.jsp"%>
	<%
		if (session.getAttribute("username") == null) {
	%>
	<div class="container">
		<div class="jumbotron">
			<h2>欢迎使用毕业设计管理系统</h2>
			<table>
				<tr>
					<td><a class="btn btn-primary btn-large">公告栏</a>
						<p>
							<font size=3> 全体本科、高职学生: <br />
								本学期考试安排信息现将通过教学管理系统陆续发布，请同学登录到教学管理系统进行查询（信息查询－>考试安排）。
								如有疑问，请咨询所在校区选考中心。
								注：重修班及本学期毕业学生的免听选考课程考试的安排已经通过教学管理系统发布，请相关学生及时查询。 <br /></font>
						</p>
					<td>
						<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
					</td>
					<td><a class="btn btn-primary btn-large">现系统阶段</a>

						<p>毕业设计管理系统还未开放</p></td>
				</tr>
			</table>

		</div>
	</div>
	<%
		} else {
			if (session.getAttribute("type") != null
					&& session.getAttribute("type").toString().equals("0")) {
				response.sendRedirect("/gpms/student");
			} else {
				response.sendRedirect("/gpms/teacher");
			}
		}
	%>
</body>
<script src="js/jquery-1.10.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</html>
<%@ page import="java.sql.Connection" %>
<%@ page import="com.moshiur.jobportal.db.DBConnect" %><%--
  Created by IntelliJ IDEA.
  User: moshiur.mirage
  Date: 10/19/2024
  Time: 11:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="WEB-INF/all_components/all_css.jsp"%>
<html>
<head>
    <title>Job Portal Admin</title>
    <style>
        .back-img{
            background: url("static/img/job-bg.png");
            width: 100%;
            height: 85vh;
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
</head>
<body>
<%@include file="WEB-INF/all_components/navbar.jsp"%>
<%
    Connection con= DBConnect.getConnection();
    out.println(con);
%>
    <div class="container-fluid back-img">
            <div class="text-center">
                <h1 class="text-white p-4">
                    <i class="fa fa-book" aria-hidden="true">Online Job Portal</i>
                </h1>
            </div>
    </div>
<%@include file="WEB-INF/all_components/footer.jsp"%>
</body>
</html>

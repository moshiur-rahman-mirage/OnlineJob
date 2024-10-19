<%--
  Created by IntelliJ IDEA.
  User: moshiur.mirage
  Date: 10/19/2024
  Time: 1:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="WEB-INF/all_components/all_css.jsp"%>
<html>
<head>
    <title>Sign Up</title>
</head>
<body style="background-color: #F0F1F2">
<%@include file="WEB-INF/all_components/navbar.jsp"%>

<div class="container-fluid">
  <div class="row p-5">
    <div class="col-md-4 offset-md-4">
      <div class="card">
        <div class="card-body">
          <div class="text-center">
            <i class="fa fa-user-plus fa-2x" aria-hidden="true"></i>
            <h5>Sign Up Page</h5>
          </div>
          <form action="register" method="post">

            <div class="form-group">
              <label>Full Name</label>
              <input type="text" required="required" class="form-control" id="name" name="name">
            </div>

            <div class="form-group">
              <label>Enter Qualification</label>
              <input type="text" required="required" class="form-control" id="edu" name="edu">
            </div>

            <div class="form-group">
              <label>Enter Email</label>
              <input type="email" required="required" class="form-control" id="email" name="email">
            </div>

            <div class="form-group">
              <label>Enter Password</label>
              <input type="password" required="required" class="form-control" id="password" name="password">
            </div>

            <button type="submit" class="btn btn-primary batge-pill btn-block">
              Submit
            </button>

          </form>
        </div>
      </div>
    </div>

  </div>

</div>


<%@include file="WEB-INF/all_components/footer.jsp"%>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: moshiur.mirage
  Date: 10/19/2024
  Time: 4:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="WEB-INF/all_components/all_css.jsp" %>
<html>
<head>
    <title>View Jobs</title>
</head>
<body>
<%@include file="WEB-INF/all_components/navbar.jsp" %>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h5 class="text-center text-primary">View All Jobs</h5>
            <div class="card mt-2">
                <div class="card-body">
                    <div class="text-center text-primary">
                        <i class="fa fa-clipboard fa-2x"></i>
                    </div>
                  <h6>Title</h6>
                  <p>Description</p>
                  <br>
                  <div class="form-row">
                    <div class="form-group col-md-3">
                      <input type="text" class="form-control form-control-sm" readonly value="location:"/>
                    </div>

                    <div class="form-group col-md-3">
                      <input type="text" class="form-control form-control-sm" readonly value="category:"/>
                    </div>

                    <div class="form-group col-md-3">
                      <input type="text" class="form-control form-control-sm" readonly value="status:"/>
                    </div>
                  </div>
                  <div class="text-center">
                    <a href="login.jsp" class="btn btn-sm bg-success text-white"><i class="fas fa-edit"></i> Edit</a>
                    <a href="signup.jsp" class="btn btn-sm bg-danger text-white"><i class="fas fa-trash-alt"></i> Delete</a>
                  </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@include file="WEB-INF/all_components/footer.jsp" %>
</body>
</html>

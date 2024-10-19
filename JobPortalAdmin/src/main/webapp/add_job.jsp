<%--
  Created by IntelliJ IDEA.
  User: moshiur.mirage
  Date: 10/19/2024
  Time: 4:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="WEB-INF/all_components/all_css.jsp"%>
<html>
<head>
    <title>Add Job</title>
</head>
<body>
<%@include file="WEB-INF/all_components/navbar.jsp"%>
<div class="container p-2">
    <div class="col-md-10 offset-md-1">
        <div class="card">
            <div class="card-body">
                <div class="text-center text-success">
                    <i class="fa fa-user-friends fa-3x"></i>
                    <h5>Add Job</h5>
                </div>
               <form action="add_job" method="post">
                   <div class="form-group">
                       <label>Enter Title</label>
                       <input type="text" name="title" required="required" class="form-control">
                   </div>
                   <div class="form-row">
                        <div class="form-group col-md-4">
                            <label>Location</label>
                            <select name="location" class="custom-select">
                                <option selected>Choose..</option>
                                <option>Dhaka</option>
                                <option>Jamalpur</option>
                                <option>Tangail</option>

                            </select>
                        </div>
                       <div class="form-group col-md-4">
                           <label>Category</label>
                           <select name="category" class="custom-select">
                               <option selected>Choose..</option>
                               <option>ID</option>
                               <option>Bank</option>
                               <option>Service</option>

                           </select>
                       </div>

                       <div class="form-group col-md-4">
                           <label>Status</label>
                           <select name="status" class="custom-select">
                               <option selected>Choose..</option>
                               <option>Active</option>
                               <option>Inactive</option>

                           </select>
                       </div>
                   </div>
                   <div class="form-group ">
                       <label>Description</label>
                       <textarea required rows="6" cols="" name="desc" class="form-control"></textarea>
                   </div>
                   <button class="btn btn-success">Publish Job</button>
               </form>

            </div>
        </div>
    </div>

</div>

<%@include file="WEB-INF/all_components/footer.jsp"%>
</body>
</html>

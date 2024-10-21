<%--<%@ taglib prefix="c" uri="https://jakarta.ee/jstl/core" %>--%>
<%--<%@ taglib prefix="c" uri="https://jakarta.ee/jstl/core" %>--%>
<%--<%@ taglib prefix="c" uri="https://jakarta.ee/jstl/core" %>--%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>



<%@ page isELIgnored="false" %>

<nav class="navbar navbar-expand-lg navbar-dark bg-custom">


    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">


            <li class="nav-item active">
                <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
            </li>
            <c:if test="${not empty userobj}">
                <% System.out.println("Hello"); %>
            </c:if>
            <c:if test="${userobj.role eq 'admin'}">
                <li class="nav-item">
                    <a class="nav-link" href="add_job.jsp"> <i class="fa fa-plus-circle"></i> Post Job</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="view_jobs.jsp"><i class="fa fa-eye"></i> View Job</a>
                </li>
            </c:if>
        </ul>
        <form class="form-inline my-2 my-lg-0">
            <a href="login.jsp" class="btn btn-outline-success my-2 mr-2 my-sm-0"><i class="fas fa-sign-in-alt"></i> Log
                In</a>
            <a href="signup.jsp" class="btn btn-outline-success my-2 my-sm-0"><i class="fas fa-user"></i> Sign Up</a>
        </form>
    </div>
</nav>
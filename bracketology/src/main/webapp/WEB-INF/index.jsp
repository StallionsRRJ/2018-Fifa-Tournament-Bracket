<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="/src/css/font-awesome.min.css">
        <link rel="stylesheet" href="/src/css/fontawesome-all.min.css">
        <link rel="stylesheet" href="/src/css/bootstrap.css">
        <link rel="stylesheet" href="/src/css/style.css">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>R-Code</title>
		<link rel="stylesheet" type="text/css" href="/css/style.css">
		<script src="/js/main.js"></script>
	</head>

	<body>
 
<%-- Home Section --%>
<header id="home-section">

   <div class="dark-overlay">
     <div class="home-inner">
       <div class="container">
         <div class="row">
          <div class="col-lg-8 d-none d-lg-block">
            <h1 class="display-4"> <strong>Welcome to R-Codes</strong> </h1>
          </div>
           <div class="col-lg-4">

             <div class="card bg-primary text-center card-form">
               <div class="card-body">
                 <h3>Sign up today</h3>
                 <p>Please fill out this form to register</p>
                 <form:form action="/registration" method="post" modelAttribute="user">
             			<div class="form-group">
             				<form:input path="username" class="form-control form-control-lg" placeholder="Email"></form:input>
             			</div>
                   <div class="form-group">
                     <form:input path="first_name" class="form-control form-control-lg" placeholder="First Name"></form:input>
                   </div>
                   <div class="form-group">
                     <form:input path="last_name" class="form-control form-control-lg" placeholder="Last Name"></form:input>
                   </div>
                   <!-- <div class="form-group">
                     <form:input path="dob" class="form-control form-control-lg" placeholder="Last Name"></form:input>
                   </div> -->
                   <div class="form-group">
                     <form:input path="password" type="password" class="form-control form-control-lg" placeholder="Password"></form:input>
                   </div>
                   <div class="form-group">
                     <form:input path="passwordConfirmation" type="password" class="form-control form-control-lg" placeholder="Confirm Password"></form:input>
                   </div>

             			<input type="submit" class="btn btn-outline-light btn-block" value="Get Started" />
                 </form:form>
                 <!--  -->
            
     
                 <!--  -->
               </div>
                <p>Already have an account?  <a class="text-dark" data-toggle="modal" data-target="#loginModal">Sign in</a> </p>

             </div>
           </div>
         </div>
       </div>
     </div>
   </div>

  <!-- LOGIN MODAL -->
  <div class="modal" id="loginModal">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="row">
          <div class="col">
            <div class="card">
              <div class="card-header">
                <h2 class="text-secondary">Login</h2>
                <c:if test="${errorMessage != null}">
                    <c:out value="${errorMessage}"></c:out>
                </c:if>
              </div>
              <div class="card-body">
                <form method="post" action="/login">

                  <div class="form-group">
                    <input class="form-control" placeholder="email/username" id="username" type="text" name="username">
                  </div>
                  <div class="form-group">
                    <input class="form-control" type="password" id="password" name="password">
                  </div>
                  <div class="card-footer">
                    <button class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <input class="btn btn-primary" type="submit" value="Login">
                  </div>
                </form>
              </div>
            </div> 
          </div>
        </div>
      </div>
    </div>
  </div>
</header>

		<script src="/src/js/jquery.min.js"></script>
        <script src="/src/js/popper.min.js"></script>
        <script src="/src/js/bootstrap.min.js"></script>
	</body>
</html>

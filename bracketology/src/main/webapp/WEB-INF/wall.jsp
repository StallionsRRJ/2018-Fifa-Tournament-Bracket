<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Fifa Wall</title>

<link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.1/css/bulma.min.css">
<link type="text/css" rel="stylesheet" href="/css/style.css">
<script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700,900' rel='stylesheet' type='text/css'>
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Superfish -->
	<link rel="stylesheet" href="css/superfish.css">

	<link rel="stylesheet" href="css/style.css">


	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>

</head>
<body>
   <nav class="navbar navbar-expand-sm bg-dark  navbar-dark ">
        <div class="container">
            <a href="index.html" class="navbar-brand">Fifa Wall</a>
            <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a href="/dashboard" class="nav-link">Questions</a>
                    </li>
                    <li class="nav-item">
                        <a href="/home" class="nav-link">Home</a>
                    </li>
                    <li class="nav-item">
                        <a href="#create-head-section" class="nav-link">Create</a>
                    </li>
                    <li class="nav-item">
                        <a href="/logout" class="nav-link">Logout</a>
                    </li>
                    <li class="nav-item">
                        <a href="/user/${cUser.id}" class="nav-link">${cUser.username}</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container " id="homeid">
        <div class="row">
            <div class="col-lg-2 d-none d-lg-block">
                some other stuff may go here
            </div>
            <div class="col-sm-9 col-m-9 col-lg-7  ">
                <div class="card">
                    <div class="card-body" id="headingS1">
                        <h5 class="mb-0">
                            <div href="#collapse1" data-toggle="collapse" data-parent="#accordion" aria-expanded="true" class="">
                                <i class="fa fa-pencil-square-o"></i> Share an image or idea
                            </div>
                        </h5>
                    </div>
                    <!-- post form -->
                    <form:form method="post" action="/wall/post" enctype="multipart/form-data" modelAttribute="newPost">
	                    <div id="collapse1" class="collapse">
	                        <div class="card-body">
	                            <div class="form-group">
                                     <form:textarea path="message" class="form-control" rows="4" placeholder="Write something here"></form:textarea>
                                 </div>
                            </div>
                        </div>
                        <div class="card">
                            <img class="card-img" id="preview" >
                        </div>
	                    <div class="card  bg-light">
                            <div>
                                <input id="files" style="visibility:hidden;" name="file" type="file">
                            </div>
                            <div class="d-flex row-hl ">
                                <div>
                                    <label for="files" class="btn item-hl ml-3 mb-3 btn-info"> <i class="fa fa-camera"></i> Image </label> 

                                </div>
                                <input type="submit" class="btn ml-auto mr-3 mb-3 item-hl btn-secondary " value="Post" />
                            </div>
                      	</div>
                    </form:form>

                </div>

                
            </div>
            <div class="col-sm-3 d-none d-sm-block">
                <p>other stuff goes here</p>
            </div>
        </div>
    </div>
		
	<!-- jQuery -->

    <script type="text/javascript" src="js/commentPreImg.js"></script>

	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Stellar -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- Superfish -->
	<script src="js/hoverIntent.js"></script>
	<script src="js/superfish.js"></script>

	<!-- Main JS (Do not remove) -->
	<script src="js/main.js"></script>
	</body>
</html>
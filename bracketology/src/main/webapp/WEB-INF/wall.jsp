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
<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/all.js" integrity="sha384-xymdQtn1n3lH2wcu0qhcdaOpQwyoarkgLVxC/wZ5q7h9gHtxICrpcaSUfygqZGOe"
    crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp"
    crossorigin="anonymous">

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

    <script
  src="https://code.jquery.com/jquery-2.2.4.js"
  integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
  crossorigin="anonymous"></script>

</head>
<body>
    <nav class="navbar navbar-expand-sm bg-dark  navbar-dark ">
        <div class="container">
            <a href="/home" class="navbar-brand">Fifa Wall</a>
            <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a href="/wall" class="nav-link">Wall</a>
                    </li>
                    <li class="nav-item">
                        <a href="/home" class="nav-link">Home</a>
                    </li>
                    <li class="nav-item ">
                        <form id="logoutForm" method="POST" action="/logout">
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                            <input type="submit" class="nav-link btn-dark" value="Logout" />
                        </form>
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
                                <i class="fa fa-pencil-alt"></i> Share an image or idea
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
            
                <c:forEach items="${posts}" var="post">
                    <div class="card mb-2 text-top" >
                        <div class="d-flex row-hl">
                            <!-- <img id="smallUserImgHome" src="/images/${post.getUser()}" alt="${currentUser}" class="img-fluid item-hl mt-1 rounded-circle mt-2 ml-2">                         -->
                            <div class="item-hl ml-2 mt-1">
                                <c:if test="${post.getUser().getId() == cUser.id}">
                                    <p id="postSmallText"><a class="text-dark" href="/user/${post.getUser().getId()}"> ${post.getUser().getFirst_Name()} </a> </p>
                                    <p id="postSmallname"> <small> <a class="text-secondary" href="/user/${post.getUser().getId()}"> ${post.getUser().getLast_name()}</a> </small> </p>                                </c:if>
                                <c:if test="${post.getUser().getId() != currentUser.id}">
                                    <p id="postSmallText"><a class="text-dark" href="/profile/${post.getUser().getId()}"> ${post.getUser().getFirst_Name()} </a> </p>
                                    <p id="postSmallname"> <small> <a class="text-secondary" href="/profile/${post.getUser().getId()}"> ${post.getUser().getLast_name}</a> </small> </p>
                                </c:if>
                                <p > <small class="text-secondary">${pTime.format(post.getCreatedAt())}  </small> </p>
                            </div>
                            
                        </div>
                        <p class="card-text mr-3 ml-3 mb-3">${post.getMessage()}</p>
                        <c:if test="${post.getPicture() != null}">
                            <img class="card-img-bottom card-img-top img-fluid" src="/images/${post.getPicture()}" alt="${post.getPicture()}">
                        </c:if>
                        <small class="text-muted ml-2"> ${post.likes.size()}  Like * <a href="#collapseComments${post.getId()}" data-toggle="collapse" data-parent="#accordion" aria-expanded="true" class="text-muted">${post.getComments().size()} Comment </a></small>
                        <!-- comments list -->
                        <div id="collapseComments${post.getId()}" class="collapse">
                            <c:forEach items="${post.comments}" var="comment">
                                <div class="d-flex row-hl ml-2">
                                    <div class="item-hl ml-2 mt-1">
                                        <small class="mr-2"> <a class="text-dark" href="/profile/${comment.getUser().getId()}"> <strong>${comment.user.first_name}</strong> </a> </small><br>
                                        <small> <a class="text-muted" href="/profile/${comment.getUser().getId()}"> ${comment.getUser().getLast_name()} </a></small>
                                    </div>
                                    
                                </div>
                                <div class="ml-5">
                                    <small>${comment.comment}</small>
                                </div>  
                            </c:forEach>
                        </div>
                        <!--  -->
                        <div class="card-footer text-muted">
                            <small class="mr-2"><a href="/wall/likePost/${post.id}" class="text-secondary" ><i class="fa fa-thumbs-up"></i> like </a></small>
                            <small class="mr-2"> <a href="#collapseCommentForm${post.getId()}" data-toggle="collapse" data-parent="#accordion" aria-expanded="true" class="text-secondary"> <i class="fa fa-comment"></i> comment </a></small>
                            <small><a href="#" class="text-secondary"> <i class="fa fa-share-square"></i> share </a></small>  
                        </div>
                        
                        <div id="collapseCommentForm${post.getId()}" class="collapse">
                            <!-- comment form -->
                            <div class=" mr-2 ml-2">
                                <form:form action="/comment/add/${post.getId()}" method="post" enctype="multipart/form-data" modelAttribute="newComment">    
                                    <form:input path="comment" type="text" id="name" class="form-control form-control-sm" placeholder="Add a comment..."></form:input>
                                    <div class="d-flex flex-row justify-content-between row-hl mt-2 ">
                                        <label for="fil" class="btn text-info"> <i class="fa fa-camera"></i> </label> 
                                        <input id="fil" style="visibility:hidden;" name="file2" type="file">
                                        <small><input id="smallCommentBtn" class="text-rigth btn btn-info" type="submit" value="Post"></small> 
                                    </div>
                                </form:form>
                            </div>
                        </div>

                    </div>
                </c:forEach>
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
	</body>
</html>
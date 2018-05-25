<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Bracketology</title>
    <link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.1/css/bulma.min.css">
    <link type="text/css" rel="stylesheet" href="/css/style.css">
    <script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
    <!-- Facebook and Twitter integration -->
    <meta property="og:title" content="" />
    <meta property="og:image" content="" />
    <meta property="og:url" content="" />
    <meta property="og:site_name" content="" />
    <meta property="og:description" content="" />
    <meta name="twitter:title" content="" />
    <meta name="twitter:image" content="" />
    <meta name="twitter:url" content="" />
    <meta name="twitter:card" content="" />

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
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
<script src="js/respond.min.js"></script>
<![endif]-->
    <!-- draggin box -->
    <link rel="stylesheet" type="text/css" href="css/bracket/jquery.bracket.min.css" />


</head>

<body>
    <div id="fh5co-wrapper">
        <div id="fh5co-page">
            <div id="fh5co-header">
                <header id="fh5co-header-section">
                    <!-- START #fh5co-menu-wrap -->
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
                                    <li class="nav-item">
                                        <form id="logoutForm" method="POST" action="/logout">
                                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                            <input type="submit" value="Logout" class="nav-link btn-dark" />
                                        </form>
                                    </li>
                                    <li class="nav-item">
                                        <a href="/user/${cUser.id}" class="nav-link">${cUser.username}</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>

                </header>
            </div>
            <div class="container">
                <h1>2018 FIFA WORLD CUP</h1>

                <div class="tournament"></div>

                <div class="demo"></div>
                <form action="/Home/bracketData" method="POST">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                    <input type="hidden" id="teams" name="teamsData" value="text">
                    <input type="hidden" id="results" name="resultsData" value="text">
                    <input type="submit" class="btn btn-primary" value="submit">
                </form>
            </div>
            <footer>
                <div id="footer">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-4 ">
                                <h3 class="section-title">About Us</h3>
                                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia,
                                    there live the blind texts. Separated they live in Bookmarksgrove right at
                                    the coast of the Semantics.</p>
                            </div>
                            <div class="col-md-4 ">
                                <h3 class="section-title">Our Address</h3>
                                <ul class="contact-info">
                                    <li>
                                        <i class="icon-map-marker"></i>198 West 21th Street, Suite 721 New York NY 10016</li>
                                    <li>
                                        <i class="icon-phone"></i>+ 1235 2355 98</li>
                                    <li>
                                        <i class="icon-envelope"></i>
                                        <a href="#">info@yoursite.com</a>
                                    </li>
                                    <li>
                                        <i class="icon-globe2"></i>
                                        <a href="#">www.yoursite.com</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-md-4 ">
                                <h3 class="section-title">Drop us a line</h3>
                                <form class="contact-form">
                                    <div class="form-group">
                                        <label for="name" class="sr-only">Name</label>
                                        <input type="name" class="form-control" id="name" placeholder="Name">
                                    </div>
                                    <div class="form-group">
                                        <label for="email" class="sr-only">Email</label>
                                        <input type="email" class="form-control" id="email" placeholder="Email">
                                    </div>
                                    <div class="form-group">
                                        <label for="message" class="sr-only">Message</label>
                                        <textarea class="form-control" id="message" rows="7" placeholder="Message"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <input type="submit" id="btn-submit" class="btn btn-send-message btn-md" value="Send Message">
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="row copy-right">
                            <div class="col-md-6 col-md-offset-3 text-center">
                                <p class="fh5co-social-icons">
                                    <a href="#">
                                        <i class="icon-twitter2"></i>
                                    </a>
                                    <a href="#">
                                        <i class="icon-facebook2"></i>
                                    </a>
                                    <a href="#">
                                        <i class="icon-instagram"></i>
                                    </a>
                                    <a href="#">
                                        <i class="icon-dribbble2"></i>
                                    </a>
                                    <a href="#">
                                        <i class="icon-youtube"></i>
                                    </a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>

    <!-- jQuery Easing -->
    <!--  -->
    <script type="text/javascript" src="js/bracket/jquery-1.6.2.min.js"></script>
    <script type="text/javascript" src="js/bracket/jquery.bracket.min.js"></script>
    <script>
        var minimalData = {
            teams: [
                ["Russia", "Saudi Arabia"],
                ["Portugal", "Spain"],
                ["France", "Australia"],
                ["Argentina", "Iceland"],
                ["Brazil", "Switzerland"],
                ["Germany", "Mexico"],
                ["Belgium", "Panama"],
                ["Poland", "Senegal"]
            ],
            results: [
                [[1, 0], [null, null], [null, null], [null, null], [1, 0], [null, null], [null, null], [null, null]],
                [[null, null], [null, null], [null, null], [null, null]],
                [[null, null], [null, null]],
                [[null, null], [null, null]]
            ]
        };

        function saveFn(data, userData) {
            console.log(JSON.stringify(data.teams))
            document.getElementById('teams').value = JSON.stringify(data.teams)
            document.getElementById('results').value = JSON.stringify(data.results)
        }
        $(function () {
            var container = $(' .demo')
            container.bracket({
                init: minimalData,
                save: saveFn,
                userData: "http://myapi"
            })
            /* You can also inquiry the current data */
            var data = container.bracket('data')
            // $('.demo').text(jQuery.toJSON(data))
        })
    </script>
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
    <!-- draggable -->
    
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    
    <!-- Main JS (Do not remove) -->
    <script src="js/main.js"></script>



</body>

</html>
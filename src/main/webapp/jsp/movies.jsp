<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    if (session.getAttribute("email") == null) {
        request.setAttribute("admin-movie-upload", "");
        request.setAttribute("admin-description", "");
        request.setAttribute("admin-banner", "");
        request.setAttribute("userAccess", "");
        request.setAttribute("loginPageStatus", "Log in");
        request.setAttribute("BrowseAccess", "");
    }
    if (session.getAttribute("email") != null) {
        request.setAttribute("admin-movie-upload", "Movie Upload");
        request.setAttribute("admin-description", "Description Adder");
        request.setAttribute("admin-banner", "Banner Upload");
        request.setAttribute("userAccess", "User Page");
        request.setAttribute("loginPageStatus", "Log out");
        request.setAttribute("BrowseAccess", "Browse");
    }
%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <link rel="canonical" href="www.filmflix.com/movies.jsp"/>
    <meta name="robots" content="index, follow"/>
    <link rel="shortcut icon" type="image/png" href="../img/favicon.jpg">

    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css?890">
    <link rel="stylesheet" type="text/css" href="../css/style.css?8993">
    <link rel="stylesheet" type="text/css" href="../css/animate.css?3189">
    <link rel="stylesheet" type="text/css" href="../css/all.min.css">
    <link rel="stylesheet" type="text/css" href="../css/ionicons.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lobster&display=swap&subset=latin,latin-ext' rel='stylesheet'
          type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Lato:100,300,400,700,900&display=swap&subset=latin,latin-ext'
          rel='stylesheet' type='text/css'>
    <title>movies</title>


    <!-- Analytics -->

    <!-- Analytics END -->

</head>
<body>

<!-- Preloader -->
<div id="page-loading-blocs-notifaction" class="page-preloader"></div>
<!-- Preloader END -->


<!-- Main container -->
<div class="page-container">

    <!-- navbar -->
    <div class="bloc none full-width-bloc animated fadeInDown b-parallax l-bloc b-divider"
         data-appear-anim-style="fadeInDown" id="navbar">
        <div class="container bloc-sm bloc-no-padding-lg">
            <div class="row">
                <div class="col">
                    <nav class="navbar navbar-light row navbar-expand-md" role="navigation">
                        <a class="navbar-brand animated zoomIn animSpeedLazy animDelay02 link-style" href="../index.jsp"
                           data-appear-anim-style="zoomIn"><img src="../img/Header_logo.jpg" alt="logo" class="mr-2"/>FilmFlix</a>
                        <button id="nav-toggle" type="button"
                                class="ui-navbar-toggler navbar-toggler border-0 p-0 ml-auto mr-md-0 nav-togggle menu-icon-thick-bars"
                                data-toggle="collapse" data-target=".navbar-43698" aria-expanded="false"
                                aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse navbar-43698 special-dropdown-nav">
                            <ul class="site-navigation nav navbar-nav ml-auto">
                                <li class="nav-item">
                                    <a href="movie_uploader.jsp"
                                       class="nav-link"><%= request.getAttribute("admin-movie-upload")%>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="description_adder.jsp"
                                       class="nav-link"><%= request.getAttribute("admin-description")%>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="movie-banner-uploader.jsp"
                                       class="a-btn nav-link"><%= request.getAttribute("admin-banner")%>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="browse-randomized"
                                       class="nav-link a-btn"><%= request.getAttribute("BrowseAccess")%>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="user_page_and_subscription.jsp"
                                       class="nav-link a-btn"><%= request.getAttribute("userAccess")%>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="login.jsp"
                                       class="nav-link a-btn"><%= request.getAttribute("loginPageStatus")%>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- navbar END -->

    <!-- movie -->
    <div class="bloc l-bloc" id="movie">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col">
                    <div class="embed-responsive embed-responsive-16by9">
                        <video controls class="embed-responsive-item lazyload" data-src="../vid/inception-trailer.mp4">
                            Your browser does not support HTML5 video.
                        </video>
                    </div>
                    <div class="row">
                        <div class="col-lg-9">
                            <div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="text-center">
                                <a href="#"
                                   class="btn btn-d object-hidden btn-lg btn-block btn-hide animated bounceIn animDelay1"
                                   id="hide-btn" data-toggle-visibility="more-details-box,more-btn,hide-btn"
                                   data-appear-anim-style="bounceIn">Hide Details</a><a href="#"
                                                                                        class="btn btn-d btn-lg btn-block"
                                                                                        data-toggle-visibility="more-details-box,more-btn,hide-btn"
                                                                                        id="more-btn">More Details</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="divider-h">
                        <span class="divider"></span>
                    </div>
                </div>
            </div>
            <div class="row object-hidden animated puffIn" id="more-details-box" data-appear-anim-style="puffIn">
                <div class="col">
                    <h3 class="mg-md">
                        <span class="titile-icon-movie fa fa-film"></span>Movie Title here ok
                    </h3>
                    <p>
                        Description will be here<br>ok ?
                    </p>
                </div>
            </div>
        </div>
    </div>
    <!-- movie END -->

    <!-- ScrollToTop Button -->
    <a class="bloc-button btn btn-d scrollToTop" onclick="scrollToTarget('1',this)">
        <svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="0 0 32 32">
            <path class="scroll-to-top-btn-icon" d="M30,22.656l-14-13-14,13"/>
        </svg>
    </a>
    <!-- ScrollToTop Button END-->


    <!-- footer -->
    <div class="bloc l-bloc" id="footer">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <h4 class="mg-md text-sm-left text-center">
                        About
                    </h4><a href="about.jsp" class="a-btn a-block footer-link">The Team</a><a href="about.jsp"
                                                                                              class="a-btn a-block footer-link">Contact
                    Us</a>
                </div>
                <div class="col-md-3 col-sm-6">
                    <h4 class="mg-md text-sm-left text-center">
                        Get the app
                    </h4><a href="get-the-app.jsp" class="a-btn a-block footer-link">Android</a><a
                        href="get-the-app.jsp" class="a-btn a-block footer-link">iOS</a>
                </div>
                <div class="col-md-3 col-sm-6">
                    <h4 class="mg-md text-sm-left text-center">
                        Follow Us
                    </h4><a href="../index.jsp" class="a-btn a-block footer-link">Twitter</a><a href="../index.jsp"
                                                                                                class="a-btn a-block footer-link">Facebook</a>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="row">
                        <div class="col">
                            <a href="about.jsp" class="a-btn a-block connect-to-about-page">Connect</a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6 col-sm-2 col offset-sm-0">
                            <div class="text-center">
                                <a href="https://github.com/Flashminat0" target="_blank"><span
                                        class="icon-md ion ion-social-github git-icon"></span></a>
                            </div>
                        </div>
                        <div class="col-6 col-sm-2">
                            <div class="text-center">
                                <a href="https://github.com/HDHUB" target="_blank"><span
                                        class="icon-md ion ion-social-octocat git-icon"></span></a>
                            </div>
                        </div>
                        <div class="col-6 col-sm-2">
                            <div class="text-center">
                                <a href="https://github.com/swee76" target="_blank"><span
                                        class="icon-md ion ion-social-github-outline git-icon"></span></a>
                            </div>
                        </div>
                        <div class="col-6 col-sm-2">
                            <div class="text-center">
                                <a href="https://github.com/Tharushi1212" target="_blank"><span
                                        class="icon-md ion ion-social-octocat git-icon"></span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- footer END -->

</div>
<!-- Main container END -->


<!-- Additional JS -->
<script src="../js/jquery-3.5.1.js?7799"></script>
<script src="../js/bootstrap.bundle.js?766"></script>
<script src="../js/blocs.js?7167"></script>
<script src="../js/lazysizes.min.js" defer></script>
<script src="../js/waves.js?9458"></script>
<script src="../js/particles.min.js?9503"></script><!-- Additional JS END -->


</body>
</html>

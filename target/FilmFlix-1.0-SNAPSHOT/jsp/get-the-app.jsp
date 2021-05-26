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
    <link rel="canonical" href="www.filmflix.com/get-the-app.jsp"/>
    <meta name="robots" content="index, follow"/>
    <link rel="shortcut icon" type="image/png" href="../img/favicon.jpg">

    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css?9127">
    <link rel="stylesheet" type="text/css" href="../css/style.css?2487">
    <link rel="stylesheet" type="text/css" href="../css/animate.css?5632">
    <link rel="stylesheet" type="text/css" href="../css/all.min.css">
    <link rel="stylesheet" type="text/css" href="../css/ionicons.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lobster&display=swap&subset=latin,latin-ext' rel='stylesheet'
          type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Lato:100,300,400,700,900&display=swap&subset=latin,latin-ext'
          rel='stylesheet' type='text/css'>
    <title>get-the-app</title>


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

    <!-- bloc-19 -->
    <div class="bloc l-bloc" id="bloc-19">
        <div class="bloc-shape-divider bloc-divider-bottom">
            <svg class="svg-divider bloc-divider-b-fill" fill-rule="evenodd" preserveAspectRatio="none"
                 viewBox="0 0 1000 250">
                <path style="opacity:0.5" d="M1000,0V250H0v-1Z"></path>
                <path d="M1000,60V250H0v-1Z"></path>
            </svg>
        </div>
        <div class="container bloc-lg bloc-sm-lg">
            <div class="row">
                <div class="col-md-6 col-lg-5 order-md-1">
                    <div class="mx-auto d-block blocsapp-device blocsapp-device-iphone6 iphone6-silver animated zoomInRight"
                         data-appear-anim-style="zoomInRight">
                        <img src="../img/lazyload-ph.png" data-src="../img/devices/iphone-screen.png"
                             class="img-fluid animated vanishIn none animDelay02 lazyload" alt="iphone screen"
                             data-appear-anim-style="vanishIn"/>
                    </div>
                </div>
                <div class="align-self-center col-md-6 col-lg-7">
                    <h2 class="mg-md">
                        FilmFlix App
                    </h2>
                    <h3 class="mg-md h3-“wait-what--style">
                        “ Wait what ?"
                    </h3>
                    <p>
                        sad to say we dont have the app for our little website yet…..<br><br>but as I know our next year
                        project is to build a mobile app. So I will hope our lecturers give us to make the FilmFlix app&nbsp;<br>
                    </p><a href="#" class="btn btn-d btn-lg btn-block animSpeedLazy animDelay06 animated fadeIn"
                           data-placement="bottom" data-toggle="tooltip" title="Let's see on next semester"
                           data-appear-anim-style="fadeIn">Comming soon</a>
                </div>
            </div>
        </div>
    </div>
    <!-- bloc-19 END -->

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
<script src="../js/waves.js?3343"></script>
<script src="../js/particles.min.js?778"></script><!-- Additional JS END -->


</body>
</html>

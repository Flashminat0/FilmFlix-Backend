<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    if (session.getAttribute("email") == null) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/login.jsp");
        dispatcher.forward(request, response);
    }

    String bannerPath = "../img/banner/";
    if (request.getAttribute("bannerlocation") == null) {
        request.setAttribute("showthisbanner", "../img/placeholder.png");
    } else {
        request.setAttribute("showthisbanner", bannerPath + request.getAttribute("bannerlocation"));
    }

    if (request.getAttribute("movieid") == null) {
        request.setAttribute("movieid", "");
    }
    if (request.getAttribute("moviename") == null) {
        request.setAttribute("moviename", "");
    }
    if (request.getAttribute("bannerlocation") == null) {
        request.setAttribute("bannerlocation", "");
    }
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
    <link rel="canonical" href="www.filmflix.com/movie-banner-uploader.jsp"/>
    <meta name="robots" content="index, follow"/>
    <link rel="shortcut icon" type="image/png" href="../img/favicon.jpg">

    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css?290">
    <link rel="stylesheet" type="text/css" href="../css/style.css?1757">
    <link rel="stylesheet" type="text/css" href="../css/animate.css?4921">
    <link rel="stylesheet" type="text/css" href="../css/all.min.css">
    <link rel="stylesheet" type="text/css" href="../css/ionicons.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lobster&display=swap&subset=latin,latin-ext' rel='stylesheet'
          type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Lato:100,300,400,700,900&display=swap&subset=latin,latin-ext'
          rel='stylesheet' type='text/css'>
    <title>movie-banner-uploader</title>


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

    <!-- banner-welcome -->
    <div class="bloc l-bloc" id="banner-welcome">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col">
                    <h1 class="mg-md animated lightSpeedIn" data-appear-anim-style="lightSpeedIn">
                        Banner Configuration
                    </h1>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="row">
                        <div class="col none animated bounce animDelay08" data-appear-anim-style="bounce">
                            <a href="#" class="btn btn-d btn-lg btn-block none animated fadeInLeft"
                               id="create-new-entry-btn" data-toggle-visibility="banner-welcome,text-field-box,create"
                               data-appear-anim-style="fadeInLeft">Create New Entry</a>
                        </div>
                        <div class="col">
                            <form id="banner-search-form" data-form-type="blocs-form" action="bannerSearch"
                                  method="GET">
                                <div class="form-group">
                                    <input id="search_movie_id_banner" name="search_movie_id_banner"
                                           class="form-control animated bounceInRight"
                                           required placeholder="🔍 Search movie ID"
                                           data-appear-anim-style="bounceInRight"/>
                                    <div>
                                        <div class="row search-box-btn animated vanishIn animDelay04"
                                             data-appear-anim-style="vanishIn">
                                            <div class="col">
                                                <button class="btn btn-d btn-lg btn-37-style btn-block bloc-button animDelay02 animated bounceInUp"
                                                        id="submit-search-btn" name="submit-search-btn" type="submit"
                                                        data-appear-anim-style="bounceInUp">
                                                    Submit
                                                </button>
                                            </div>
                                            <div class="col">
                                                <a href="#"
                                                   class="btn btn-d btn-lg btn-38-style float-lg-none animDelay04 animated bounceInUp"
                                                   data-toggle-visibility="banner-welcome,text-field-box,edit-or-delete"
                                                   data-appear-anim-style="bounceInUp">Edit / Delete</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- banner-welcome END -->

    <!-- text-field-box -->
    <div class="bloc l-bloc object-hidden" id="text-field-box">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col">
                    <h1 class="mg-md animated lightSpeedIn" data-appear-anim-style="lightSpeedIn">
                        Edit Details&nbsp;
                    </h1>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="row">
                        <div class="col-lg-5 animated puffIn" data-appear-anim-style="puffIn">
                            <img src="../img/lazyload-ph.png" data-src="<%= request.getAttribute("showthisbanner")%>"
                                 class="img-fluid mx-auto d-block img-bloc-18-style animated bounceInUp lazyload"
                                 alt="placeholder image" data-appear-anim-style="bounceInUp"/><a
                                href="movie-banner-uploader.jsp"
                                class="btn btn-d btn-lg cancel-btn btn-block animated vanishIn animDelay04"
                                data-appear-anim-style="vanishIn">Cancel</a>
                        </div>
                        <div class="col offset-lg--1">
                            <form id="poster-select-form" data-form-type="blocs-form" class="animated fadeInRight"
                                  action="bannerAction" method="POST" data-appear-anim-style="fadeInRight">
                                <div class="form-group">
                                    <label>
                                        Movie ID
                                    </label>
                                    <input id="movieid" name="movieid"
                                           class="form-control animated bounceInRight animDelay04" required
                                           data-appear-anim-style="bounceInRight"
                                           placeholder=<%= request.getAttribute("movieid") %>>
                                </div>
                                <div class="form-group">
                                    <label>
                                        Movie Name
                                    </label>
                                    <input id="moviename" name="moviename"
                                           class="form-control animated bounceInRight animDelay08" required
                                           data-appear-anim-style="bounceInRight"
                                           placeholder=<%= request.getAttribute("moviename") %>>
                                </div>
                                <div class="form-group">
                                    <label>
                                        Movie Banner File Name
                                    </label>
                                    <input id="bannerlocation" name="bannerlocation"
                                           class="form-control animated bounceInRight animDelay1" required
                                           data-appear-anim-style="bounceInRight"
                                           placeholder=<%= request.getAttribute("bannerlocation") %>>
                                    <div class="object-hidden" id="edit-or-delete">
                                        <div class="row buttons-below-banner-submit animated bounceInUp animDelay1"
                                             data-appear-anim-style="bounceInUp">
                                            <div class="col">
                                                <button class="bloc-button btn btn-d btn-lg btn-36-style btn-block animated vanishIn animDelay1"
                                                        type="submit" id="edit-btn" name="edit-btn"
                                                        data-appear-anim-style="vanishIn">
                                                    Edit
                                                </button>
                                            </div>
                                            <div class="col">
                                                <button class="bloc-button btn btn-d btn-lg btn-36-style btn-block animated vanishIn animDelay1"
                                                        type="submit" id="delete-btn" name="delete-btn"
                                                        data-appear-anim-style="vanishIn">
                                                    Delete
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="object-hidden" id="create">
                                        <div class="row buttons-below-banner-submit">
                                            <div class="col animated bounceInUp" data-appear-anim-style="bounceInUp">
                                                <button class="bloc-button btn btn-d btn-lg btn-36-style btn-block animated vanishIn animDelay1"
                                                        type="submit" id="create-btn" name="create-btn"
                                                        data-appear-anim-style="vanishIn">
                                                    Create
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- text-field-box END -->

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
<script src="../js/jqBootstrapValidation.js"></script>
<script src="../js/formHandler.js?9414"></script>
<script src="../js/lazysizes.min.js" defer></script>
<script src="../js/waves.js?9921"></script>
<script src="../js/particles.min.js?5151"></script><!-- Additional JS END -->


</body>
</html>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    if (session.getAttribute("email") == null) {
        request.setAttribute("loginPageStatus", "Log in");
        request.setAttribute("BrowseAccess", "");
        request.setAttribute("userpage", "");
    }
    if (session.getAttribute("email") != null) {
        request.setAttribute("loginPageStatus", "Log out");
        request.setAttribute("BrowseAccess", "Browse");
        request.setAttribute("userpage", "User Page");
    }

%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <link rel="canonical" href="www.filmflix.com/browse.jsp"/>
    <meta name="robots" content="index, follow"/>
    <link rel="shortcut icon" type="image/png" href="../img/favicon.jpg">

    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css?8447">
    <link rel="stylesheet" type="text/css" href="../css/style.css?8058">
    <link rel="stylesheet" type="text/css" href="../css/animate.css?3412">
    <link rel="stylesheet" type="text/css" href="../css/all.min.css">
    <link rel="stylesheet" type="text/css" href="../css/ionicons.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lobster&display=swap&subset=latin,latin-ext' rel='stylesheet'
          type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Lato:100,300,400,700,900&display=swap&subset=latin,latin-ext'
          rel='stylesheet' type='text/css'>
    <title>browse</title>


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
                                    <a href="movie_uploader.jsp" class="nav-link">movie_uploader</a>
                                </li>
                                <li class="nav-item">
                                    <a href="description_adder.jsp" class="nav-link">description_adder</a>
                                </li>
                                <li class="nav-item">
                                    <a href="user_page_and_subscription.jsp" class="nav-link a-btn"><%= request.getAttribute("userpage")%></a>
                                </li>
                                <li class="nav-item">
                                    <a href="movie-banner-uploader.jsp" class="a-btn nav-link">movie-banner-uploader</a>
                                </li>
                                <li class="nav-item">
                                    <a href="browse-randomized" class="nav-link a-btn">Browse</a>
                                </li>
                                <li class="nav-item">
                                    <a href="login.jsp" class="nav-link a-btn"><%= request.getAttribute("loginPageStatus")%></a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- navbar END -->

    <!-- slideshow -->
    <div class="bloc l-bloc full-width-bloc" id="slideshow">
        <div class="container bloc-no-padding">
            <div class="row voffset-clear-xs no-gutters">
                <div class="col-12">
                    <div id="slideshow-browse-page" class="carousel slide animated fadeIn" data-ride="carousel"
                         data-appear-anim-style="fadeIn">
                        <ul class="carousel-indicators hide-indicators list-horizontal-layout list-unstyled">
                            <li data-target="#slideshow-browse-page" data-slide-to="0" class="active">
                            </li>
                            <li data-target="#slideshow-browse-page" data-slide-to="1">
                            </li>
                            <li data-target="#slideshow-browse-page" data-slide-to="2">
                            </li>
                            <li data-target="#slideshow-browse-page" data-slide-to="3">
                            </li>
                            <li data-target="#slideshow-browse-page" data-slide-to="4">
                            </li>
                        </ul>
                        <div class="carousel-inner" role="listbox">
                            <div class="carousel-item active">
                                <img class="d-inline-block w-100 size-slideshow lazyload" alt="slide-1"
                                     src="../img/lazyload-ph.png" data-src="../img/slideshow/naruto-banner.jpg"/>
                                <div class="carousel-caption">
                                    <a href="../index.jsp" class="btn btn-rd banner-add-icon btn-wire btn-lg"
                                       data-placement="left" data-toggle="tooltip" title="Add to Watchlist"
                                       id="slide-1-add"><span class="icon-spacer icon-inside-banner fa fa-plus"></span></a><a
                                        href="movies.jsp" class="btn btn-d btn-lg float-lg-none play-button"
                                        id="slide-1-btn">Play</a>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img alt="slide-2" class="d-inline-block w-100 size-slideshow lazyload"
                                     src="../img/lazyload-ph.png" data-src="../img/slideshow/mrrobot-banner.jpg"/>
                                <div class="carousel-caption">
                                    <a href="../index.jsp" class="btn btn-lg btn-12-style btn-wire banner-add-icon"
                                       data-placement="left" data-toggle="tooltip" title="Add to Watchlist"
                                       id="slide-2-add"><span class="fa fa-plus icon-inside-banner"></span></a><a
                                        href="movies.jsp" class="btn btn-d btn-lg play-button" id="slide-2-btn">Play</a>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img class="d-inline-block w-100 size-slideshow lazyload" alt="slide-3"
                                     src="../img/lazyload-ph.png" data-src="../img/slideshow/dark-banner.jpg"/>
                                <div class="carousel-caption">
                                    <a href="../index.jsp" class="btn btn-lg btn-14-style btn-wire banner-add-icon"
                                       id="slide-3-add"><span class="fa fa-plus icon-inside-banner"></span></a><a
                                        href="movies.jsp" class="btn btn-d btn-lg play-button" id="slide-3-btn">Play</a>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img class="d-inline-block w-100 size-slideshow lazyload" src="../img/lazyload-ph.png"
                                     data-src="../img/slideshow/endgame-banner.jpg" alt="slide-4"/>
                                <div class="carousel-caption">
                                    <a href="../index.jsp" class="btn btn-lg btn-wire btn-bloc-10-style banner-add-icon"
                                       data-placement="left" data-toggle="tooltip" title="Add to Watchlist"
                                       id="slide-4-add"><span class="fa fa-plus icon-inside-banner"></span></a><a
                                        href="movies.jsp" class="btn btn-d btn-lg play-button" id="slide-4-btn">Play</a>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img class="d-inline-block w-100 size-slideshow lazyload" src="../img/lazyload-ph.png"
                                     data-src="../img/slideshow/family-guy-banner.jpg" alt="slide-5"/>
                                <div class="carousel-caption">
                                    <a href="../index.jsp" class="btn btn-lg btn-wire btn-18-style banner-add-icon"
                                       data-placement="left" data-toggle="tooltip" title="Add to Watchlist"
                                       id="slide-5-add"><span class="fa fa-plus icon-inside-banner"></span></a><a
                                        href="movies.jsp" class="btn btn-d btn-lg play-button" id="slide-5-btn">Play</a>
                                </div>
                            </div>
                        </div>
                        <a class="carousel-nav-controls carousel-control-prev" href="#slideshow-browse-page"
                           role="button" data-slide="prev">
                            <svg width="26" height="26" viewBox="0 0 32 32">
                                <path class="carousel-nav-icon carousel-prev-icon" d="M22,2L9,16,22,30"></path>
                            </svg>
                            <span class="sr-only">Previous</span></a><a
                            class="carousel-nav-controls carousel-control-next" href="#slideshow-browse-page"
                            role="button" data-slide="next">
                        <svg width="26" height="26" viewBox="0 0 32 32">
                            <path class="carousel-nav-icon carousel-next-icon" d="M10.344,2l13,14-13,14"></path>
                        </svg>
                        <span class="sr-only">Next</span></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- slideshow END -->

    <!-- featured -->
    <div class="bloc l-bloc" id="featured">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col">
                    <h1 class="mg-md animated lightSpeedIn" data-appear-anim-style="lightSpeedIn">
                        Featured Film Today
                    </h1>
                    <div>
                        <div class="row">
                            <div class="col animated bounceInUp" data-appear-anim-style="bounceInUp">
                                <h3 class="mg-md">
                                    FILM NAME 1
                                </h3>
                                <p>
                                    this film is fire pls nigga trust me watch this shit
                                </p>
                            </div>
                            <div class="col">
                                <div>
                                    <div data-tilt=""
                                         class="img-hover-tilt-container animated vanishIn none animDelay02"
                                         data-tilt-glare="true" data-tilt-maxglare=".5" used-anim-style="vanishIn"
                                         data-appear-anim-style="vanishIn" used-anim-delay="animDelay02">
                                        <img class="hover-tilt-img-item img-fluid lazyload" src="../img/lazyload-ph.png"
                                             data-src="<%= request.getAttribute("BannerImage5") %>"
                                             alt="placeholder image">
                                        <h3 class="hover-tilt-label" style="font-family: Lato; font-weight: 900;">Film
                                            name</h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- featured END -->

    <!-- recommend -->
    <div class="bloc l-bloc" id="recommend">
        <div class="bloc-shape-divider bloc-divider-bottom">
            <svg class="svg-divider bloc-divider-b-style" fill-rule="evenodd" preserveAspectRatio="none"
                 viewBox="0 0 1000 250">
                <path style="opacity:0.5" d="M1000,0V250H0v-1Z"></path>
                <path d="M1000,60V250H0v-1Z"></path>
            </svg>
        </div>
        <div class="container bloc-lg">
            <div class="row">
                <div class="col">
                    <h2 class="mg-md text-lg-left recommend-header animated bounceInRight h2-recommend-style"
                        data-appear-anim-style="bounceInRight">
                        Recommendations
                    </h2>
                    <div>
                        <div class="row row-style">
                            <div class="col">
                                <a href="movies.jsp"><img src="../img/lazyload-ph.png"
                                                          data-src="<%= request.getAttribute("BannerImage1") %>"
                                                          class="img-fluid mx-auto d-block animDelay08 animated bounceInLeft lazyload"
                                                          alt="placeholder image" data-appear-anim-style="bounceInLeft"
                                                          id="recommend-1"/></a>
                            </div>
                            <div class="col">
                                <a href="movies.jsp"><img src="../img/lazyload-ph.png"
                                                          data-src="<%= request.getAttribute("BannerImage2") %>"
                                                          class="img-fluid mx-auto d-block animDelay06 animated bounceInLeft lazyload"
                                                          alt="placeholder image" data-appear-anim-style="bounceInLeft"
                                                          id="recommend-2"/></a>
                            </div>
                            <div class="col">
                                <a href="movies.jsp"><img src="../img/lazyload-ph.png"
                                                          data-src="<%= request.getAttribute("BannerImage3") %>"
                                                          class="img-fluid mx-auto d-block animDelay04 animated bounceInLeft lazyload"
                                                          alt="placeholder image" data-appear-anim-style="bounceInLeft"
                                                          id="recommend-3"/></a>
                            </div>
                            <div class="col">
                                <a href="movies.jsp"><img src="../img/lazyload-ph.png"
                                                          data-src="<%= request.getAttribute("BannerImage4") %>"
                                                          class="img-fluid mx-auto d-block animDelay02 animated bounceInLeft lazyload"
                                                          alt="placeholder image" data-appear-anim-style="bounceInLeft"
                                                          id="recommend-4"/></a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-8" id="z7">
                                <span class="empty-column"></span>
                            </div>
                            <div class="col">
                                <a href="movies.jsp"><img src="../img/lazyload-ph.png"
                                                          data-src="<%= request.getAttribute("BannerImage5") %>"
                                                          class="img-fluid img-last-container img-bloc-11-style none pulse-hvr animated bounceInDown mx-auto d-block lazyload"
                                                          alt="placeholder image" data-appear-anim-style="bounceInDown"
                                                          id="recommend-star"/></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- recommend END -->

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
<script src="../js/waves.js?3156"></script>
<script src="../js/particles.min.js?1706"></script>
<script src="../js/tilt.jquery.js?3732"></script><!-- Additional JS END -->


</body>
</html>

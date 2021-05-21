<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    if (session == null){
        System.out.println("ado no");
    }
%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <link rel="canonical" href="www.filmflix.com/user_page_and_subscription.jsp"/>
    <meta name="robots" content="index, follow"/>
    <link rel="shortcut icon" type="image/png" href="../img/favicon.jpg">

    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css?7362">
    <link rel="stylesheet" type="text/css" href="../css/style.css?3077">
    <link rel="stylesheet" type="text/css" href="../css/animate.css?1189">
    <link rel="stylesheet" type="text/css" href="../css/all.min.css">
    <link rel="stylesheet" type="text/css" href="../css/ionicons.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lobster&display=swap&subset=latin,latin-ext' rel='stylesheet'
          type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Lato:100,300,400,700,900&display=swap&subset=latin,latin-ext'
          rel='stylesheet' type='text/css'>
    <title>user_page_and_subscription</title>


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
                                    <a href="user_page_and_subscription.jsp" class="nav-link a-btn">user page</a>
                                </li>
                                <li class="nav-item">
                                    <a href="movie-banner-uploader.jsp" class="a-btn nav-link">movie-banner-uploader</a>
                                </li>
                                <li class="nav-item">
                                    <a href="browse-randomized" class="nav-link a-btn">Browse</a>
                                </li>
                                <li class="nav-item">
                                    <a href="login.jsp" class="nav-link a-btn">Login</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- navbar END -->

    <!-- user-details -->
    <div class="bloc l-bloc bloc-bg-texture texture-fabric" id="user-details">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col-sm-4 col animated vanishIn" data-appear-anim-style="vanishIn">
                    <img src="../img/lazyload-ph.png" data-src="../img/Header_logo.jpg"
                         class="img-fluid rounded-circle mx-auto d-block animated bounceIn animDelay02 lazyload"
                         alt="placeholder user" data-appear-anim-style="bounceIn"/>
                </div>
                <div class="col-sm-8 col">
                    <form id="update-details-form" data-form-type="blocs-form" action="update-details-form"
                          method="POST">
                        <div class="form-group animated fadeIn animDelay04" data-appear-anim-style="fadeIn">
                            <label>
                                name
                            </label>
                            <input id="name" class="form-control animated fadeIn" required  placeholder="<%= session.getAttribute("name") %>"
                                   data-appear-anim-style="fadeIn" name="user-name"/>
                        </div>
                        <div class="form-group animated fadeIn animDelay06" data-appear-anim-style="fadeIn">
                            <label>
                                email
                            </label>
                            <input id="email" class="form-control" type="email" name="user-email"
                                   data-error-validation-msg="Not a valid email address" required  placeholder="<%= session.getAttribute("email") %>"/>
                        </div>
                        <div class="form-group animated fadeIn animDelay08" data-appear-anim-style="fadeIn">
                            <label>
                                password
                            </label>
                            <input id="password" class="form-control" type="password" required name="user-password" placeholder="<%= session.getAttribute("password") %>"/>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input animated fadeIn animDelay1" type="checkbox" id="optin"
                                   data-validation-minchecked-message="You need to verify before you submit"
                                   data-validation-minchecked-minchecked="1" name="optin"
                                   data-appear-anim-style="fadeIn"/>
                            <label class="form-check-label animated fadeIn animDelay08" data-appear-anim-style="fadeIn">
                                These are true
                            </label>
                        </div>
                        <button class="bloc-button btn btn-d btn-21-style animated vanishIn animDelay08 btn-lg"
                                type="submit" data-appear-anim-style="vanishIn" id="user-edit-btn"  name="user-edit-btn">
                            Edit
                        </button>
                        <button class="bloc-button btn btn-d btn-lg btn-21-style animated vanishIn animDelay08 float-lg-right"
                                type="submit" data-appear-anim-style="vanishIn" id="user-delete-btn"  name="user-delete-btn">
                            Delete
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- user-details END -->

    <!-- subscribe-hiding-part -->
    <div class="bloc l-bloc bloc-bg-texture texture-fabric" id="subscribe-hiding-part">
        <div class="container bloc-lg">
            <div class="row scroll-fx-in-fade animated puffIn" data-appear-anim-style="puffIn">
                <div class="col-lg-4 offset-lg-4 col-sm-6 offset-sm-3 col">
                    <h2 class="mg-md text-center h2-subscription-style">
                        Subscription
                    </h2>
                    <h4 class="mg-md text-center">
                        Do you want to unlock all features of this website?&nbsp;
                    </h4><a href="#" class="btn btn-d btn-xl btn-block"
                            data-toggle-visibility="user-page-buy,subscribe-hiding-part">Check out our plans</a>
                </div>
            </div>
        </div>
    </div>
    <!-- subscribe-hiding-part END -->

    <!-- user-page-buy -->
    <div class="bloc l-bloc object-hidden bloc-bg-texture texture-fabric" id="user-page-buy">
        <div class="container bloc-no-padding-lg">
            <div class="row none animated zoomInDown" data-appear-anim-style="zoomInDown">
                <div class="col-md-4 col-lg-3 offset-lg-1 align-self-center">
                    <div class="card animated bounceInLeft" data-appear-anim-style="bounceInLeft">
                        <div class="card-header">
                            <h3 class="mg-clear text-center title-mov-user-buy">
                                Basic
                            </h3>
                        </div>
                        <img src="../img/lazyload-ph.png" data-src="../img/basic-banner.jpg"
                             class="img-fluid mx-auto d-block lazyload" alt="placeholder image"/>
                        <div class="card-body">
                            <ul class="list-unstyled">
                                <li>
                                    <p class="text-center desc-font">
                                        Unlimited Access
                                    </p>
                                    <p class="text-center desc-font">
                                        1 Screen
                                    </p>
                                </li>
                                <li>
                                    <p class="text-center desc-font">
                                        720p quality
                                    </p>
                                </li>
                                <li>
                                    <p class="text-center desc-font">
                                        No downloads
                                    </p>
                                </li>
                                <li>
                                </li>
                            </ul>
                        </div>
                        <div class="card-footer">
                            <a href="payment.jsp" class="btn btn-d btn-lg buy-btn btn-block" id="user-basic-buy-btn">LKR
                                1000/=</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mt-3 mt-md-0 col-lg-4">
                    <div class="card animated bounceInUp" data-appear-anim-style="bounceInUp">
                        <div class="card-header">
                            <h3 class="mg-clear text-center title-mov-user-buy">
                                Standard
                            </h3>
                        </div>
                        <img src="../img/lazyload-ph.png" data-src="../img/standard-banner.jpg"
                             class="img-fluid mx-auto d-block lazyload" alt="placeholder image"/>
                        <div class="card-body">
                            <ul class="list-unstyled">
                                <li>
                                    <p class="text-center desc-font">
                                        Unlimited Access
                                    </p>
                                </li>
                                <li>
                                    <p class="text-center desc-font">
                                        2 Screens
                                    </p>
                                </li>
                                <li>
                                    <p class="text-center desc-font">
                                        1080p quality
                                    </p>
                                </li>
                                <li>
                                    <p class="text-center desc-font">
                                        Downloads on one Device
                                    </p>
                                </li>
                            </ul>
                        </div>
                        <div class="card-footer">
                            <a href="payment.jsp" class="btn btn-d btn-lg btn-block buy-btn" id="user-standard-buy-btn">LKR
                                2000/=</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mt-3 mt-md-0 col-lg-3 align-self-center">
                    <div class="card animated bounceInRight" data-appear-anim-style="bounceInRight">
                        <div class="card-header">
                            <h3 class="mg-clear text-center title-mov-user-buy">
                                Pro
                            </h3>
                        </div>
                        <img src="../img/lazyload-ph.png" data-src="../img/pro-banner.webp"
                             class="img-fluid mx-auto d-block lazyload" alt="placeholder image"/>
                        <div class="card-body">
                            <ul class="list-unstyled">
                                <li>
                                    <p class="text-center desc-font">
                                        Unlimited Access
                                    </p>
                                </li>
                                <li>
                                    <p class="text-center desc-font">
                                        4 Screens
                                    </p>
                                </li>
                                <li>
                                    <p class="text-center desc-font">
                                        4K quality
                                    </p>
                                </li>
                                <li>
                                    <p class="text-center desc-font">
                                        Downloads on 2 devices
                                    </p>
                                </li>
                            </ul>
                        </div>
                        <div class="card-footer">
                            <a href="payment.jsp" class="btn btn-d btn-lg btn-block buy-btn" id="user-pro-buy-btn">LKR
                                3000/=</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mind-change">
                <div class="col">
                    <h3 class="mg-md mx-auto d-block text-lg-center">
                        I Changed My mind
                    </h3>
                    <div class="text-center">
                        <a href="#" class="btn btn-d btn-take-me-back-style btn-lg"
                           data-toggle-visibility="user-page-buy,subscribe-hiding-part">Take me back</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- user-page-buy END -->

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
<script src="../js/formHandler.js?9434"></script>
<script src="../js/lazysizes.min.js" defer></script>
<script src="../js/waves.js?8704"></script>
<script src="../js/particles.min.js?9960"></script>
<script src="../js/scrollFX.js?7965"></script>
<!-- Additional JS END -->


</body>
</html>

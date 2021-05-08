<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <link rel="canonical" href="www.filmflix.com/login.html"/>
    <meta name="robots" content="index, follow"/>
    <link rel="shortcut icon" type="image/png" href="../img/favicon.jpg">

    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css?6445">
    <link rel="stylesheet" type="text/css" href="../css/style.css?3043">
    <link rel="stylesheet" type="text/css" href="../css/animate.css?9394">
    <link rel="stylesheet" type="text/css" href="../css/all.min.css">
    <link rel="stylesheet" type="text/css" href="../css/ionicons.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lobster&display=swap&subset=latin,latin-ext' rel='stylesheet'
          type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Lato:100,300,400,700,900&display=swap&subset=latin,latin-ext'
          rel='stylesheet' type='text/css'>
    <title>login</title>


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
                        <a class="navbar-brand animated zoomIn animSpeedLazy animDelay02 link-style" href="index.html"
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
                                    <a href="browse.jsp" class="nav-link a-btn">Browse</a>
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

    <!-- bloc-7 -->
    <div class="bloc bg-login-background bloc-bg-texture texture-paper bg-repeat l-bloc" id="bloc-7">
        <div class="container bloc-lg bloc-sm-lg" id="signup">
            <div class="row">
                <div class="col-lg-6 offset-lg-3 offset-md-2 col-md-8" id="login-user">
                    <form id="form_38456" data-form-type="blocs-form" action="login-user" method="POST">
                        <div class="form-group">
                            <input id="login_email" class="form-control field-style animated puffIn" required
                                   type="email" data-error-validation-msg="Not a valid email address"
                                   placeholder="Email" name="login_email" data-appear-anim-style="puffIn"/>
                        </div>
                        <div class="form-group">
                            <input id="login_password" class="form-control animated puffIn animDelay02 none"
                                   type="password" required placeholder="Password" name="login_password"
                                   data-appear-anim-style="puffIn"/>
                        </div>
                        <a href="#"
                           class="btn float-lg-right btn-style btn-onyx none animDelay04 btn-lg animated vanishIn"
                           data-toggle-visibility="signin,signup" data-appear-anim-style="vanishIn"
                           id="signup-instead-btn">Sign up instead</a>
                        <button class="bloc-button btn btn-lg btn-submit-style btn-onyx none animDelay04 animated vanishIn"
                                type="submit" id="login-submit-btn" data-appear-anim-style="vanishIn">
                            Log in
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- bloc-7 END -->

    <!-- bloc-8 -->
    <div class="bloc tc-onyx bg-login-background bloc-bg-texture texture-paper l-bloc" id="bloc-8">
        <div class="container bloc-lg object-hidden bloc-sm-lg" id="signin">
            <div class="row">
                <div class="col-lg-6 offset-lg-3 offset-md-2 col-md-8">
                    <form id="signup-user" data-form-type="blocs-form" action="singup-user" method="POST">
                        <div class="form-group">
                            <input id="signup_name" class="form-control animated puffIn" required
                                   data-validation-required-message="Please enter your name" placeholder="Name"
                                   name="signup_name" data-appear-anim-style="puffIn"/>
                        </div>
                        <div class="form-group">
                            <input id="signup_email" class="form-control animated puffIn animDelay02" type="email"
                                   required data-error-validation-msg="Enter a valid Email"
                                   data-validation-required-message="Please enter a email" placeholder="Email"
                                   name="signup_email" data-appear-anim-style="puffIn"/>
                        </div>
                        <div class="form-group">
                            <input id="signup_password" class="form-control animated puffIn animDelay04" type="password"
                                   required maxlength="10" data-validation-required-message="Enter a password"
                                   placeholder="Password" name="signup_password" data-appear-anim-style="puffIn"/>
                        </div>
                        <div class="licence form-check">
                            <input class="form-check-input animDelay08 animated puffIn animSpeedLazy" type="checkbox"
                                   id="signup_accept_agreement"
                                   data-validation-minchecked-message="You must agree to this before we can make you an acccount"
                                   data-validation-minchecked-minchecked="1" name="signup-accept-agreement"
                                   data-appear-anim-style="puffIn"/>
                            <label class="form-check-label animated puffIn animDelay08" data-appear-anim-style="puffIn">
                                Accept Licence Agreement
                            </label>
                        </div>
                        <a href="#"
                           class="btn btn-lg float-lg-right btn-button-style btn-onyx animDelay08 animated vanishIn"
                           data-toggle-visibility="signin,signup" data-appear-anim-style="vanishIn"
                           id="login-instead-btn">Log in instead</a>
                        <button class="bloc-button btn btn-lg btn-block btn-8-style btn-onyx animDelay08 animated vanishIn"
                                type="submit" id="signup-submit-btn" data-appear-anim-style="vanishIn">
                            Sign up
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- bloc-8 END -->

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
                    </h4><a href="index.html" class="a-btn a-block footer-link">Twitter</a><a href="index.html"
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
<script src="../js/formHandler.js?7405"></script>
<script src="../js/lazysizes.min.js" defer></script>
<script src="../js/waves.js?9751"></script>
<script src="../js/particles.min.js?2163"></script><!-- Additional JS END -->


</body>
</html>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <link rel="canonical" href="www.filmflix.com/SearchDescription.jsp"/>
    <meta name="robots" content="index, follow"/>
    <link rel="shortcut icon" type="image/png" href="../img/favicon.jpg">

    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css?1451">
    <link rel="stylesheet" type="text/css" href="../css/style.css?5139">
    <link rel="stylesheet" type="text/css" href="../css/animate.css?6810">
    <link rel="stylesheet" type="text/css" href="../css/all.min.css">
    <link rel="stylesheet" type="text/css" href="../css/ionicons.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lobster&display=swap&subset=latin,latin-ext' rel='stylesheet'
          type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Lato:100,300,400,700,900&display=swap&subset=latin,latin-ext'
          rel='stylesheet' type='text/css'>
    <title>SearchDescription.</title>


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

    <!-- description-search -->
    <div class="bloc l-bloc animated fadeIn animSpeedLazy bloc-bg-texture texture-fabric" id="description-add"
         data-appear-anim-style="fadeIn">
        <div class="container bloc-lg bloc-sm-lg">
            <div class="row">
                <div class="col-sm-4 col animated fadeIn" data-appear-anim-style="fadeIn">
                    <img src="../img/lazyload-ph.png" data-src="../img/banner/social-dilemma-banner.jpg"
                         class="img-fluid mx-auto d-block animated bounceInLeft lazyload" alt="placeholder image"
                         id="desc-mov-img" data-appear-anim-style="bounceInLeft"/>
                    <div class="desc-search-bar">
                        <div class="row">

                            <div class="col">
                                <form id="description-Search-form" data-form-type="blocs-form" action="descriptionSearch"
                                      method="GET">
                                    <div class="form-group">
                                        <input id="search_id_description" name="search_id_description"
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
                                                        Search
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                                <div>
                                    <div class="row search-box-btn animated vanishIn animDelay04"
                                         data-appear-anim-style="vanishIn">
                                        <div class="col">
                                            </br>
                                            <button class="btn btn-d btn-lg btn-37-style btn-block bloc-button animDelay02 animated bounceInUp"
                                                    id="cancel-btn1" name="cancel-btn1" type="submit"
                                                    data-appear-anim-style="bounceInUp">
                                                <a href="description_adder.jsp">
                                                    Cancel
                                                </a>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- description-search-END -->


                <!-- description-delete-END -->
                <div class="col-sm-8 col animated bounceInUp" data-appear-anim-style="bounceInUp">
                    <div class="row">
                        <div class="col-12">
                            <form id="desc-delete" data-form-type="blocs-form" action="description_delete" method="POST">
                                <div class="form-group">
                                    <label>
                                        Movie ID
                                    </label>
                                    <input id="movieID" class="form-control animated bounceInRight animDelay08"
                                           required type="number"
                                           data-validation-required-message="Please fill this before submit"
                                           name="movieID" data-appear-anim-style="bounceInRight"
                                           placeholder=<%= request.getAttribute("movieID") %>>
                                </div>
                                <div class="form-group">
                                    <label>
                                        Movie Name
                                    </label>
                                    <input id="movieName" class="form-control animated bounceInRight animDelay08"
                                           required data-validation-required-message="Please fill this before submit"
                                           name="movieName" data-appear-anim-style="bounceInRight"
                                           placeholder=<%= request.getAttribute("movieName") %>>
                                </div>
                                <div class="form-group">
                                    <label>
                                        Movie Description
                                    </label><textarea id="movieDescription"
                                                      class="form-control animated bounceInRight animDelay08" rows="4"
                                                      cols="50" required
                                                      data-validation-required-message="Please fill this before submit"
                                                      maxlength="150" name="movieDescription"
                                                      data-appear-anim-style="bounceInRight"
                                                      placeholder=<%= request.getAttribute("movieDescription") %>></textarea>
                                </div>
                                <button class="bloc-button btn btn-d btn-lg btn-block animated vanishIn animDelay1"
                                        type="submit" data-appear-anim-style="vanishIn">
                                    Delete
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- description-delete-END -->

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
<script src="../js/formHandler.js?9125"></script>
<script src="../js/lazysizes.min.js" defer></script>
<script src="../js/waves.js?9710"></script>
<script src="../js/particles.min.js?9201"></script><!-- Additional JS END -->


</body>
</html>


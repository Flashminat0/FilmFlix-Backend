<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    if (session.getAttribute("email") == null) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/login.jsp");
        dispatcher.forward(request, response);
    }
%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <link rel="canonical" href="www.filmflix.com/payment.jsp"/>
    <meta name="robots" content="index, follow"/>
    <link rel="shortcut icon" type="image/png" href="../img/favicon.jpg">

    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css?6302">
    <link rel="stylesheet" type="text/css" href="../css/style.css?5167">
    <link rel="stylesheet" type="text/css" href="../css/animate.css?4552">
    <link rel="stylesheet" type="text/css" href="../css/all.min.css">
    <link rel="stylesheet" type="text/css" href="../css/ionicons.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lobster&display=swap&subset=latin,latin-ext' rel='stylesheet'
          type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Lato:100,300,400,700,900&display=swap&subset=latin,latin-ext'
          rel='stylesheet' type='text/css'>
    <title>payment</title>


    <!-- Analytics -->

    <!-- Analytics END -->

</head>
<body>

<!-- Preloader -->
<div id="page-loading-blocs-notifaction" class="page-preloader"></div>
<!-- Preloader END -->


<!-- Main container -->
<div class="page-container">

    <!-- payment-pane -->
    <div class="bloc l-bloc" id="payment-pane">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col">
                    <h1 class="mg-md animated lightSpeedIn" data-appear-anim-style="lightSpeedIn">
                        Payment
                    </h1>
                    <h3 class="mg-md animated fadeInRight" data-appear-anim-style="fadeInRight">
                        <span class="plan-name-icon fa fa-dollar-sign animated bounceIn animDelay08"
                              data-appear-anim-style="bounceIn"></span>Plan name
                    </h3>
                    <div>
                        <div class="row">
                            <div class="col-lg-8">
                                <form id="payment_form" data-form-type="blocs-form" action="payment-done" method="POST">
                                    <div class="form-group animated fadeInUp animDelay06"
                                         data-appear-anim-style="fadeInUp">
                                        <label>
                                            Name
                                        </label>
                                        <input id="payment_name" class="form-control" required name="payment_name"/>
                                    </div>
                                    <div class="form-group animated fadeInUp none animDelay08"
                                         data-appear-anim-style="fadeInUp">
                                        <label>
                                            Card Number
                                        </label>
                                        <input id="cardnumber" class="form-control" required name="cardnumber"/>
                                    </div>
                                    <div class="form-group animated fadeInUp animDelay1"
                                         data-appear-anim-style="fadeInUp">
                                        <label>
                                            PIN
                                        </label>
                                        <input id="pin" class="form-control" required name="pin"/>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input animated fadeInUp animDelay1 animSpeedLazy"
                                               type="checkbox" id="optin6"
                                               data-validation-minchecked-message="You must agree to this before we can take your information."
                                               data-validation-minchecked-minchecked="1" name="optin6"
                                               data-appear-anim-style="fadeInUp"/>
                                        <label class="form-check-label animated fadeInUp animSpeedLazy animDelay1"
                                               data-appear-anim-style="fadeInUp">
                                            This is my card details
                                        </label>
                                    </div>
                                    <button class="btn btn-d btn-lg btn-block animated vanishIn animDelay2 bloc-button"
                                            data-appear-anim-style="vanishIn" type="submit">
                                        Submit
                                    </button>
                                </form>
                            </div>
                            <div class="col">
                                <img src="../img/lazyload-ph.png" data-src="../img/pro-banner.webp"
                                     class="img-fluid mx-auto d-block animated bounceInRight lazyload"
                                     data-appear-anim-style="bounceInRight" alt="placeholder image"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- payment-pane END -->

    <!-- ScrollToTop Button -->
    <a class="bloc-button btn btn-d scrollToTop" onclick="scrollToTarget('1',this)">
        <svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="0 0 32 32">
            <path class="scroll-to-top-btn-icon" d="M30,22.656l-14-13-14,13"/>
        </svg>
    </a>
    <!-- ScrollToTop Button END-->


</div>
<!-- Main container END -->


<!-- Additional JS -->
<script src="../js/jquery-3.5.1.js?7799"></script>
<script src="../js/bootstrap.bundle.js?766"></script>
<script src="../js/blocs.js?7167"></script>
<script src="../js/jqBootstrapValidation.js"></script>
<script src="../js/formHandler.js?6641"></script>
<script src="../js/lazysizes.min.js" defer></script>
<script src="../js/waves.js?2185"></script>
<script src="../js/particles.min.js?2635"></script><!-- Additional JS END -->


</body>
</html>

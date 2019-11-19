<!DOCTYPE html>
<html lang="en-us">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="${head_description!""}">
    <meta name="keywords" content="${head_keywords!""}">
    <title>Guru Nanak Dwara</title>

    <link rel="icon" type="image/x-icon" href="/favicon.ico">
    <link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="/favicon-96x96.png">

    <#--  Added current font awesome cdn -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <#--  <link href="/libs/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>  -->
    <link href="/libs/twitter-bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="/css/style_blue.css" rel="stylesheet">

    <script src="/libs/jquery/jquery.min.js"></script>                <!--Script jQuery-->
    <script src="/external/jquery/jquery-migrate-1.2.1.min.js"></script>			<!--Script jQuery for old version jQuery-->
    <script src="/libs/twitter-bootstrap/js/bootstrap.min.js"></script>				<!--Bootstrap JavaScript-->
    <!-- <script src="/external/jquery-event/jquery.event.drag-2.2.js"></script><script src="/external/jquery-event/jquery.event.drop-2.2.js"></script> -->
    <script src="/external/jquery-easing/jquery.easing.1.3.js"></script>			<!--Script jquery Easing-->
    <script src="/external/swiper/idangerous.swiper.min.js"></script>			<!--Script Swiper slider -->
    <script src="/external/gozha-nav/jquery.mobile.menu.js"></script>			<!--Script Mobile menu-->
    <script src="/external/modernizr/modernizr.custom.91224.js"></script>		<!--Script Modernizr-->
    <!-- <script src="/external/colorbox/jquery.colorbox.js"></script> -->
    <!-- <script src="/js/form.js"></script>											Script Forms -->
    <script src="/js/custom.js"></script>										<!--Script Custom-->

    <script type="text/javascript" src="/js/shCore.js"></script>
    <script type="text/javascript" src="/js/shBrushXml.js"></script>
    <script type="text/javascript" src="/js/shBrushGroovy.js"></script>
    <link href="/css/shCoreDefault.css" rel="stylesheet" type="text/css"/>

    <script type="text/javascript" src="/libs/jquery-validate/jquery.validate.min.js"></script>
    <script type="text/javascript" src="/libs/jquery-validate/additional-methods.min.js"></script>
    <script type="text/javascript" src="/libs/jstree/jstree.min.js"></script>
    <link href="/libs/jstree/themes/default/style.min.css" rel="stylesheet" type="text/css"/>

    <link href="/css/override.css" rel="stylesheet">
</head>
<body>
<div class="wrapper">
    <header>
        <div class="presentation">

            <div class="top-info">
                <div class="container">
                        <a href="tel:1-602.632.9598" target="_blank" class="onMobile">
                            <span>Call Now</span>
                            <i class="fas fa-phone fa-fw"></i>
                        </a>
                        <a href="/contact.html" target="_blank">
                            <span>Contact Us</span>
                            <i class="far fa-envelope fa-fw"></i>
                        </a>
                        <a href="https://www.google.com/maps/place/Guru+Nanak+Dwara/@33.4754179,-112.0654331,14.37z/data=!4m5!3m4!1s0x872b125f9d3f800b:0x4952a3dc1c4406b7!8m2!3d33.4733031!4d-112.0621051" target="_blank">
                            <span>Directions</span>
                            <i class="fas fa-map-marker-alt fa-fw"></i>
                        </a>
                </div>
            </div>


            <div class="main-nav fixed-pos">
                <nav class="container">
                    <div class="logo">
                        <a href="/"><img class="logo-img" src="/gnd-logo.svg" alt="GND Logo"></a>
                    </div>
                    <ul class="" id="navigation-box">
                        <a id="navigation-toggle" href="#">
                            <i class="fas fa-bars"></i>
                        </a>
                        <ul id="navigation">
                            <li<#if menu_active! == "home" || menu_active! == "mantle" || menu_active! == "applications" || menu_active! == "addons"> class="active-item"</#if>>
                                <#--  <span class="sub-nav-toggle plus"></span>  -->
                                <a href="/">Home</a>
                            </li>
                            <li<#if menu_active! == "newHere" || menu_active! == "mantle" || menu_active! == "applications" || menu_active! == "addons"> class="active-item"</#if>>
                                <a href="/newhere.html">New Here</a>
                            </li>
                            <li<#if menu_active! == "events" || menu_active! == "mantle" || menu_active! == "applications" || menu_active! == "addons"> class="active-item"</#if>>
                                <a href="/events.html">Events</a>
                            </li>
                            <li<#if menu_active! == "calendar" || menu_active! == "mantle" || menu_active! == "applications" || menu_active! == "addons"> class="active-item"</#if>>
                                <a href="/events.html">Calendar</a>
                            </li>
                            <li<#if menu_active! == "startServing" || menu_active! == "mantle" || menu_active! == "applications" || menu_active! == "addons"> class="active-item"</#if>>
                                <a href="/startserving.html">Start Serving</a>
                            </li>
                            <li<#if menu_active! == "photos" || menu_active! == "mantle" || menu_active! == "applications" || menu_active! == "addons"> class="active-item"</#if>>
                                <a href="/photos.html">Photos</a>
                            </li>
                            <ul class="onMobile">
                                <li>
                                    <a href="https://www.facebook.com/gurunanakdwara/" title="GND Facebook Page" target="_blank"><i class="fab fa-facebook"></i></a>
                                </li>
                                <li>
                                    <a href="https://www.instagram.com/gurunanakdwara/" title="GND Instagram Page" target="_blank"><i class="fab fa-instagram"></i></a>
                                </li>
                                <li>
                                    <a href="https://www.youtube.com/c/GuruNanakDwara" title="GND YouTube Channel" target="_blank"><i class="fab fa-youtube"></i></a>
                                </li>
                                <li>
                                    <a href="https://twitter.com/gurunanakdwara" title="GND Twitter Page" target="_blank"><i class="fab fa-twitter-square"></i></a>
                                </li>
                            </ul>
                        </ul>
                        <div>
                            <a href="localhost:8080/vapps/DonationForm" class="donateBtn">Donate</a>
                        </div>
                        
                    </div>
                </nav>
                <#-- <div class="divider-circle"></div> -->
            </div>
            
        </div>
    </header>

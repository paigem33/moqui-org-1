<!DOCTYPE html>
<html lang="en-us">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="${head_description!""}">
    <meta name="keywords" content="${head_keywords!""}">
    <title>${head_title!"Moqui Ecosystem"}</title>

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
                        <a href="/docs/moqui/Community+Guide" target="_blank">
                            <span>Contact Us</span>
                            <i class="far fa-envelope fa-fw"></i>
                        </a>
                        <a href="/docs/moqui/Community+Guide" target="_blank">
                            <span>Directions</span>
                            <i class="fas fa-map-marker-alt fa-fw"></i>
                        </a>
                </div>
            </div>

            <div class="main-nav fixed-pos">
                <nav class="container">
                    <div class="logo">
                        <a href="/index.html"><img class="logo-img" src="/gnd-logo.svg" alt="Moqui Logo"></a>
                    </div>
                    <div class="" id="navigation-box">
                        <a id="navigation-toggle" href="#"><span class="menu-icon"></span></a>
                        <ul id="navigation">
                            <li<#if menu_active! == "home" || menu_active! == "mantle" || menu_active! == "applications" || menu_active! == "addons"> class="active-item"</#if>>
                                <#--  <span class="sub-nav-toggle plus"></span>  -->
                                <a href="/index.html">Home</a>
                            </li>
                            <li<#if menu_active! == "newHere" || menu_active! == "mantle" || menu_active! == "applications" || menu_active! == "addons"> class="active-item"</#if>>
                                <a href="/index.html">New Here</a>
                            </li>
                            <li<#if menu_active! == "events" || menu_active! == "mantle" || menu_active! == "applications" || menu_active! == "addons"> class="active-item"</#if>>
                                <a href="/index.html">Events</a>
                            </li>
                            <li<#if menu_active! == "calendar" || menu_active! == "mantle" || menu_active! == "applications" || menu_active! == "addons"> class="active-item"</#if>>
                                <a href="/index.html">Calendar</a>
                            </li>
                            <li<#if menu_active! == "startServing" || menu_active! == "mantle" || menu_active! == "applications" || menu_active! == "addons"> class="active-item"</#if>>
                                <a href="/index.html">Start Serving</a>
                            </li>
                            <li<#if menu_active! == "photos" || menu_active! == "mantle" || menu_active! == "applications" || menu_active! == "addons"> class="active-item"</#if>>
                                <a href="/index.html">Photos</a>
                            </li>
                            <li<#if menu_active! == "donate" || menu_active! == "mantle" || menu_active! == "applications" || menu_active! == "addons"> class="active-item"</#if>>
                                <a href="/index.html" class="donateBtn">Donate</a>
                            </li>
                        </ul>
                    </div>
                </nav>
                <#-- <div class="divider-circle"></div> -->
            </div>
            
        </div>
    </header>

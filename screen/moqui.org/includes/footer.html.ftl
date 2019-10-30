
</div>
<!--End wrapper -->
<footer class="footer">
    <p>Subscribe to our mailing list</p>
    <div>
        <form action="" method="">
            <input type="email" value name="EMAIL" placeholder="E-Mail Address">
            <button type="submit" name="subscribe">Subscribe</button>
        </form>
        <nav class="footer-nav">
            <ul>
            <li>
                    <a href="/">Home</a>
            </li>
            <li>
                    <a href="events.html">Events</a>
            </li>
            <li>
                    <a href="/startserving.html">Start Serving</a>
            </li>
            <li>
                    <a href="/newhere.html">New Here</a>
            </li>
            <li>
                    <a href="/events.html">Calendar</a>
            </li>
            <li>
                    <a href="/photos.html">Photo</a>
            </li>
            <li>
                    <a href="/contact.html">Contact Us</a>
            </li>
            </ul>
        </nav>
    </div>
    <p>Connect with us</p>
    <ul class="footer-icons">
        <li>
            <a href="/donate.html" class="donateBtn">Donate</a>
        </li>
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
</footer>

<script>

$(document).ready(function() {
    <#if menu_active! == "home">
        //Swiper
        init_DecoratedSlider();
        // init_QoutationSlider();
        //Services hover
       	init_ServicesInfo();
    </#if>

    init_ButtonInfo();
    init_Button();

    SyntaxHighlighter.config.tagName = "code";
    SyntaxHighlighter.defaults['toolbar'] = false;
    SyntaxHighlighter.all();
});
</script>

</body>
</html>

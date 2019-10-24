
</div>
<!--End wrapper -->
<footer>
    <p>Subscribe to our mailing list</p>
    <div>
        <form action="" method="">
            <input type="email" value name="EMAIL" placeholder="E-Mail Address">
            <button type="submit" name="subscribe">Subscribe</button>
        </form>
        <nav class="footer-nav">
            <ul>
            <li>
                    <a href="#">Home</a>
            </li>
            <li>
                    <a href="#">Events</a>
            </li>
            <li>
                    <a href="#">Start Serving</a>
            </li>
            <li>
                    <a href="#">New Here</a>
            </li>
            <li>
                    <a href="#">Calendar</a>
            </li>
            <li>
                    <a href="#">Photo</a>
            </li>
            <li>
                    <a href="#">Contact Us</a>
            </li>
            </ul>
        </nav>
    </div>
    <p>Connect with us</p>
    <ul class="footer-icons">
        <li>
            <a href="/index.html" class="donateBtn">Donate</a>
        </li>
        <li>
            <a href="/index.html"><i class="fab fa-facebook"></i></a>
        </li>
        <li>
            <a href="/index.html"><i class="fab fa-instagram"></i></a>
        </li>
        <li>
            <a href="/index.html"><i class="fab fa-youtube"></i></a>
        </li>
        <li>
            <a href="/index.html"><i class="fab fa-twitter-square"></i></a>
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

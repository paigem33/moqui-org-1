
</div>
<!--End wrapper -->
<footer>
    <p>Subscribe to our mailing list</p>
    <form action="" method="">
        <input type="email" value name="EMAIL" placeholder="E-Mail Address">
        <button type="submit" name="subscribe">Subscribe</button>
    </form>
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

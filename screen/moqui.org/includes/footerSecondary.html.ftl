
</div>
<!--End wrapper -->
<footer class="footerSecondary">
    <p>Guru Nanak Dwara is a tax-exempt 501c(3) non-profit charitable organization. Every generous donation is tax deductible in the USA.</p>
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

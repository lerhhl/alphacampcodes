$(document).ready(function(){
    $("ul li a").click(function() {
        console.log("Clicked on ul li a");

        //Hide everything
        $("a").removeClass("active");
        $(".page").removeClass("active");

        //get link          
        var $click_link = $(this)

        //activate link
        $click_link.addClass("active");

        //activate page
        var pageId = $click_link.data("page");
        console.log(pageId);
        $(pageId).addClass("active");
    });
});
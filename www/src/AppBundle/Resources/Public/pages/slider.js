'use strict';
$(document).ready(function() {
    /*owl carosel slider */
    $("#idslidercenter").owlCarousel({
        dots: true,
        nav:true,
        autoplay:true,
        autoplayTimeout:9000,
        margin:0,
        smartSpeed:1000,
        loop:true,
        slideSpeed:300,
        items:4,
        // rtl: true, this start a image from right side to left
        singleItem:true,
        responsiveClass:true,
        responsive:{
            0:{
                items:1,
                nav:true
            },
            600:{
                items:2,
                nav:true
            },
            1000:{
                items:4,
                nav:true,
                loop:false
            }
        }

    });
    $("#todaydeals").owlCarousel({
        autoplay:false,
        autoplayTimeout:9000,
        margin:0,
        smartSpeed:1000,
        loop:true,
        slideSpeed:300,
        items:4,
        // rtl: true, this start a image from right side to left
        singleItem:true,
        responsiveClass:true,
        responsive:{
            0:{
                items:1,
            },
            600:{
                items:2,
            },
            1000:{
                items:4,
                loop:false
            }
        }

    });
    $("#todaysdestinations").owlCarousel({
        autoplay:false,
        autoplayTimeout:9000,
        margin:0,
        smartSpeed:1000,
        loop:true,
        slideSpeed:300,
        items:4,
        // rtl: true, this start a image from right side to left
        singleItem:true,
        responsiveClass:true,
        responsive:{
            0:{
                items:1,
            },
            600:{
                items:2,
            },
            1000:{
                items:4,
                loop:false
            }
        }

    });
});
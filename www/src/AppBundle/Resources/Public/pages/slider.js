'use strict';
$(document).ready(function() {
    /*owl carosel slider */
    $("#idslidercenter").owlCarousel({
        dots: false,
        nav:true,
        autoplay:true,
        autoplayTimeout:9000,
        margin:0,
        smartSpeed:1000,
        loop:false,
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
        dots: false,
        nav:true,
        autoplay:true,
        autoplayTimeout:9000,
        margin:16,
        smartSpeed:1000,
        loop:false,
        slideSpeed:300,
        items:3,
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
                items:3,
                loop:false
            }
        }

    });
    $("#todaysdestinations").owlCarousel({
        nav:true,
        autoplay:true,
        autoplayTimeout:9000,
        margin:16,
        smartSpeed:1000,
        loop:false,
        slideSpeed:300,
        items:3,
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
                items:3,
                loop:false
            }
        }

    });
    $("#recomendedcars").owlCarousel({
        nav:true,
        autoplayTimeout:9000,
        margin:16,
        smartSpeed:1000,
        loop:false,
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
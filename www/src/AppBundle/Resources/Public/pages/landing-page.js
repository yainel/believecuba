'use strict';
$(document).ready(function () {
    /*
    var $container = $('.portfolioContainer');
    $container.isotope({
        filter: '*',
        animationOptions: {
            duration: 750,
            easing: 'linear',
            queue: false
        }
    });

    $('.portfolioFilter .car-filter').on('click',function(){
        var self = this;
        $('.portfolioFilter .current').removeClass('current');
        $(self).addClass('current');
        var selector = $(self).attr('data-filter');
        $container.isotope({
            filter: selector,
            animationOptions: {
                duration: 750,
                easing: 'linear',
                queue: false
            }
        });
         return false;
    });
    */
    var _checked = null;

    $(function () {

        var $container = $('.portfolioContainer'),
            $checkboxes = $('.portfolioFilter input');

        $container.isotope({
            itemSelector: '.car-item',
            filter: '*'
        });

        //total de elementos al cargar la pagina
        if ($container.data('isotope').filteredItems.length > 1) {
            $('div.results-div').children('span').html($container.data('isotope').filteredItems.length + ' Resultados');
        } else if ($container.data('isotope').filteredItems.length == 1) {
            $('div.results-div').children('span').html($container.data('isotope').filteredItems.length + ' Resultado');
        }  else {
            $('div.results-div').children('span').html(' Ningún Resultado');
        }

        $checkboxes.change(function () {
            var filters = [];
            _checked = $checkboxes.filter(':checked');


            _checked.each(function () {
                filters.push(this.value);
            });
            filters = filters.join('');

            $container.isotope({filter: filters});

            //elementos filtrados
            if ($container.data('isotope').filteredItems.length > 1) {
                $('div.results-div').children('span').html($container.data('isotope').filteredItems.length + ' Resultados');
            } else if ($container.data('isotope').filteredItems.length == 1) {
                $('div.results-div').children('span').html($container.data('isotope').filteredItems.length + ' Resultado');
            }  else {
                $('div.results-div').children('span').html(' Ningún Resultado');
            }
        });

        $('#shuffle').click(function () {
            $container.isotope('shuffle');

        });

    });

    // Add smooth scrolling on all links inside the navbar
    $("#navbarResponsive a").on('click', function (event) {

        // Prevent default anchor click behavior
        event.preventDefault();

        // Store hash
        var hash = this.hash;

        // Using jQuery's animate() method to add smooth page scroll
        // The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
        $('html, body').animate({
            scrollTop: $(hash).offset().top
        }, 800, function () {

            // Add hash (#) to URL when done scrolling (default click behavior)
            window.location.hash = hash;
        });
    });
//    End Smooth Scrolling
});

/*------------------------------------------
 Scroll Up Button
 ------------------------------------------*/
$(window).scroll(function () {
    if ($(this).scrollTop() > 600) {
        $('.scrollup').fadeIn();
    } else {
        $('.scrollup').fadeOut();
    }
});

$('.scrollup').click(function () {
    $("html, body").animate({
        scrollTop: 0
    }, 600);
    return false;
});


jQuery(document).ready(function(){

    /*
    * Click on category button
    *
    * */

    jQuery(".categories-button").bind('click', function(){

        var category = jQuery(".categories");

        if( category.hasClass('active') ){
            category.removeClass('active');
        }else{
            category.addClass('active');
        }

        jQuery(".categories-block").toggle();
    });


    /*
     * List view hover show BUY button
     *
     * */

    jQuery(".giftItem").bind('hover', function(){
        jQuery(this).find(".giftPopup").toggle();
    });

    jQuery(".giftItem").hover(function(){
        jQuery(this).find(".giftPopup").toggle();
    });


    var a = jQuery('.categories-block-inner').height();
    jQuery('.categories-block-inner').css({ height: jQuery('.categories-block-inner').height() - 130 });


    jQuery(window).resize(function(){
        jQuery('.categories-block-inner').css({ height: jQuery('.categories-block-inner').height() - 130 });
    });




    /*
    * Animate Background Image
    *
    * */

    var item = $('.banner');
    var dimension  = $('.banner img').width();
    var width = item.width();
    var area = dimension - width;

    var x = 0;
    var move_to = area;
    var direction = -1; /* -1 right 1 left */
    var speed = 50;

    setInterval(function(){

        x+=direction;

        if( (x*-1) != move_to ){
            changePosition();
        }else{
            changeDirection();
        }

    }, speed);

    function changePosition(){
        item.css('background-position', x + 'px 50%');
    }

    function changeDirection(){
        if( direction == 1 )
            direction = -1
        else
            direction = 1;

        if( move_to == area )
            move_to = 0;
        else
            move_to = area;

    }


    $('.big-tab').bind('click', function(){

        $('.big-tab').removeClass('active');
        $(this).addClass('active');

        $('.brand-conrainer').hide();
        $( '#' + $(this).attr('data-container')).show();

    });


    $('.list-banner').fadeIn('slow');
































    /*
     * END Animate Background Image
     *
     * */

    $('.myButton').bind('click', function(){

        var disabled = $(this).attr('disabled');

        if( disabled != 'disabled' ){
            $('.confirm-window').fadeIn('fast');
        }

    });

    $('.close-window').bind('click', function(){
        $('.confirm-window').fadeOut('fast');
    });




    $('.choose, .d, .m, .y, .h').bind('click', function(){

        $(this).find('.dropdown').toggle();

    });


    /*
    * Show/Hide Tooltip
    *
    * */

    $('.field input').bind('focus', function(){
        $('.destination-tooltip').hide();
        $(this).parent().find('div').show();
    });


    $('.field input').bind('blur', function(){
        $(this).parent().find('div').hide();
    });



    /*
     * END Show/Hide Tooltip
     *
     * */







});

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



});

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







});
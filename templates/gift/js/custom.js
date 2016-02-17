
jQuery(document).ready(function(){

    jQuery(".categories-button").bind('click', function(){

        if( jQuery(".categories").hasClass('active') ){
            jQuery(".categories").removeClass('active');
        }else{
            jQuery(".categories").addClass('active');
        }

        jQuery(".categories-block").toggle();
    });

});
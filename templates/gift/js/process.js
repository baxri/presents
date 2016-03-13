
jQuery(document).ready(function(){

    $('.start-process').bind('click', function(){
        $('.process-background').fadeIn('fast');
        return false;
    });

    $('.process-footer button').bind('click', function(){
        return false;
    });

    $('.process-header a').bind('click', function(){
        $('.process-background').fadeOut('fast');
        return false;
    });


});

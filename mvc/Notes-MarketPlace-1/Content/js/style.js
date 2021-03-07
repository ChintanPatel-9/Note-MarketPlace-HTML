/* Navigation */
$(function(){
  showHideNav();
  
  $(window).scroll(function(){
    showHideNav();
  });

  function showHideNav(){
    if ($(window).scrollTop()>50) {
        $(".site-header-home").addClass("white-nav-top");
        $(".navbar-brand-home img").attr("src","img/logo.png");
    }
    else{
        $(".site-header-home").removeClass("white-nav-top");
        $(".navbar-brand-home img").attr("src","img/logo.png");
    }
  }

});
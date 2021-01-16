/* Navigation */
$(function(){
  showHideNav();
  
  $(window).scroll(function(){
    showHideNav();
  });

  function showHideNav(){
    if ($(window).scrollTop()>50) {
        $(".site-header").addClass("white-nav-top");
        $(".navbar-brand img").attr("src","img/dark-top-logo.png");
    }
    else{
        $(".navbar-brand img").attr("src","img/logo.png");
    }
  }

});
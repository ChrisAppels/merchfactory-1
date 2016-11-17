$(document).ready(function(){

  function stickyNav(ev){
    if(window.pageYOffset>70){
      $('#bottom-nav').addClass('sticky-nav');
    } else {
      $('#bottom-nav').removeClass('sticky-nav');
    }
  }
  window.onscroll=stickyNav
});

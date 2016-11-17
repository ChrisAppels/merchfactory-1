$(document).ready(function(){

  function stickyNav(ev){
    if(window.pageYOffset>101){
      $('.bottom-nav').addClass('sticky-nav');
      $('#nav-logo').addClass('show-inline');
    } else {
      $('.bottom-nav').removeClass('sticky-nav');
      $('#nav-logo').removeClass('show-inline');
    }
  }
  window.onscroll=stickyNav
});

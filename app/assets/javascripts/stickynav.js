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

  $('#product-dropdown').click(function(){
    var secondaryHeight = $('.secondary').outerHeight();
    var outerContainerHeight = $('.dropdown-container').height();
    var outerContainer = $('.dropdown-container');
    console.log(outerContainerHeight);

    if ( outerContainerHeight <  1 ) {
      outerContainer.height(secondaryHeight);
    } else {
      outerContainer.height(0);
    }
  });
});



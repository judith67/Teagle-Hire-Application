


$(document).ready(function() {
  $("#showHide").click(function() {
    if ($(".password").attr("type") == "password") {
      $(".password").attr("type", "text");

      $("#showHide").css({opacity: '1'});
    } else {
      $(".password").attr("type", "password");
      $("#showHide").css({opacity: '0.47'});
    }
  });
  var scroller = $('.scroll');
  scroller.click(function(event){
    event.preventDefault();
    $('body,html').animate({
        scrollTop: $(this.hash).offset().top
    },2000);
  });

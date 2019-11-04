// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better
// to create separate JavaScript files as needed.
//
//= require jquery-2.2.0.min
//= require bootstrap
//= require_tree .
//= require_self

if (typeof jQuery !== 'undefined') {
    (function($) {
        $(document).ajaxStart(function() {
            $('#spinner').fadeIn();
        }).ajaxStop(function() {
            $('#spinner').fadeOut();
        });
    })(jQuery);
}

$(document).ready(function(){
  $(".interest:contains('Interested')").addClass("green");
  $(".interest:contains('Contacted')").addClass("yellow");
  $(".interest:contains('Not Interested')").addClass("red");

  $('#checkall').click(function () {
   $('#checkone').prop('checked', this.checked);
});
$('#checkallb').click(function () {
 $('#checkoneb').prop('checked', this.checked);
});
$('#checkallc').click(function () {
 $('#checkonec').prop('checked', this.checked);
});

$('#bold').click(function(){
  $('#msg').toggleClass('bold');
})
$('#italic').click(function(){
  $('#msg').toggleClass('italic');
})
$('#delete').click(function(){
  $('#msg').text = "";
})

$('.submenujd').click(function(){
  $('#showjobs').innerHTML = $('.submenujd').value();
})
//
// if($('#candname'))
$(function() {
    $('.percnt').hide();
    $('#interviewer').change(function(){
        if($('#interviewer').val() == 'Recruiter' || $('#interviewer').val() == 'HR') {
            $('.percnt').hide();
        } else {
            $('.percnt').show();
        }
    });
});

$(function(){

  if($('#totscore').html() >="75%"){
    $('#totscore').css({color: "#00ace2"});
  }
  else if ($('#totscore').html() >="74%" && $('#totscore').html() <="51%") {
    $('#totscore').css({color: "#ff5219"});
  }
  else{
    $('#totscore').css({color: "#333"});
  }


});
});

$(document).ready(function(){
  $('.downa').click(function(){
    $('#currstatus').slideToggle(600);
  });
  $('.downb').click(function(){
      $('#ageing').slideToggle(600);
  });
  $('.downc').click(function(){
    $('#skills').slideToggle(600);
  });
  $('.downd').click(function(){
    $('#exp').slideToggle(600);
  });
  $('.downe').click(function(){
    $('#source').slideToggle(600);
  });
  $('.downf').click(function(){
    $('#company').slideToggle(600);
  });
  $('.downg').click(function(){
    $('#education').slideToggle().animate({},1200);
  });
  $('.downh').click(function(){
    $('#city').slideToggle(600);
  });
  $('.downi').click(function(){
    $('#distance').slideToggle(600);
  });

    $('.sampleimg').on('mouseout', function(){
    var imagesize = $('img').width();
    imagesize = imagesize +180;
    $('.sampleimg').width(imagesize);
});
$('.sampleimg').on('mouseenter', function(){
var imagesize = $('img').width();
imagesize = imagesize + 300;
$('.sampleimg').width(imagesize);
});
});

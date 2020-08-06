$(document).ready(function(){
  $('.btn').click(function(){
    $('.items').toggleClass("show");
    $('li.items').toggleClass("hide");
  });
});


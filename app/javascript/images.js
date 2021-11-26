$(document).on("turbolinks:click", function(){
    $(".spinner").show();
  });
  
  $(document).on("turbolinks:load", function(){
    $(".spinner").hide();
  });
  
  
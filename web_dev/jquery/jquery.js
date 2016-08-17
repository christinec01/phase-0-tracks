$(document).ready(function(){
  $("#hide_button").click(function(){
    $("#main_body_div").hide();

  });
  $("#header_div").mouseenter(function(){
    alert("You entered the header!");
  });
  $("#show_button").click(function(){
    $("#main_body_div").show();
  });
});

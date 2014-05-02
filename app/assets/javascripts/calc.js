$(document).ready(function(){

var total = 0;


$( ".weights" ).click(function() {
total += parseFloat ($(this).val());
$( "#workout_weight" ).val( total * 2 + 45);
});

$("#deload").click(function(){
  total = 0

$( "#workout_weight" ).val("");

  $("#first").hide();
  $("#firstplates").hide();
  $("#first35").hide();
  $("#first25").hide();
  $("#first10").hide();
  $("#first5").hide();
  $("#first2").hide();



  $("#second").hide();
  $("#secondplates").hide();
  $("#second35").hide();
  $("#second25").hide();
  $("#second10").hide();
  $("#second5").hide();
  $("#second2").hide();



  $("#third").hide();
  $("#thirdplates").hide();
  $("#third35").hide();
  $("#third25").hide();
  $("#third10").hide();
  $("#third5").hide();
  $("#third2").hide();




  $("#fourth").hide();
  $("#fourthplates").hide();
  $("#fourth35").hide();
  $("#fourth25").hide();
  $("#fourth10").hide();
  $("#fourth5").hide();
  $("#fourth2").hide();
});

$("#deload").click();


$("#plate").click(function(){

      if ($("#first").is(':visible') == false)
    {
      $("#first").show();

      $("#firstplates").show();
    }

    else if ($("#second").is(':visible') == false)
    {
        $("#second").show();

        $("#secondplates").show();
    }

    else if ($("#third").is(':visible') == false)
    {
        $("#third").show();

        $("#thirdplates").show();
    }

    else if ($("#fourth").is(':visible') == false)
    {
        $("#fourth").show();

        $("#fourthplates").show();
    }

});

$("#threeFive").click(function(){

   if ($("#first").is(':visible') == false)
    {
      $("#first").show();

      $("#first35").show();
    }

   else if ($("#second").is(':visible') == false)
      {
          $("#second").show();

          $("#second35").show();
      }


    else if ($("#third").is(':visible') == false)
      {
        $("#third").show();

        $("#third35").show();
    }


    else if ($("#fourth").is(':visible') == false)
      {
        $("#fourth").show();

        $("#fourth35").show();
    }

});

$("#quarter").click(function(){

   if ($("#first").is(':visible') == false)
    {
      $("#first").show();

      $("#first25").show();
    }

else if ($("#second").is(':visible') == false)
    {
        $("#second").show();

        $("#second25").show();
    }

    else if ($("#third").is(':visible') == false)
    {
        $("#third").show();

        $("#third25").show();
    }

    else if ($("#fourth").is(':visible') == false)
    {
        $("#fourth").show();

        $("#fourth25").show();
    }

});


$("#dime").click(function(){

   if ($("#first").is(':visible') == false)
    {
      $("#first").show();

      $("#first10").show();
    }

else if ($("#second").is(':visible') == false)
    {
        $("#second").show();

        $("#second10").show();
    }

    else if ($("#third").is(':visible') == false)
    {
        $("#third").show();

        $("#third10").show();
    }

    else if ($("#fourth").is(':visible') == false)
    {
        $("#fourth").show();

        $("#fourth10").show();
    }

});


$("#nickel").click(function(){

   if ($("#first").is(':visible') == false)
    {
      $("#first").show();

      $("#first5").show();
    }

else if ($("#second").is(':visible') == false)
    {
        $("#second").show();

        $("#second5").show();
    }

    else if ($("#third").is(':visible') == false)
    {
        $("#third").show();

        $("#third5").show();
    }

    else if ($("#fourth").is(':visible') == false)
    {
        $("#fourth").show();

        $("#fourth5").show();
    }

});

$("#two").click(function(){

   if ($("#first").is(':visible') == false)
    {
      $("#first").show();

      $("#first2").show();
    }

else if ($("#second").is(':visible') == false)
    {
        $("#second").show();

        $("#second2").show();
    }

    else if ($("#third").is(':visible') == false)
    {
        $("#third").show();

        $("#third2").show();
    }

    else if ($("#fourth").is(':visible') == false)
    {
        $("#fourth").show();

        $("#fourth2").show();
    }

});

$( "#workout_weight" ).focus(function() {
  $('#deload').click();
});

$("#load").click(function(){



  var weightVal = (parseFloat (document.getElementById("workout_weight").value)) - 45
  var plateNum = Math.floor(weightVal/90)
  var remWeight = (weightVal % 90)/2


  var i = 0

  while (i < plateNum)
  {

    $('#plate').click();

    i++


  }

if (remWeight == 2.5)
  {
     $('#two').click();

  }

else if (remWeight == 5)
  {
     $('#nickel').click();
  }
else if (remWeight == 7.5)
  {
      $('#nickel').click();
      $('#two').click();
  }
else if (remWeight == 10)
  {
      $('#dime').click();
  }
else if (remWeight == 12.5)
  {
      $('#dime').click();
      $('#two').click();
  }

else if (remWeight == 15)
  {
      $('#dime').click();
      $('#nickel').click();
  }

else if (remWeight == 17.5)
  {
      $('#dime').click();
      $('#nickel').click();
      $('#two').click();
  }

else if (remWeight == 20)
  {
      $('#dime').click();
      $('#dime').click();
  }

else if (remWeight == 22.5)
  {
      $('#dime').click();
      $('#dime').click();
      $('#two').click();
  }

else if (remWeight == 25)
  {
      $('#quarter').click();
  }
else if (remWeight == 27.5)
  {
      $('#quarter').click();
      $('#two').click();
  }

else if (remWeight == 30)
  {
      $('#quarter').click();
      $('#nickel').click();
  }

else if (remWeight == 32.5)
  {
      $('#quarter').click();
      $('#nickel').click();
      $('#two').click();
  }

else if (remWeight == 35)
  {
      $('#threeFive').click();
  }
else if (remWeight == 37.5)
  {
      $('#threeFive').click();
      $('#two').click();
  }

else if (remWeight == 40)
  {
      $('#threeFive').click();
      $('#nickel').click();
  }
else if (remWeight == 42.5)
  {
      $('#threeFive').click();
      $('#nickel').click();
      $('#two').click();    
  }

});
       

});
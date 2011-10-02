document.ready(
$("#hide").toggle(function () {
    $(this).text('Show');
    $("#navigation").hide(500);
    $("#content").animate({
      marginLeft: "20px"
    });
   },
   function () {
    $(this).text('Hide');
    $("#navigation").show(500);
    $("#content").animate({
      marginLeft: "145px"
    });
   }
);

);
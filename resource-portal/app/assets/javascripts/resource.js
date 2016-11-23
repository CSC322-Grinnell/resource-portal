$(document).ready(function() {

$('.category-box-container input:radio[type=radio_button]').change( function(){
    var c = $(".category-box-container input[type=radio_button]:checked").val();
    console.log("HELLO");
    console.log(c);
    if($('.' + c + '_selection').is(":checked"))   
        $('.' + c + '_tag').show();
    else
        $('.' + c + '_tag').hide();
  });

});
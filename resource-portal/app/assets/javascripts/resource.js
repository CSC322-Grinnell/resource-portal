$(document).ready(function() {

$('.category-box-container input:radio[type=radio_button]').change( function(){
    var category = $(".category-box-container input[type=radio_button]:checked").val();
    
    if($('.' + category + '_selection').is(":checked"))   
        $('.' + category + '_tag').show();
    else
        $('.' + category + '_tag').hide();
  });

});
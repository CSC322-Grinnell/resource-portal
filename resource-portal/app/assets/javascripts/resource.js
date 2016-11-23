/*global $*/
$(document).ready(function() {
    
    // OPTION 1
    $('.category-box-container input:radio[type=radio_button]').change( function(){
        var c = $(".category-box-container input[type=check_box]:checked").val();
        if($('.' + c + '_selection').is(":checked"))   
            $('.' + c + '_tag').show();
        else
            $('.' + c + '_tag').hide();
    });
    /*
    // OPTION 2
    $('.category-box-container input:radio[type=radio_button]').change( function() {
        $('.category-box-container input[id=' + this.value + ']').toggle(this.checked);
    }).change();
    
    // OPTION 3
    
    $(function(){
    var $tags = $('.' + c + '_tag').parent();
    $tags.hide();

    $('.category-box-container').on('click',$('.' + c + '_selection'),function(){
        if ( $(this).is(':checked') ) {
            $tags.show();
        } else{
            $tags.hide();
        }
    }); */
}); 
/*global $*/
// Code that shows and hides tag checkboxes based on the category selected
$(document).ready(function() {
    // On the change for the radio button
    $('input:radio').change(function(){
        // Hide all tag checkboxes
        $('.all_tags').hide();
        // Get the id of the selected category radio button and show that container
        $('#' + $('input:radio:checked').attr('id') + '_tags').show();
    });
});
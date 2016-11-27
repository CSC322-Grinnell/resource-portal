/*global $*/
$(document).ready(function() {

    // On the change for the radio button
    $('input:radio').change(function(){
        // Get the id of the container of that radio button
        var c = $('input:radio:checked').attr('id');
        // Loop through the tag checkboxes and show the ones that match the radio button
        $('input:checkbox').each(function(index, myCheckbox) {
            var tagName = c + '_tag';
            // If the checkbox has the right id
            if($(myCheckbox).attr('id') == tagName) {
                console.log("show " + $(myCheckbox).val());
                // Show the checkbox and its label
                $('#' + tagName).parent().show();
            }
        });
    });
}); 
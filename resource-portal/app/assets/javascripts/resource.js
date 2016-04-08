$(document).ready(function() {

  $("form.new_resource, form.edit_resource").on("submit", function(event) {
    var checkboxes = $(".category-box-container input[type=checkbox]");
    var selectedCheckboxes = checkboxes.filter(":checked");

    if (selectedCheckboxes.length == 0) {
      event.preventDefault();
      alert("You need to select at least one category!");
    }
  });

});
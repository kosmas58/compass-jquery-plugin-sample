jQuery.ajaxSetup({
	'beforeSend': function(xhr) {xhr.setRequestHeader("Accept", "text/javascript")}
})

jQuery.fn.submitWithAjax = function() {
	this.submit(function() {
    $.post($(this).attr("action"), $(this).serialize(), null, "script");
    return false;
  })
}

$(document).ready(function() {
  setTimeout(hideFlashes, 5000);

  var hideFlashes = function() {
    $("#flash_messages").fadeOut(1500);
  }
});
jQuery.ajaxSetup({
	'beforeSend': function(xhr) {xhr.setRequestHeader("Accept", "text/javascript")}
})

jQuery.fn.submitWithAjax = function() {
	this.submit(function() {
    $.post($(this).attr("action"), $(this).serialize(), null, "script");
    return false;
  })
}

$(document).ajaxSend(function(e, xhr, options) {
  var token = $("meta[name='csrf-token']").attr("content");
  xhr.setRequestHeader("X-CSRF-Token", token);
});

$(function() {
  $(window.applicationCache).bind("error", function() {
    alert("There was an error when loading the cache manifest");
  });
});
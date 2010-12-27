$('document').ready(function() {
// For forward and back
$.address.change(function(event){
  $("#tabs").tabs( "select" , window.location.hash )
  })
// when the tab is selected update the url with the hash
$("#tabs").bind("tabsselect", function(event, ui) { 
  window.location.hash = ui.tab.hash;
  })
});

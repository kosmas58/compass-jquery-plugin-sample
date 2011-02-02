jQuery(document).ready(function() {	
  $.fx.speeds._default = 600;
  $(function() {
    $("#greybox").dialog({
      autoOpen: false,
      bgiframe: true,
      modal: true,
      width: 768,
      height: 480,
      show: 'blind',
      hide: 'explode'
    });
  });
 
  $("a.greybox").live('click', function() {
    $("#greybox" ).dialog( "option", "title", this.title || $(this).text() );
    $("#frame").remove();
    $("#greybox").append("<iframe id='frame' src='"+this.href+"' width='100%' height='100%'></iframe>");
    $('#greybox').dialog('open');
    return false;
  });
});

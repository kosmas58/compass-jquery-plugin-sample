jQuery(document).ready(function() {	
  $.fx.speeds._default = 600;
  $(function() {
    $('#greybox').dialog({
      autoOpen: false,
      bgiframe: true,
      modal: true,
      width: 768,
      height: 480,
      show: 'blind',
      hide: 'explode'
    });
  });
	
  $("a.greybox").click(function(){
    $("#greybox" ).dialog( "option", "title", this.title || $(this).text() );
    $("#frame").remove();
    $("#greybox").append("<iframe id='frame' src='"+this.href+"' width='100%' height='100%'></iframe>");
    $('#greybox').dialog('open');
    return false;
  });
	
	// From http://dev.jqueryui.com/ticket/3613
	// Cookie persistence missing
	// start
	
	$("#locale")
	.selectmenu({
		style: 'dropdown',
		icons: [
			{find: '.en'},
			{find: '.de'}
		]
	})
	.change(function(){
		this.form.submit();
	});	
	
	function updateCSS(theme){
		var cssLink = $('<link href="/stylesheets/compiled/jquery.ui/' + theme.toLowerCase().replace(/ /,"-") + '.css " type="text/css" rel="Stylesheet" class="ui-theme" />');
		var head = $("#demoframe").contents().find("head");
		head.append(cssLink);
		
		//	if( $("link.ui-theme").size() > 3){
		//	$("link.ui-theme:first").remove();
		//}
	};

  $('#switcher').themeswitcher({
		initialText: I18n.t('txt.ui.theme-switcher.initial'),
    buttonPreText: I18n.t('txt.ui.theme-switcher.button'),	
		onClose: function(){
			updateCSS($.cookie('jquery-ui-theme'));	
	  }
	});
	
	$('#navpanel').panel({
    'collapsed':true
    //'collapseType':'slide-left',
    //'stackable':false
  });
	
	$("#configure_navigation").button({
    icons: {
      primary: 'ui-icon-star'
    },
    text: false
  });
	
	$("#configure_navigation").click(function() {
    $("[name=contentFrame]").attr("src", "/navigation");
  });
	
  $("#license").dialog({
    autoOpen: false,
    bgiframe: true,
    width: 600,
    modal: true,
    show: 'bounce',
    hide: 'clip'
  });

  $('#show_license').click(function() {
    $('#license').dialog('open');
    return false;
  });
 
  setTimeout(function(){$('div.success, div.notice, div.warning').fadeOut(1500);} , 10000);
  setTimeout(function(){$('div.error').fadeOut(1500);} , 20000);
});

jQuery(document).ready(function() {	
  // From http://dev.jqueryui.com/ticket/3613
	// Cookie persistence missing
	// start
  var accordion = $("#accordion");
	var index = $.cookie("accordion-active");
	var active;
	
	if (index !== null) {
		active = accordion.find("h3:eq(" + index + ")");
	} else {
		active = 0
	}
	
	accordion.accordion({
		autoHeight: false,
		collapsible: true,
		active: active
	});
	
	accordion.live('accordionchange', function(event, ui) {
		var index = $(this).find("h3").index ( ui.newHeader[0] ); 
		$.cookie("accordion-active", index, { path: "/" }); 
	});
  // End
		
	$(".tree").dynatree({
    // using default options
		autoCollapse: true,
    persist: true,
    selectMode: 2,
    imagePath: "/images/jquery/dynatree.vista/", // Image folder used for data.icon attribute.
    onPostInit: function(isReloading, isError) {
      this.reactivate();
    },
		onActivate: function(dtnode) {
      // Use our custom attribute to load the new target content:
      if( dtnode.data.url )
        $("[name=contentFrame]").attr("src", dtnode.data.url);
    },		
    onDblClick: function(dtnode, event){
      logMsg("onDblClick(%o, %o)", dtnode, event);
      dtnode.toggleExpand();
    }
  });
	
	$("#locale").change(function(){
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

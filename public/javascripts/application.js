jQuery.ajaxSetup({
	'beforeSend': function(xhr) {xhr.setRequestHeader("Accept", "text/javascript")}
})

jQuery.fn.submitWithAjax = function() {
	this.submit(function() {
    $.post($(this).attr("action"), $(this).serialize(), null, "script");
    return false;
  })
}

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
	
	accordion.bind('accordionchange', function(event, ui) {
		var index = $(this).find("h3").index ( ui.newHeader[0] ); 
		$.cookie("accordion-active", index, { path: "/" }); 
	});
  // End
		
	$(".tree").dynatree({
    // using default options
    title: "Title",
    rootVisible: false,
    persist: true,
    selectMode: 2,
    imagePath: "/images/jquery.ui/dynatree.vista/", // Image folder used for data.icon attribute.
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

  $('#switcher').themeswitcher();
	
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
});

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
  $("#accordion").accordion({
		autoHeight: false,
		collapsible: true
    /*active: false,
    fillSpace: true,
    navigation: true,
    header: '.accordionMenuItem'*/
  });

  /*$(".accordionMenuItem").click(function(event){
    window.location.hash=this.hash;
  });*/

	$(".tree").dynatree({
    // using default options
    title: "Title",
    rootVisible: false,
    persist: true,
    selectMode: 2,
    imagePath: "/images/jquery.ui/dynatree.vista/", // Image folder used for data.icon attribute.
    onClick: function(dtnode) {
      if( dtnode.data.url )
        //window.open(dtnode.data.url);
        window.location.href=(dtnode.data.url);
    },
    onDblClick: function(dtnode, event){
      logMsg("onDblClick(%o, %o)", dtnode, event);
      dtnode.toggleExpand();
    }
  });
	
	$("#locale").change(function(){
		this.form.submit();
	});
	

	$("#theme").change(function(){
		this.form.submit();
	});
});

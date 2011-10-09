jQuery("#speed").jqGrid({        
   	url:'bigset.php',
	datatype: "json",
	height: 255,
	width: 600,
   	colNames:['Index','Name', 'Code'],
   	colModel:[
   		{name:'item_id',index:'item_id', width:65},
   		{name:'item',index:'item', width:150},
   		{name:'item_cd',index:'item_cd', width:100}
   	],
   	rowNum:200,
   	rowList:[100,200,300],
   	mtype: "POST",
	rownumbers: true,
	rownumWidth: 40,
	gridview: true,
   	pager: '#speedp',
   	sortname: 'item_id',
    viewrecords: true,
    sortorder: "asc",
	caption: "Using gridview mode",
	gridComplete : function() {
		var tm = jQuery("#speed").jqGrid('getGridParam','totaltime');
		$("#speed_div").html("Render time: "+ tm+" ms ");
	}
	
});
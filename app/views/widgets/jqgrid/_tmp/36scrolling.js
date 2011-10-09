jQuery("#scrolling").jqGrid({        
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
   	rowNum:100,
   	mtype: "GET",
	rownumbers: true,
	rownumWidth: 40,
	gridview: true,
   	pager: '#pscrolling',
   	sortname: 'item_id',
    viewrecords: true,
    scroll: 1,
    sortorder: "asc",
	caption: "Loading data while scrolling"	
});
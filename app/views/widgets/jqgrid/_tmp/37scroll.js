jQuery("#scroll37").jqGrid({
   	url:'localset.php',
	datatype: "json",
	height: 255,
	width: 600,
   	colNames:['Index','Name', 'Code'],
   	colModel:[
   		{name:'item_id',index:'item_id', width:65, sorttype:'int'},
   		{name:'item',index:'item', width:150},
   		{name:'item_cd',index:'item_cd', width:100}
   	],
   	rowNum:50,
	rowTotal: 2000,
	rowList : [20,30,50],
	scroll:1,
	loadonce:true,
   	mtype: "GET",
	rownumbers: true,
	rownumWidth: 40,
	gridview: true,
   	pager: '#pscroll37',
   	sortname: 'item_id',
    viewrecords: true,
    sortorder: "asc",
	caption: "Virtual scrolling on local data"	
});

jQuery("#scroll37").jqGrid('navGrid','#pscroll37',{del:false,add:false,edit:false},{},{},{},{multipleSearch:true});

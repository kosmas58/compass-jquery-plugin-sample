jQuery("#multiple37").jqGrid({
   	url:'localset.php',
	datatype: "json",
	height: 255,
	width: 600,
   	colNames:['Index','Name', 'Code'],
   	colModel:[
   		{name:'item_id',index:'item_id', width:65, sorttype:'int'},
   		{name:'item',index:'item', width:150,searchoptions:{sopt:['eq','cn','gt','lt'],dataInit:function(e){ $(e).addClass("a"); }}},
   		{name:'item_cd',index:'item_cd', width:100, searchoptions:{dataInit:function(e){ $(e).addClass("b"); }}}
   	],
   	rowNum:50,
	rowTotal: 2000,
	rowList : [20,30,50],
	loadonce:true,
   	mtype: "GET",
	rownumbers: true,
	rownumWidth: 40,
	gridview: true,
   	pager: '#pmultiple37',
   	sortname: 'item_id',
    viewrecords: true,
    sortorder: "asc",
	caption: "Multiple search on local Data"	
});

jQuery("#multiple37").jqGrid('navGrid','#pmultiple37',{del:false,add:false,edit:false},{},{},{},{multipleSearch:true});


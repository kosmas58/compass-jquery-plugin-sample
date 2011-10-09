jQuery("#crud").jqGrid({
   	url:'server.php?q=2',
	datatype: "json",
   	colNames:['Inv No','Date', 'Client', 'Amount','Tax','Total','Notes'],
   	colModel:[
   		{name:'id',index:'id', width:55, editable:true, editoptions:{readonly:true}, sorttype:'int'},
   		{name:'invdate',index:'invdate', width:90, sorttype:'date', editable:true, editrules:{date:true},formatter:'date', datefmt:'d/m/Y'},
   		{name:'name',index:'name', width:100,editable:true},
   		{name:'amount',index:'amount', width:80, align:"right",editable:true,editrules:{number:true},sorttype:'number',formatter:'number'},
   		{name:'tax',index:'tax', width:80, align:"right",editable:true,editrules:{number:true},sorttype:'number',formatter:'number'},		
   		{name:'total',index:'total', width:80,align:"right",editable:true,editrules:{number:true},sorttype:'number',formatter:'number'},		
   		{name:'note',index:'note', width:150, sortable:false,editable:true}		
   	],
   	rowNum:10,
   	rowTotal: 50,
   	rowList:[10,20,30],
   	pager: '#pcrud',
   	sortname: 'id',
   	loadonce: true,
    viewrecords: true,
    sortorder: "desc",
    editurl: 'server.php', // this is dummy existing url
    caption:"CRUD on Local Data"
});
jQuery("#crud").jqGrid('navGrid','#pcrud',{});

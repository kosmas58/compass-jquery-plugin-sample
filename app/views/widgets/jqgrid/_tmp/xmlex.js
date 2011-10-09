jQuery("#list1").jqGrid({
   	url:'server.php?q=1',
	datatype: "xml",
   	colNames:['Inv No','Date', 'Client', 'Amount','Tax','Total','Notes'],
   	colModel:[
   		{name:'id',index:'id', width:75},
   		{name:'invdate',index:'invdate', width:90},
   		{name:'name',index:'name', width:100},
   		{name:'amount',index:'amount', width:80, align:"right"},
   		{name:'tax',index:'tax', width:80, align:"right"},		
   		{name:'total',index:'total', width:80,align:"right"},		
   		{name:'note',index:'note', width:150, sortable:false}		
   	],
   	rowNum:10,
   	autowidth: true,
   	rowList:[10,20,30],
   	pager: '#pager1',
   	sortname: 'id',
    viewrecords: true,
    sortorder: "desc",
    caption:"XML Example",
    editurl:"someurl.php"
});
jQuery("#list1").jqGrid('navGrid','#pager1',{edit:false,add:false,del:false});

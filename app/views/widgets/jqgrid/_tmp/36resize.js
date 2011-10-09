jQuery("#resize").jqGrid({
   	url:'server.php?q=2',
	datatype: "json",
   	colNames:['Inv No','Date', 'Client', 'Amount','Tax','Total','Notes'],
   	colModel:[
   		{name:'id',index:'id', width:55},
   		{name:'invdate',index:'invdate', width:90},
   		{name:'name',index:'name asc, invdate', width:100},
   		{name:'amount',index:'amount', width:80, align:"right"},
   		{name:'tax',index:'tax', width:80, align:"right"},		
   		{name:'total',index:'total', width:80,align:"right"},		
   		{name:'note',index:'note', width:150, sortable:false}		
   	],
   	rowNum:10,
    width:700,
   	rowList:[10,20,30],
   	pager: '#presize',
   	sortname: 'invdate',
    viewrecords: true,
    sortorder: "desc",
    caption:"New API Example"
});
jQuery("#resize").jqGrid('navGrid','#presize',{edit:false,add:false,del:false});
jQuery("#resize").jqGrid('gridResize',{minWidth:350,maxWidth:800,minHeight:100, maxHeight:350});
jQuery("#hideshow").jqGrid({        
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
   	rowList:[10,20,30],
   	pager: '#phideshow',
   	sortname: 'id',
    viewrecords: true,
    sortorder: "desc",
	caption:"Dynamic hide/show column groups"
});
jQuery("#hideshow").jqGrid('navGrid',"#phideshow",{edit:false,add:false,del:false});

jQuery("#hcg").click( function() {
	jQuery("#hideshow").jqGrid('hideCol',["amount","tax"]);
});
jQuery("#scg").click( function() {
	jQuery("#hideshow").jqGrid('showCol',["amount","tax"]);
});

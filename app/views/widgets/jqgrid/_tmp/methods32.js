jQuery("#method32").jqGrid({        
   	url:'server.php?q=1',
	datatype: "xml",
   	colNames:['Inv No','Date', 'Client', 'Amount','Tax','Total','Notes'],
   	colModel:[
   		{name:'id',index:'id', width:55},
   		{name:'invdate',index:'invdate', width:90},
   		{name:'name',index:'name', width:100},
   		{name:'amount',index:'amount', width:80, align:"right"},
   		{name:'tax',index:'tax', width:80, align:"right"},		
   		{name:'total',index:'total', width:80,align:"right"},		
   		{name:'note',index:'note', width:150, sortable:false}		
   	],
   	rowNum:10,
   	rowList:[10,20,30],
   	pager: '#pmethod32',
   	sortname: 'id',
    viewrecords: true,
    sortorder: "desc",
    caption:"setLabel/setCell methods",
    multiselect: true,
    loadui: "block"
});
jQuery("#method32").jqGrid('navGrid','#pmethod32',{edit:false,add:false,del:false});

jQuery("#shc").click( function() {
	$("#method32").jqGrid('setLabel',"tax","Tax Amt",{'font-weight': 'bold','font-style': 'italic'});
});

jQuery("#scc").click( function() {
	$("#method32").jqGrid('setCell',"12","tax","",{'font-weight': 'bold',color: 'red','text-align':'center'});
});
jQuery("#cdat").click( function() {
	$("#method32").jqGrid('clearGridData');
});

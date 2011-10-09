jQuery("#jqrtl").jqGrid({
    direction: "rtl",
	recordpos : "left",
   	url:'server.php?q=2',
	datatype: "json",
   	colNames:['Inv No','Date', 'Client', 'Amount','Tax','Total','Notes'],
   	colModel:[
   		{name:'id',index:'id', width:55, editable:true},
   		{name:'invdate',index:'invdate', width:90,editable:true},
   		{name:'name',index:'name asc, invdate', width:100,editable:true},
   		{name:'amount',index:'amount', width:80, align:"right",editable:true},
   		{name:'tax',index:'tax', width:80, align:"right",editable:true},		
   		{name:'total',index:'total', width:80,align:"right",editable:true},		
   		{name:'note',index:'note', width:150, sortable:false,editable:true}		
   	],
   	rowNum:10,
   	rowList:[10,20,30],
   	pager: '#pjqrtl',
   	sortname: 'invdate',
    viewrecords: true,
    sortorder: "desc",
    caption:"RTL Example",
	editurl: "server.php?q=dummy"
});
jQuery("#jqrtl").jqGrid('navGrid','#pjqrtl',{position:"right"},{reloadAfterSubmit:false},{reloadAfterSubmit:false});

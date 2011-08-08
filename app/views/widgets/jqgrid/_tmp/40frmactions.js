jQuery("#frmac").jqGrid({
   	url:'server.php?q=4',
	datatype: "json",
   	colNames:[' ', 'Inv No', 'Date', 'Client', 'Amount','Tax','Total','Notes'],
   	colModel:[
		{name: 'myac', width:80, fixed:true, sortable:false, resize:false, formatter:'actions',
			formatoptions:{keys:true}},
   		{name:'id',	key : true,	index:'id',	width:55},
   		{name:'invdate',index:'invdate', width:90},
   		{name:'name', index:'name',	width:100},
   		{name:'amount',index:'amount', width:80, align:"right", editable:true},
   		{name:'tax',index:'tax', width:80, align:"right", editable:true},
   		{name:'total',index:'total', width:80,align:"right", editable:true},
   		{name:'note',index:'note', width:150, sortable:false, editable:true}
   	],
   	rowNum:10,
    width:700,
   	rowList:[10,20,30],
   	pager: '#pfrmac',
   	sortname: 'invdate',
    viewrecords: true,
    sortorder: "desc",
	jsonReader: {
		repeatitems : false
	},
	caption: "Keyboard Navigation",
	height: '100%',
	editurl : 'server.php?q=dummy'
});
jQuery("#kfrmac").jqGrid('navGrid','#pfrmac',{edit:false,add:false,del:false});

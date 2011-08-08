jQuery("#cmtmpl").jqGrid({
   	url:'server.php?q=4',
	datatype: "json",
   	colNames:['Inv No', 'Date', 'Client', 'Amount','Tax','Total','Notes'],
   	colModel:[
   		{name:'id',	key : true,	index:'id',	width:55},
   		{name:'invdate',index:'invdate', width:90},
   		{name:'name', index:'name',	width:100},
   		{name:'amount',index:'amount', width:80, align:"right"},
   		{name:'tax',index:'tax', width:80, align:"right"},		
   		{name:'total',index:'total', width:80,align:"right"},		
   		{name:'note',index:'note', width:150}		
   	],
    // define a model where all fields are not sortable,
    // this setting overwrite the deafult one for all fields
    cmTemplate: {sortable:false},
   	rowNum:10,
    width:700,
   	rowList:[10,20,30],
   	pager: '#pcmtmpl',
   	sortname: 'invdate',
    viewrecords: true,
    sortorder: "desc",
	jsonReader: {
		repeatitems : false
	},
	caption: "Column model templates",
	height: '100%'
});
jQuery("#cmtmpl").jqGrid('navGrid','#pcmtmpl',{edit:false,add:false,del:false});


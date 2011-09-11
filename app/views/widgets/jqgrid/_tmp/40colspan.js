jQuery("#colspan").jqGrid({
   	url:'server.php?q=4',
	datatype: "json",
   	colNames:['Date', 'Inv No', 'Client', 'Amount','Tax','Total','Notes'],
   	colModel:[
   		{name:'invdate',index:'invdate', width:90},
   		{
			name:'id',
			key : true,
			index:'id',
			width:55,
			cellattr: function(rowId, value, rowObject, colModel, arrData) {
				return ' colspan=2';
			},
			formatter : function(value, options, rData){
				return "Invoce: "+value + " - "+rData['name'];
			}
		},
   		{name:'name', index:'name',	width:100,
			cellattr: function(rowId, value, rowObject, colModel, arrData) {
				return " style=display:none; ";
			}
		},
   		{name:'amount',index:'amount', width:80, align:"right"},
   		{name:'tax',index:'tax', width:80, align:"right"},		
   		{name:'total',index:'total', width:80,align:"right"},		
   		{name:'note',index:'note', width:150, sortable:false}		
   	],
   	rowNum:10,
    width:700,
   	rowList:[10,20,30],
   	pager: '#pcolspan',
   	sortname: 'invdate',
    viewrecords: true,
    sortorder: "desc",
	jsonReader: {
		repeatitems : false
	},
	caption: "Data colspan",
	height: '100%'
});
jQuery("#colspan").jqGrid('navGrid','#pcolspan',{edit:false,add:false,del:false});

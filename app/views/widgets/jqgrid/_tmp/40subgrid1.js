jQuery("#sg1").jqGrid({
   	url:'server.php?q=1',
	datatype: "xml",
	height: 190,
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
   	rowNum:8,
   	rowList:[8,10,20,30],
   	pager: '#psg1',
   	sortname: 'id',
    viewrecords: true,
    sortorder: "desc",
	multiselect: false,
	subGrid: true,
	caption: "Custom Icons in Subgrid",
	// define the icons in subgrid
    subGridOptions: {
        "plusicon"  : "ui-icon-triangle-1-e",
        "minusicon" : "ui-icon-triangle-1-s",
        "openicon"  : "ui-icon-arrowreturn-1-e"
	},
	subGridRowExpanded: function(subgrid_id, row_id) {
		var subgrid_table_id, pager_id;
		subgrid_table_id = subgrid_id+"_t";
		pager_id = "p_"+subgrid_table_id;
		$("#"+subgrid_id).html("<table id='"+subgrid_table_id+"' class='scroll'></table><div id='"+pager_id+"' class='scroll'></div>");
		jQuery("#"+subgrid_table_id).jqGrid({
			url:"subgrid.php?q=2&id="+row_id,
			datatype: "xml",
			colNames: ['No','Item','Qty','Unit','Line Total'],
			colModel: [
				{name:"num",index:"num",width:80,key:true},
				{name:"item",index:"item",width:130},
				{name:"qty",index:"qty",width:70,align:"right"},
				{name:"unit",index:"unit",width:70,align:"right"},
				{name:"total",index:"total",width:70,align:"right",sortable:false}
			],
		   	rowNum:20,
		   	pager: pager_id,
		   	sortname: 'num',
		    sortorder: "asc",
		    height: '100%'
		});
		jQuery("#"+subgrid_table_id).jqGrid('navGrid',"#"+pager_id,{edit:false,add:false,del:false})
	}
});
jQuery("#sg1").jqGrid('navGrid','#psg1',{add:false,edit:false,del:false});

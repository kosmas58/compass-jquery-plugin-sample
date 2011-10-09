jQuery("#list10").jqGrid({
   	url:'server.php?q=2',
	datatype: "json",
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
   	pager: '#pager10',
   	sortname: 'id',
    viewrecords: true,
    sortorder: "desc",
	multiselect: false,
	caption: "Invoice Header",
	onSelectRow: function(ids) {
		if(ids == null) {
			ids=0;
			if(jQuery("#list10_d").jqGrid('getGridParam','records') >0 )
			{
				jQuery("#list10_d").jqGrid('setGridParam',{url:"subgrid.php?q=1&id="+ids,page:1});
				jQuery("#list10_d").jqGrid('setCaption',"Invoice Detail: "+ids)
				.trigger('reloadGrid');
			}
		} else {
			jQuery("#list10_d").jqGrid('setGridParam',{url:"subgrid.php?q=1&id="+ids,page:1});
			jQuery("#list10_d").jqGrid('setCaption',"Invoice Detail: "+ids)
			.trigger('reloadGrid');			
		}
	}
});
jQuery("#list10").jqGrid('navGrid','#pager10',{add:false,edit:false,del:false});
jQuery("#list10_d").jqGrid({
	height: 100,
   	url:'subgrid.php?q=1&id=0',
	datatype: "json",
   	colNames:['No','Item', 'Qty', 'Unit','Line Total'],
   	colModel:[
   		{name:'num',index:'num', width:55},
   		{name:'item',index:'item', width:180},
   		{name:'qty',index:'qty', width:80, align:"right"},
   		{name:'unit',index:'unit', width:80, align:"right"},		
   		{name:'linetotal',index:'linetotal', width:80,align:"right", sortable:false, search:false}
   	],
   	rowNum:5,
   	rowList:[5,10,20],
   	pager: '#pager10_d',
   	sortname: 'item',
    viewrecords: true,
    sortorder: "asc",
	multiselect: true,
	caption:"Invoice Detail"
})
jQuery("#list10_d").jqGrid('navGrid','#pager10_d',{add:false,edit:false,del:false});
jQuery("#ms1").click( function() {
	var s;
	s = jQuery("#list10_d").jqGrid('getGridParam','selarrrow');
	alert(s);
});

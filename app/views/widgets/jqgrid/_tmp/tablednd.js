jQuery("#listdnd").tableDnD({scrollAmount:0});
jQuery("#listdnd").jqGrid({
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
   	pager: '#pagerdnd',
   	sortname: 'id',
    viewrecords: true,
    sortorder: "desc",
    caption:"XML Example",
    gridComplete: function() {
    	$("#_empty","#listdnd").addClass("nodrag nodrop");
    	jQuery("#listdnd").tableDnDUpdate();
    },    
    editurl:"someurl.php"
});
jQuery("#listdnd").jqGrid('navGrid','#pager1',{edit:false,add:false,del:false});

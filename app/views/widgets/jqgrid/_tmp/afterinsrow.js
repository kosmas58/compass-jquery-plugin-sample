jQuery("#ainsrow").jqGrid({        
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
   	pager: '#painsrow',
   	sortname: 'id',
    viewrecords: true,
    sortorder: "desc",
    caption:"After insert row event",
    multiselect: true,
    afterInsertRow: function(rowid, aData){
    	switch (aData.name) {
    		case 'Client 1':
    			jQuery("#ainsrow").jqGrid('setCell',rowid,'total','',{color:'green'});
    		break;
    		case 'Client 2':
    			jQuery("#ainsrow").jqGrid('setCell',rowid,'total','',{color:'red'});
    		break;
    		case 'Client 3':
    			jQuery("#ainsrow").jqGrid('setCell',rowid,'total','',{color:'blue'});
    		break;
    		
    	}
    }
});
jQuery("#ainsrow").jqGrid('navGrid','#painsrow',{edit:false,add:false,del:false});

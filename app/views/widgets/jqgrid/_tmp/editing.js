jQuery("#editgrid").jqGrid({        
   	url:'editing.php?q=1',
	datatype: "xml",
   	colNames:['Inv No','Date', 'Client', 'Amount','Tax','Total','Closed','Ship via','Notes'],
   	colModel:[
   		{name:'id',index:'id', width:55,editable:false,editoptions:{readonly:true,size:10}},
   		{name:'invdate',index:'invdate', width:80,editable:true,editoptions:{size:10}},
   		{name:'name',index:'name', width:90,editable:true,editoptions:{size:25}},
   		{name:'amount',index:'amount', width:60, align:"right",editable:true,editoptions:{size:10}},
   		{name:'tax',index:'tax', width:60, align:"right",editable:true,editoptions:{size:10}},		
   		{name:'total',index:'total', width:60,align:"right",editable:true,editoptions:{size:10}},
		{name:'closed',index:'closed',width:55,align:'center',editable:true,edittype:"checkbox",editoptions:{value:"Yes:No"}},
		{name:'ship_via',index:'ship_via',width:70, editable: true,edittype:"select",editoptions:{value:"FE:FedEx;TN:TNT"}},
   		{name:'note',index:'note', width:100, sortable:false,editable: true,edittype:"textarea", editoptions:{rows:"2",cols:"20"}}		
   	],
   	rowNum:10,
   	rowList:[10,20,30],
   	pager: '#pagered',
   	sortname: 'id',
    viewrecords: true,
    sortorder: "desc",
    caption:"Editing Example",
    editurl:"someurl.php"
});
$("#bedata").click(function(){
	var gr = jQuery("#editgrid").jqGrid('getGridParam','selrow');
	if( gr != null ) jQuery("#editgrid").jqGrid('editGridRow',gr,{height:280,reloadAfterSubmit:false});
	else alert("Please Select Row");
});

function mycheck(value, name) {
	if(parseFloat(value) >= 200 && parseFloat(value)<=300) {
		return [true,"",""];
	} else {
		return [false,name+": The value should be between 200 and 300!",""];
	}
}
jQuery("#custv").jqGrid({
   	url:'server.php?q=2',
	datatype: "json",
   	colNames:['Inv No','Date', 'Client', 'Amount','Tax','Total','Notes'],
   	colModel:[
   		{name:'id',index:'id', width:55, editable:true},
   		{name:'invdate',index:'invdate', width:90,editable:true},
   		{name:'name',index:'name asc, invdate', width:100,editable:true},
   		{name:'amount',index:'amount', width:80, align:"right",editable:true,editrules:{custom:true,custom_func:mycheck}},
   		{name:'tax',index:'tax', width:80, align:"right",editable:true},		
   		{name:'total',index:'total', width:80,align:"right",editable:true},		
   		{name:'note',index:'note', width:150, sortable:false,editable:true}		
   	],
   	rowNum:10,
   	rowList:[10,20,30],
   	pager: '#pcustv',
   	sortname: 'invdate',
    viewrecords: true,
    sortorder: "desc",
    caption:"Custom Validation",
	editurl: "server.php?q=dummy"
});
jQuery("#custv").jqGrid('navGrid','#pcustv',{del:false},{reloadAfterSubmit:false},{reloadAfterSubmit:false});

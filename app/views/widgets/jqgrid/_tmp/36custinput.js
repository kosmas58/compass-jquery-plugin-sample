var lastsel;
function my_input(value, options) {
	return $("<input type='text' size='10' value='"+value+"'/>");
}
function my_value(value) {
	return "My value: "+value.val();
}
jQuery("#cinput").jqGrid({
   	url:'server.php?q=2',
	datatype: "json",
   	colNames:['Inv No','Date', 'Client', 'Amount','Tax','Total','Notes'],
   	colModel:[
   		{name:'id',index:'id', width:55, editable:true},
   		{name:'invdate',index:'invdate', width:90,editable:true},
   		{name:'name',index:'name asc, invdate', width:100,editable:true, edittype:'custom', editoptions:{custom_element:my_input,custom_value:my_value}},
   		{name:'amount',index:'amount', width:80, align:"right",editable:true},
   		{name:'tax',index:'tax', width:80, align:"right",editable:true},		
   		{name:'total',index:'total', width:80,align:"right",editable:true},		
   		{name:'note',index:'note', width:150, sortable:false,editable:true}		
   	],
	onSelectRow: function(id){
		if(id && id!==lastsel){
			jQuery('#cinput').jqGrid('restoreRow',lastsel);
			jQuery('#cinput').jqGrid('editRow',id,true);
			lastsel=id;
		}
	},
   	rowNum:10,
   	rowList:[10,20,30],
   	pager: '#pcinput',
   	sortname: 'invdate',
    viewrecords: true,
    sortorder: "desc",
    caption:"Custom Input",
	editurl: "server.php?q=dummy"
});

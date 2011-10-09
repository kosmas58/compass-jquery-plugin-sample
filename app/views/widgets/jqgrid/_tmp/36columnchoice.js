jQuery("#colch").jqGrid({
   	url:'server.php?q=2',
	datatype: "json",
   	colNames:['Inv No','Date', 'Client', 'Amount','Tax','Total','Notes'],
   	colModel:[
   		{name:'id',index:'id', width:55},
   		{name:'invdate',index:'invdate', width:90},
   		{name:'name',index:'name asc, invdate', width:100},
   		{name:'amount',index:'amount', width:80, align:"right"},
   		{name:'tax',index:'tax', width:80, align:"right"},
   		{name:'total',index:'total', width:80,align:"right"},
   		{name:'note',index:'note', width:150, sortable:false, hidden:true}
   	],
   	rowNum:10,
    width:700,
   	rowList:[10,20,30],
   	pager: '#pcolch',
   	sortname: 'invdate',
    shrinkToFit :false,
    viewrecords: true,
    sortorder: "desc",
    caption:"Column Chooser Example"
});
jQuery("#colch").jqGrid('navGrid','#pcolch',{add:false,edit:false,del:false,search:false,refresh:false});
jQuery("#colch").jqGrid('navButtonAdd','#pcolch',{
    caption: "Columns",
    title: "Reorder Columns",
    onClickButton : function (){
        jQuery("#colch").jqGrid('columnChooser');
    }
});
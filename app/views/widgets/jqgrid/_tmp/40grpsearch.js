jQuery("#grps").jqGrid({
   	url:'search_adv.php?q=1',
	datatype: "json",
   	colNames:['Inv No', 'Date', 'Client', 'Amount','Tax','Total','Notes'],
   	colModel:[
   		{name:'id',	key : true,index:'a.id',width:55, sorttype:'int'},
   		{name:'invdate',index:'a.invdate', width:90 },
   		{name:'name', index:'b.name',width:100},
   		{name:'amount',index:'a.amount', width:80, align:"right", sorttype:'number'},
   		{name:'tax',index:'a.tax', width:80, align:"right",sorttype:'number'},
   		{name:'total',index:'a.total', width:80,align:"right", sorttype:'number'},
   		{name:'note',index:'a.note', width:150, sortable:false}
   	],
   	rowNum:10,
	width:700,
   	rowList:[10,20,30],
   	pager: '#pgrps',
   	sortname: 'invdate',
	viewrecords: true,
    	sortorder: "desc",
	caption: "Complex search",
	height: '100%'
});
jQuery("#grps").jqGrid('navGrid','#pgrps',
{edit:false,add:false,del:false},
{},
{},
{},
{multipleSearch:true, multipleGroup:true, resize: true, closeOnEscape: true}
);

jQuery("#grps1").jqGrid({
   	url:'search_adv.php?q=1',
	datatype: "json",
   	colNames:['Inv No', 'Date', 'Client', 'Amount','Tax','Total','Notes'],
   	colModel:[
   		{name:'id',	key : true,	index:'a.id',	width:55, searchtype:"integer"},
   		{name:'invdate',index:'a.invdate', width:90},
   		{name:'name', index:'b.name',	width:100},
   		{name:'amount',index:'a.amount', width:80, align:"right", searchtype:"number"},
   		{name:'tax',index:'a.tax', width:80, align:"right", searchtype:"number"},
   		{name:'total',index:'a.total', width:80,align:"right", searchtype:"number"},
   		{name:'note',index:'a.note', width:150, sortable:false}
   	],
   	rowNum:10,
    width:700,
   	rowList:[10,20,30],
   	pager: '#pgrps1',
   	sortname: 'invdate',
    viewrecords: true,
    sortorder: "desc",
	caption: "Show query in search",
	height: '100%'
});
jQuery("#grps1").jqGrid('navGrid','#pgrps1',
{edit:false,add:false,del:false},
{},
{},
{},
{multipleSearch:true, multipleGroup:true, showQuery: true}
);

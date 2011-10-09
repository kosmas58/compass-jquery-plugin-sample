jQuery("#48remote2").jqGrid({
   	url:'server.php?q=2',
	datatype: "json",
   	colNames:['Inv No','Date', 'Client', 'Amount','Tax','Total','Notes'],
   	colModel:[
   		{name:'id',index:'id', width:55, editable:true, sorttype:'int',summaryType:'count', summaryTpl : '({0}) total'},
   		{name:'invdate',index:'invdate', width:90, sorttype:'date', formatter:'date', datefmt:'d/m/Y'},
   		{name:'name',index:'name', width:100},
   		{name:'amount',index:'amount', width:80, align:"right", sorttype:'number',formatter:'number',summaryType:'sum'},
   		{name:'tax',index:'tax', width:80, align:"right",sorttype:'number',formatter:'number',summaryType:'sum'},		
   		{name:'total',index:'total', width:80,align:"right",sorttype:'number',formatter:'number', summaryType:'sum'},
   		{name:'note',index:'note', width:150, sortable:false,editable:true}		
   	],
   	rowNum:10,
   	rowList:[10,20,30],
   	height: 'auto',
   	pager: '#p48remote2',
   	sortname: 'invdate',
    viewrecords: true,
    sortorder: "desc",
    caption:"Grouping with remote data",
    grouping: true,
   	groupingView : {
   		groupField : ['name'],
   		groupColumnShow : [true],
   		groupText : ['<b>{0}</b>'],
   		groupCollapse : false,
		groupOrder: ['asc'],
		groupSummary : [true],
		groupDataSorted : true
   	},
    footerrow: true,
    userDataOnFooter: true
});
jQuery("#48remote2").jqGrid('navGrid','#p48remote2',{add:false,edit:false,del:false});

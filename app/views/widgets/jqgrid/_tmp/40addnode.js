jQuery("#addtree").jqGrid({
   	url: 'server.php?q=tree',
	treedatatype: "xml",
	mtype: "POST",
   	colNames:["id","Account","Acc Num", "Debit", "Credit","Balance"],
   	colModel:[
   		{name:'id',index:'id', width:1,hidden:true,key:true, editable:true},
   		{name:'name',index:'name', width:180, editable:true},
   		{name:'num',index:'acc_num', width:80, align:"center",editable:true},
   		{name:'debit',index:'debit', width:80, align:"right",editable:true},
   		{name:'credit',index:'credit', width:80,align:"right",editable:true},
   		{name:'balance',index:'balance', width:80,align:"right",editable:true}
   	],
	height:'auto',
	pager : "#paddtree",
    treeGrid: true,
	ExpandColumn : 'name',
	editurl:'server.php?q=dummy',
	caption: "Add Tree node example"
});
jQuery("#addtree").jqGrid('navGrid',"#paddtree");
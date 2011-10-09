/*
jQuery("#single").jqGrid({
   	url:'localset.php',
	datatype: "json",
	height: 255,
	width: 600,
   	colNames:['Index','Name', 'Code'],
   	colModel:[
   		{name:'item_id',index:'item_id', width:65, sorttype:'int'},
   		{name:'item',index:'item', width:150},
   		{name:'item_cd',index:'item_cd', width:100}
   	],
   	rowNum:50,
	rowTotal: 2000,
	rowList : [20,30,50],
	loadonce:true,
   	mtype: "GET",
	rownumbers: true,
	rownumWidth: 40,
	gridview: true,
   	pager: '#psingle',
   	sortname: 'item_id',
    viewrecords: true,
    sortorder: "asc",
	caption: "Single search on local data"	
});
jQuery("#single").jqGrid('navGrid','#psingle',{del:false,add:false,edit:false});
*/

$("#single").jqGrid({
        url: 'server.json',
        datatype: "json",
        height: 340,
        colNames: ['DataType', 'KeyWords', 'DoTime', 'DataCount', 'SiteCount'],
        colModel: [
            { name: 'DataType', index: 'DataType', width: '15%', sortable: false, align: 'center' },
            { name: 'KeyWords', index: 'KeyWords', width: '50%', sortable: false, align: 'left' },
            { name: 'DoTime', index: 'DoTime', width: '20%', align: 'center'},
            { name: 'DataCount', index: 'DataCount', width: '15%', align: 'center', sorttype: 'int' },
            { name: 'SiteCount', index: 'SiteCount', width: '0%', hidden: true,sortable: false}
        ],
        jsonReader: {
            repeatitems: false
        },
        loadui: 'block',
        viewrecords: true,
        autowidth: true,
        pagerpos: 'center',
        rowNum: 20,
        rowList: [10, 20, 30],
        pgtext: "s {0} from {1} s",
        recordtext: 's {0} – {1} sss {2} fff',
        emptyrecords: 'empty',
        pager: "#psingle",
        onPaging: function(which_button) {
            $("#single").jqGrid('setGridParam',{ datatype: 'json' });
        },
        loadError: function(xhr, status, error) {
        },
        loadComplete: function() {
            $("#single").jqGrid('setGridParam',{ datatype: 'local' });
        }
    }).jqGrid('navGrid', '#single', { search: false, edit: false, add: false, del: false });
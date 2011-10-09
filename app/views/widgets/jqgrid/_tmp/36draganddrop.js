jQuery("#grid1").jqGrid({
    datatype: "local",
    height: 100,
    colNames: ['Id1', 'Name1', 'Values1'],
    colModel: [{
        name: 'id1',
        index: 'id',
        width: 100
        }, {
        name: 'name1',
        index: 'name',
        width: 100
        }, {
        name: 'values1',
        index: 'values',
        width: 200
    }],
    caption: 'Grid 1',
    pager: '#pgrid1'
});
jQuery("#grid2").jqGrid({
    datatype: "local",
    height: 100,
    colNames: ['Id2', 'Name2', 'Values2'],
    colModel: [{
        name: 'id2',
        index: 'id',
        width: 100
        }, {
        name: 'name2',
        index: 'name',
        width: 100
        }, {
        name: 'values2',
        index: 'values',
        width: 200
    }],
    caption: 'Grid 2',
    pager: '#pgrid2'
});
jQuery("#grid3").jqGrid({
    datatype: "local",
    height: 'auto',
    colNames: ['Id3', 'Name3', 'Values3'],
    colModel: [{
        name: 'id3',
        index: 'id',
        width: 100
        }, {
        name: 'name3',
        index: 'name',
        width: 100
        }, {
        name: 'values3',
        index: 'values',
        width: 200
    }],
    caption: 'Grid 3',
    pager: '#pgrid3'
});
var mydata1 = [
    {id1:"1",name1:"test1",values1:'One'},
    {id1:"2",name1:"test2",values1:'Two'},
    {id1:"3",name1:"test3",values1:'Three'}
];
var mydata2 = [
    {id2:"11",name2:"test11",values2:'One1'},
    {id2:"21",name2:"test21",values2:'Two1'},
    {id2:"31",name2:"test31",values2:'Three1'}
];
var mydata3 = [
    {id3:"12",name3:"test12",values3:'One2'},
    {id3:"22",name3:"test22",values3:'Two2'},
    {id3:"32",name3:"test32",values3:'Three2'}
];
for (var i = 0; i <= mydata1.length; i++) {
    jQuery("#grid1").jqGrid('addRowData',i + 1, mydata1[i]);
    jQuery("#grid2").jqGrid('addRowData',i + 1, mydata2[i]);
    jQuery("#grid3").jqGrid('addRowData',i + 1, mydata3[i]);
}
jQuery("#grid1").jqGrid('gridDnD',{connectWith:'#grid2,#grid3'});
jQuery("#grid2").jqGrid('gridDnD',{connectWith:'#grid1'});

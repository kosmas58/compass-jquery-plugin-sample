$("#cnvxml").click(function(){
	$("#xmlist1").jqGrid('jqGridImport',{impurl:"testxml.xml"});
	$(this).hide();
});
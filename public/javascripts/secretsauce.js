jQuery.fn.sauce = function () {
	$(this).find(".sauceDialog").sauceDialog();
	$(".sauceGrid").sauceGrid();
	$(".sauceForm").sauceForm();
  $(".sauceDynTree").sauceDynTree();
}

$(document).ready(function() {
	$(document).sauce();
});


jQuery.fn.sauceDialog = function() {
	for(i=0;i<$(this).size();i++) {
		var options = $.evalJSON($(this[i]).attr("dialogOptions"));
		if($(this[i]).attr("url") != undefined) {
			if($(this[i]).attr("preload") != undefined) {
				div = this[i]
				$.ajax({
					url: $(this[i]).attr("url"),
					dataType: "html",
					success: function(result) {
						$(div).append(result);
						$(div).sauce();
					}
				});
			} else {
				options["open"] = function() {
					var div = this;
					$.ajax({
						url: $(this).attr("url"),
						dataType: "html",
						success: function(result) {
							$(div).children().remove();
							$(div).append(result);
							$(div).sauce();
						}
					});
				}
			}
		}
		$(this[i]).dialog(options);
		$(this[i]).css("visibility", "visible")
	}
}

dyntreeOptions = {};
dyntreeData = {};

createAddLink = function(ul, level) {
  var options = dyntreeOptions[$(ul).closest('div.sauceDynTree').attr('sauceDynTreeName')];
  new_html = '<li class="addDynTreeItem"><a href="#" onClick="addDynTreeItem(this, \'\')">\
              add #{label}</a></li>';
  new_html = new_html.replace('#{label}', options.levels[level]);
  $(ul).append(new_html);
}

removeDynTreeItem = function(elem) {
  var li = $(elem).parents('li')[0];
  $(li).remove();
}

addDynTreeItem = function(elem, value) {
  var options = dyntreeOptions[$(elem).closest('div.sauceDynTree').attr('sauceDynTreeName')];
  var ul = elem;
  if (elem.tagName != 'UL') {
    ul = $(elem).parents('ul')[0];
  }
  ul = $(ul);

  var level = parseInt(ul.attr("sauceDynTreeLevel"));

  var new_html = '<li class="newSauceDynTreeLi sauceDynTreeInput"></li>';
  var lis = ul.children('li');
  if (lis.length == 0) {
    ul.append(new_html);
  } else if ($(lis[lis.length-1]).hasClass('addDynTreeItem')) {
    $(lis[lis.length-1]).before(new_html);
  } else {
    $(lis[lis.length-1]).after(new_html);
  }
  var new_li = $(ul.find(".newSauceDynTreeLi"));
  new_li.removeClass("newSauceDynTreeLi");

  var level_indexes = [];
  var working_li;
  var li_hierarchy = ul.parents('li').get().reverse();
  li_hierarchy[li_hierarchy.length] = new_li;
  if (level == 0) {
    level_indexes = [ul.children('li').index(new_li)];
  } else {
    for (i=0; i <= level; i++) {
      working_li = li_hierarchy[i];
      level_indexes[i] = $(working_li).parent().children('li.sauceDynTreeInput').index(working_li);
    }
  }
  var input_name = "";
  var input_id = "";
  var list_name;
  for (var i=0; i < level_indexes.length; i++) {
    list_name = options.levels[i] + '_list';
    if (i != 0) {
      list_name = '[' + list_name + ']';
    }
    input_name += list_name;
    input_id += list_name
    input_id += '[' + level_indexes[i] + ']';
    input_name += '[]';
  }
  input_name += '[value]';
  input_id += '[value]';

  new_html = options.levels[level] + ': ' + '<input type="text" id="#{id}" name="#{name}" value="#{val}"/>';
  if ((level > 0) || (options.include_top_level_add_link == true)) {
    new_html += '<a href="#" onClick="removeDynTreeItem(this)">x</a>';
  }
  new_html = new_html.replace('#{id}', input_id);
  new_html = new_html.replace('#{name}', input_name);
  if (value == undefined) {
    value = '';
  }
  new_html = new_html.replace('#{val}', value);
  new_li.append(new_html);

  if (level < options.levels.length-1) {
    new_li.append('<ul></ul>');
    var new_ul = new_li.find('ul')[0];
    $(new_ul).attr('sauceDynTreeLevel', level + 1);
    createAddLink(new_ul, level + 1);
  }
}

function populateDynTreeItem(ul, item_hash, level) {
  var options = dyntreeOptions[$(ul).closest('div.sauceDynTree').attr('sauceDynTreeName')];
  addDynTreeItem(ul, item_hash['value']);
  if (level < options.levels.length-1) {
    var lis = $(ul).find('li.sauceDynTreeInput');
    var new_li = $(lis[lis.length-1]);
    var sub_ul = new_li.find('ul')[0];
    var sublevel = level + 1;
    var sub_data_list = item_hash[options.levels[sublevel] + '_list'];
    for (var i=0; i<sub_data_list.length; i++) {
      populateDynTreeItem(sub_ul, sub_data_list[i], sublevel);
    }
  }
}

jQuery.fn.sauceDynTree = function() {
	for(i=0;i<$(this).size();i++) {
    var dyntree_div = $(this[i]);
    var options = $.evalJSON(dyntree_div.attr("sauceDynTreeOptions"));
    dyntreeOptions[options.levels[0]] = options;
    var data = $.evalJSON(dyntree_div.attr("sauceDynTreeData"));
    dyntreeData[options.levels[0]] = data;

    dyntree_div.attr('sauceDynTreeName', options.levels[0]);
    dyntree_div.html('');
    dyntree_div.append('<ul sauceDynTreeLevel="0"></ul>');
    var ul = dyntree_div.find('ul')[0];

    var top_level_list = options.levels[0] + "_list";
    if ((data != undefined) && (data[top_level_list] != undefined)) {
      for (j=0; j<data[top_level_list].length; j++) {
        populateDynTreeItem(ul, data[top_level_list][j], 0);
      }
    } else {
      addDynTreeItem(ul);
    }

    if (options.include_top_level_add_link == true) {
      createAddLink(ul, 0);
    }
  }
}


jQuery.fn.sauceForm = function() {
	for(i=0;i<$(this).size();i++) {
		var submit = $(this[i]).find(".sauceSubmit");
		if($(submit).parent().parent().hasClass("ui-dialog-content")) {
			var form = $(submit).parent()
			var buttonPane = "<div class='ui-dialog-buttonpane ui-widget-content ui-helper-clearfix'></div>";
			$(submit).parent().parent().parent().append(buttonPane);
			$(submit).parent().parent().parent().find(".ui-dialog-buttonpane").append($(submit).clone());
			$(submit).css("visibility", "hidden");
			var boxSubmit = $(submit).parent().parent().parent().find(".ui-dialog-buttonpane").find('.sauceSubmit');
			$(boxSubmit).addClass("ui-state-default ui-corner-all");
			$(boxSubmit).click(function() {
				$(form).submit();
			});
		}
	}
	$.each($(".sauceDate"), function() {
		var options = $.evalJSON($(this).attr("dateOptions"));
		$(this).datepicker(options);
	});
}

$(document).ready(function() {
	$(".ui-state-default").hover(
		function() {
			$(this).addClass("ui-state-hover");
		},
		function() {
			$(this).removeClass("ui-state-hover");
		}
	);
})

jQuery.fn.sauceGrid = function() {
	for(i=0;i<$(this).size();i++) {
		var gridParams = $.evalJSON($(this[i]).attr("gridOptions"))
		var data = $(this[i]).attr("id").split("_")
		gridParams["loadComplete"] = function() {
			//Association Links
			$(".sauceGridAssociation").unbind("click") // stupid, but for now it works
			$(".sauceGridAssociation").bind("click", function() {
				var clickData = $(this[i]).attr("id").split("_")
				var dialog = this[i]
				$.ajax({
					url: clickData[2],
					method: "get",
					dataType: "html",
					data: {association_model: clickData[0], association_id: clickData[1]},
					success: function(result) {
						$('#' + clickData[2] + '_table_dialog').append(result);
						$('#' + clickData[2] + '_grid').buildGrid();
						$('#' + clickData[2] + '_table_dialog').dialog({
							modal: true,
							draggable: false,
							resizable: false,
							height: "auto",
							width: "auto",
							title: clickData[0].singularize().capitalize() + ' ' + clickData[1] + ' ' + clickData[2].capitalize(),
							close: function(event, ui) {
								$(this[i]).dialog('destroy');
								$('#' + clickData[2] + '_table_dialog').children().remove();
							}
						});
					}
				});
			});
		}
		$(this[i]).jqGrid(gridParams).navGrid('#'+$(this[i]).attr("id")+'_pager', $.evalJSON(($(this[i]).attr("navOptions"))))
		// Actions
		//destroy
		if($('#' + data[0] + '_destroy_' + 'dialog').size() > 0) {
			var action = $('#' + data[0] + '_update_' + 'dialog')
			$(this[i]).navButtonAdd('#'+$(this[i]).attr("id")+'_pager', {
	        caption: "",
	        position: "first",
	        buttonicon: "ui-icon-trash",
					onClickButton: function() {
						var rowId = $('#' + data[0] + '_grid').getGridParam("selrow")
	          if(rowId == null) {
	              alert("You must first select a row.");
	          } else {
	            var sure = confirm("Are you sure?")
	            if(sure) {
	            $.ajax({
	              url:  data[0] + "/" + rowId,
	              type: "delete",
	              data: {authenticity_token: $('#' + data[0] + '_destroy_' + 'dialog').attr('authenticity_token')},
	              success: function() {
	                $('#' + data[0] + '_grid').trigger("reloadGrid");
	              }
	              });
	            }
	          }
					}
				});
		}
		// update
		if($('#' + data[0] + '_update_' + 'dialog').size() > 0) {
			var action = $('#' + data[0] + '_update_' + 'dialog')
			$(this[i]).navButtonAdd('#'+$(this[i]).attr("id")+'_pager', {
				caption: "",
				position: "first",
				buttonicon: "ui-icon-pencil",
				onClickButton: function() {
	        var rowId = $('#' + data[0] + '_grid').getGridParam("selrow")
	        if(rowId == null) {
	          alert("You must first select a row.");
	      	} else {
						$.ajax({
	            method: "get",
							url: data[0] + '/' + $(action).attr("action") + '/' + rowId,
							dataType: "html",
							success: function(result) {
								var dWidth = $(result).css("width");
	              var dHeight = $(result).css("height");
								if(!$(result).is("form")) {
	                $(action).dialog('close');
	                $('#' + data[0] + '_grid').trigger("reloadGrid");
								}	else {
									if($(action).find("form").size() > 0) {
		              	$(action).find("form").replaceWith(result);
										$(action).find('#' + data[0].singularize() + '_submit').hide();
									} else {
										$(action).append(result);
										$(action).find('#' + data[0].singularize() + '_submit').hide();
									}
	              }
								$(action).dialog({
									buttons: {
	                  "Save": function() {$(this).find("form").submit();},
	                  "Cancel": function() {$(this).dialog('close');}
	                },
									title: "Edit",
			            width: dWidth,
	               	height: dHeight,
	               	modal: true,
	               	draggable: false,
	               	resizable: false,
	               	close: function() {
	                	$(this[i]).dialog('destroy');
	                 	$(action).children().remove();
	               	}
	             });
							}
						});
					}
				}
			});
		}
		if($('#' + data[0] + '_create_' + 'dialog').size() > 0) {
			var action = $('#' + data[0] + '_create_' + 'dialog')
			$(this[i]).navButtonAdd('#'+$(this[i]).attr("id")+'_pager', {
				caption: "",
				position: "first",
				buttonicon: "ui-icon-plus",
				onClickButton: function() {
					$.ajax({
	          method: "get",
						url: data[0] + '/' + $(action).attr("action"),
						dataType: "html",
						success: function(result) {
							var dWidth = $(result).css("width");
	            var dHeight = $(result).css("height");
							if(!$(result).is("form")) {
	               $(action).dialog('close');
	               $('#' + data[0] + '_grid').trigger("reloadGrid");
							}	else {
								if($(action).find("form").size() > 0) {
	              	$(action).find("form").replaceWith(result);
									$(action).find('#' + data[0].singularize() + '_submit').hide();
								} else {
									$(action).append(result);
									$(action).find('#' + data[0].singularize() + '_submit').hide();
								}
	             }
							$(action).dialog({
								buttons: {
	                 "Save": function() {$(this).find("form").submit();},
	                 "Cancel": function() {$(this).dialog('close');}
	               },
								title: "Edit",
		            width: dWidth,
	              	height: dHeight,
	              	modal: true,
	              	draggable: false,
	              	resizable: false,
	              	close: function() {
	               	$(this[i]).dialog('destroy');
	              	}
	            });
						}
					});
				}
			});
		}
	}
}
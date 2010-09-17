
#NavigationTree
node_1 = NavigationTree.create(:parent_id => 0, :position => 0, :left => 1,  :right => 2, :level => 0, :title => 'ROOT').id
parent_id = node_1
node_2 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.name', :type => 'accordion', :icon => '/images/jstree/jquery-ui.png', :url => '')
parent_id = node_2
node_3 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.interactions.default', :type => 'folder', :icon => '/images/jstree/jquery-ui.png', :url => '')
parent_id = node_3
node_4 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.interactions.draggable.default', :type => 'folder', :icon => '/images/jstree/jquery-ui.png', :url => '')
parent_id = node_4
node_5 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/draggable/default')
node_6 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.interactions.draggable.events', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/draggable/events')
node_7 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.interactions.draggable.constrain-movement', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/draggable/constrain_movement')
node_8 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.interactions.draggable.delay-start', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/draggable/delay_start')
node_9 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.interactions.draggable.snap-to', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/draggable/snap_to')
node_10 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.interactions.draggable.scroll', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/draggable/scroll')
node_11 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.interactions.draggable.revert', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/draggable/revert')
node_12 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.interactions.draggable.visual-feedback', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/draggable/visual_feedback')
node_13 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.interactions.draggable.handle', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/draggable/handle')
node_14 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.ui.interactions.draggable.cursor-style', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/draggable/cursor_style')
node_15 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.ui.interactions.draggable.sortable', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/draggable/sortable')
parent_id = node_3
node_16 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.interactions.droppable.default', :type => 'folder', :icon => '/images/jstree/jquery-ui.png', :url => '')
parent_id = node_16
node_17 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/droppable/default')
node_18 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.interactions.droppable.accepted-elements', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/droppable/accepted_elements')
node_19 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.interactions.droppable.propagation', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/droppable/propagation')
node_20 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.interactions.droppable.visual-feedback', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/droppable/visual_feedback')
node_21 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.interactions.droppable.revert', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/droppable/revert')
node_22 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.interactions.droppable.shopping-cart', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/droppable/shopping_cart')
node_23 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.interactions.droppable.photo-manager', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/droppable/photo_manager')
parent_id = node_3
node_24 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.interactions.resizable.default', :type => 'folder', :icon => '/images/jstree/jquery-ui.png', :url => '')
parent_id = node_24
node_25 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/resizable/default')
node_26 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.interactions.resizable.aspect-ratio', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/resizable/aspect_ratio')
node_27 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.interactions.resizable.max-min', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/resizable/max_min')
node_28 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.interactions.resizable.constrain-area', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/resizable/constrain_area')
node_29 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.interactions.resizable.delay-start', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/resizable/delay_start')
node_30 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.interactions.resizable.snap-to-grid', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/resizable/snap_to_grid')
node_31 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.interactions.resizable.visual-feedback', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/resizable/visual_feedback')
node_32 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.interactions.resizable.synchronous-resize', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/resizable/synchronous_resize')
node_33 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.interactions.resizable.animate', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/resizable/animate')
node_34 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.ui.interactions.resizable.helper', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/resizable/helper')
node_35 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.ui.interactions.resizable.textarea', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/resizable/textarea')
parent_id = node_3
node_36 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.interactions.selectable.default', :type => 'folder', :icon => '/images/jstree/jquery-ui.png', :url => '')
parent_id = node_36
node_37 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/selectable/default')
node_38 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.interactions.selectable.serialize', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/selectable/serialize')
node_39 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.interactions.selectable.display-grid', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/selectable/display_grid')
parent_id = node_3
node_40 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.interactions.sortable.default', :type => 'folder', :icon => '/images/jstree/jquery-ui.png', :url => '')
parent_id = node_40
node_41 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/sortable/default')
node_42 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.interactions.sortable.placeholder', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/sortable/placeholder')
node_43 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.interactions.sortable.connect-lists', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/sortable/connect_lists')
node_44 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.interactions.sortable.connect-lists-through-tabs', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/sortable/connect_lists_through_tabs')
node_45 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.interactions.sortable.empty-lists', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/sortable/empty_lists')
node_46 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.interactions.sortable.items', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/sortable/items')
node_47 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.interactions.sortable.delay-start', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/sortable/delay_start')
node_48 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.interactions.sortable.display-grid', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/sortable/display_grid')
node_49 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.interactions.sortable.portlets', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/sortable/portlets')
parent_id = node_3
parent_id = node_2
node_50 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.default', :type => 'folder', :icon => '/images/jstree/jquery-ui.png', :url => '')
parent_id = node_50
node_51 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.widgets.accordion.default', :type => 'folder', :icon => '/images/jstree/jquery-ui.png', :url => '')
parent_id = node_51
node_52 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/accordion/default')
node_53 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.accordion.fillspace', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/accordion/fillspace')
node_54 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.accordion.no-auto-height', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/accordion/no_auto_height')
node_55 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.accordion.collapsible', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/accordion/collapsible')
node_56 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.accordion.mouseover', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/accordion/mouseover')
node_57 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.accordion.hoverintent', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/accordion/hoverintent')
node_58 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.accordion.custom-icons', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/accordion/custom_icons')
node_59 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.accordion.sortable', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/accordion/sortable')
parent_id = node_50
node_60 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.autocomplete.default', :type => 'folder', :icon => '/images/jstree/jquery-ui.png', :url => '')
parent_id = node_60
node_61 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/autocomplete/default')
node_62 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.autocomplete.remote', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/autocomplete/remote')
node_63 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.autocomplete.remote-with-cache', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/autocomplete/remote_with_cache')
node_64 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.autocomplete.remote-jsonp', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/autocomplete/remote_jsonp')
node_65 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.autocomplete.maxheight', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/autocomplete/maxheight')
node_66 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.autocomplete.combobox', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/autocomplete/combobox')
node_67 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.autocomplete.custom-data', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/autocomplete/custom_data')
node_68 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.autocomplete.remote-xml', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/autocomplete/remote_xml')
node_69 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.widgets.autocomplete.categories', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/autocomplete/categories')
node_70 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.ui.widgets.autocomplete.folding', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/autocomplete/folding')
node_71 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.ui.widgets.autocomplete.multiple', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/autocomplete/multiple')
node_72 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.ui.widgets.autocomplete.multiple-remote', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/autocomplete/multiple_remote')
parent_id = node_50
node_73 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.button.default', :type => 'folder', :icon => '/images/jstree/jquery-ui.png', :url => '')
parent_id = node_73
node_74 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/button/default')
node_75 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.button.radio', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/button/radio')
node_76 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.button.checkbox', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/button/checkbox')
node_77 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.button.icon', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/button/icon')
node_78 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.button.toolbar', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/button/toolbar')
node_79 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.button.splitbutton', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/button/splitbutton')
parent_id = node_50
node_80 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.datepicker.default', :type => 'folder', :icon => '/images/jstree/jquery-ui.png', :url => '')
parent_id = node_80
node_81 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/datepicker/default')
node_82 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.datepicker.date-formats', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/datepicker/date_formats')
node_83 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.datepicker.min-max', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/datepicker/min_max')
node_84 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.datepicker.localization', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/datepicker/localization')
node_85 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.datepicker.alt-field', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/datepicker/alt_field')
node_86 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.datepicker.inline', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/datepicker/inline')
node_87 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.datepicker.buttonbar', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/datepicker/buttonbar')
node_88 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.datepicker.dropdown-month-year', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/datepicker/dropdown_month_year')
node_89 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.widgets.datepicker.other-months', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/datepicker/other_months')
node_90 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.ui.widgets.datepicker.show-week', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/datepicker/show_week')
node_91 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.ui.widgets.datepicker.multiple-calendars', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/datepicker/multiple_calendars')
node_92 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.ui.widgets.datepicker.icon-trigger', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/datepicker/icon_trigger')
node_93 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 12, :title => 'txt.ui.widgets.datepicker.animation', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/datepicker/animation')
node_94 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 13, :title => 'txt.ui.widgets.datepicker.event-search', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/datepicker/event_search')
parent_id = node_50
node_95 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.dialog.default', :type => 'folder', :icon => '/images/jstree/jquery-ui.png', :url => '')
parent_id = node_95
node_96 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/dialog/default')
node_97 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.dialog.animated', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/dialog/animated')
node_98 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.dialog.modal', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/dialog/modal')
node_99 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.dialog.modal-message', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/dialog/modal_message')
node_100 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.dialog.modal-confirmation', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/dialog/modal_confirmation')
node_101 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.dialog.modal-form', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/dialog/modal_form')
parent_id = node_50
node_102 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.progressbar.default', :type => 'folder', :icon => '/images/jstree/jquery-ui.png', :url => '')
parent_id = node_102
node_103 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/progressbar/default')
node_104 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.progressbar.animated', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/progressbar/animated')
node_105 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.progressbar.resize', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/progressbar/resize')
parent_id = node_50
node_106 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.slider.default', :type => 'folder', :icon => '/images/jstree/jquery-ui.png', :url => '')
parent_id = node_106
node_107 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/slider/default')
node_108 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.slider.steps', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/slider/steps')
node_109 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.slider.range', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/slider/range')
node_110 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.slider.rangemin', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/slider/rangemin')
node_111 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.slider.hotelrooms', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/slider/hotelrooms')
node_112 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.slider.rangemax', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/slider/rangemax')
node_113 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.slider.slider-vertical', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/slider/slider_vertical')
node_114 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.slider.range-vertical', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/slider/range_vertical')
node_115 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.widgets.slider.multiple-vertical', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/slider/multiple_vertical')
node_116 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.ui.widgets.slider.colorpicker', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/slider/colorpicker')
node_117 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.ui.widgets.slider.side-scroll', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/slider/side_scroll')
node_118 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.ui.widgets.slider.tabs', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/slider/tabs')
parent_id = node_50
node_119 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.tabs.default', :type => 'folder', :icon => '/images/jstree/jquery-ui.png', :url => '')
parent_id = node_119
node_120 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/tabs/default')
node_121 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.tabs.ajax', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/tabs/ajax')
node_122 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.tabs.mouseover', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/tabs/mouseover')
node_123 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.tabs.collapsible', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/tabs/collapsible')
node_124 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.tabs.sortable', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/tabs/sortable')
node_125 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.tabs.manipulation', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/tabs/manipulation')
node_126 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.tabs.bottom', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/tabs/bottom')
node_127 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.tabs.cookie', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/tabs/cookie')
parent_id = node_50
parent_id = node_2
node_128 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.effects.default', :type => 'folder', :icon => '/images/jstree/jquery-ui.png', :url => '')
parent_id = node_128
node_129 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.effects.add_class.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/effects/add_class')
node_130 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.effects.remove_class.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/effects/remove_class')
node_131 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.effects.switch_class.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/effects/switch_class')
node_132 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.effects.toggle_class.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/effects/toggle_class')
node_133 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.effects.show.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/effects/show')
node_134 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.effects.hide.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/effects/hide')
node_135 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.effects.toggle.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/effects/toggle')
node_136 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.effects.animate.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/effects/animate')
node_137 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.effects.effect.default', :type => 'folder', :icon => '/images/jstree/jquery-ui.png', :url => '')
parent_id = node_137
node_138 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.effects.effect.showcase', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/effects/effect/default')
node_139 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.effects.effect.easing', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/effects/effect/easing')
parent_id = node_128
parent_id = node_2
node_140 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.utilities.default', :type => 'folder', :icon => '/images/jstree/jquery-ui.png', :url => '')
parent_id = node_140
node_141 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.utilities.position.default', :type => 'folder', :icon => '/images/jstree/jquery-ui.png', :url => '')
parent_id = node_141
node_142 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/utilities/position/default')
node_143 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.utilities.position.cycler', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/utilities/position/cycler')
parent_id = node_140
parent_id = node_2
parent_id = node_1
node_144 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.trees', :type => 'accordion', :icon => '/images/jstree/tree.png', :url => '')
parent_id = node_144
node_145 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jst.name', :type => 'folder', :icon => '/images/jstree/tree.png', :url => '')
parent_id = node_145
node_146 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jst.demo', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/jstree/demo')
node_147 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jst.plugins', :type => 'folder', :icon => '/images/jstree/tree.png', :url => '')
parent_id = node_147
node_148 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jst.core', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/jstree/core')
node_149 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jst.html', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/jstree/html')
node_150 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jst.json', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/jstree/json')
node_151 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jst.xml', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/jstree/xml')
node_152 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jst.themes', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/jstree/themes')
node_153 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jst.ui', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/jstree/ui')
node_154 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jst.crrm', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/jstree/crrm')
node_155 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jst.hotkeys', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/jstree/hotkeys')
node_156 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jst.lang', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/jstree/languages')
node_157 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.jst.cookies', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/jstree/cookies')
node_158 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.jst.sort', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/jstree/sort')
node_159 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.jst.dnd', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/jstree/dnd')
node_160 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 12, :title => 'txt.jst.checkbox', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/jstree/checkbox')
node_161 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 13, :title => 'txt.jst.radio', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/jstree/radio')
node_162 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 14, :title => 'txt.jst.search', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/jstree/searching')
node_163 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 15, :title => 'txt.jst.contextmenu', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/jstree/contextmenu')
node_164 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 16, :title => 'txt.jst.types', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/jstree/types')
node_165 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 17, :title => 'txt.jst.themeroller', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/jstree/themeroller')
node_166 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 18, :title => 'txt.jst.unique', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/jstree/unique')
parent_id = node_145
parent_id = node_144
node_167 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.dt.name', :type => 'folder', :icon => '/images/jstree/tree.png', :url => '')
parent_id = node_167
node_168 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.dt.default', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/dynatree/default')
node_169 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.dt.quick', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/dynatree/quick')
node_170 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.dt.ul', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/dynatree/ul')
node_171 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.dt.api', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/dynatree/api')
node_172 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.dt.select', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/dynatree/select')
node_173 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.dt.theming.name', :type => 'folder', :icon => '/images/jstree/tree.png', :url => '')
parent_id = node_173
node_174 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.dt.theming.aero', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/dynatree/theming_aero')
node_175 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.dt.theming.aqua', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/dynatree/theming_aqua')
node_176 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.dt.theming.crystal', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/dynatree/theming_crystal')
node_177 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.dt.theming.xp', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/dynatree/theming_xp')
parent_id = node_167
node_178 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.dt.persist', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/dynatree/persist')
node_179 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.dt.events', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/dynatree/events')
node_180 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.dt.effects', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/dynatree/effects')
node_181 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.dt.dnd', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/dynatree/dnd')
node_182 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.dt.dnd2', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/dynatree/dnd2')
node_183 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.dt.contextmenu', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/dynatree/contextmenu')
node_184 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 12, :title => 'txt.dt.minexpand', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/dynatree/minexpand')
node_185 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 13, :title => 'txt.dt.lazy', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/dynatree/lazy_persist')
node_186 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 14, :title => 'txt.dt.iframe', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/dynatree/iframe')
node_187 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 15, :title => 'txt.dt.benchmark', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/dynatree/test_bench')
node_188 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 16, :title => 'txt.dt.form', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/dynatree/form')
node_189 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 17, :title => 'txt.dt.multiline', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/dynatree/multiline')
parent_id = node_144
parent_id = node_1
node_190 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ribbon.name', :type => 'accordion', :icon => '/images/jstree/ribbon.png', :url => '')
parent_id = node_190
node_191 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ribbon.default', :type => 'default', :icon => '/images/jstree/ribbon.png', :url => '/ribbon/default')
node_192 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ribbon.office', :type => 'default', :icon => '/images/jstree/ribbon.png', :url => '/ribbon/office')
node_193 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ribbon.simple', :type => 'default', :icon => '/images/jstree/ribbon.png', :url => '/ribbon/simple')
parent_id = node_1
node_194 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.name', :type => 'accordion', :icon => '/images/jstree/working.png', :url => '')
parent_id = node_194
node_195 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.gridify', :type => 'folder', :icon => '/images/jstree/working.png', :url => '')
parent_id = node_195
node_196 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.simple.name', :type => 'folder', :icon => '/images/jstree/working.png', :url => '')
parent_id = node_196
node_197 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.simple.default', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/players?example=01')
node_198 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.simple.selection', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/players?example=02')
node_199 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.simple.direct', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/players?example=03')
node_200 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.simple.multiple', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/players?example=04')
node_201 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.simple.master', :type => 'default', :icon => '/images/jstree/working.png', :url => '/jqgrid/players?example=05')
parent_id = node_195
node_202 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.manipulation.name', :type => 'folder', :icon => '/images/jstree/grid.png', :url => '')
parent_id = node_202
node_203 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.manipulation.inline', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/players?example=06')
node_204 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.manipulation.modal', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/players?example=07')
node_205 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.manipulation.input', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/players?example=08')
node_206 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.manipulation.datepicker', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/players?example=09')
parent_id = node_195
node_207 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.subgrids.name', :type => 'folder', :icon => '/images/jstree/grid.png', :url => '')
parent_id = node_207
node_208 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.subgrids.default', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/players?example=10')
node_209 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.subgrids.crud', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/players?example=11')
node_210 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.subgrids.selection', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/players?example=12')
parent_id = node_195
node_211 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.improvements.name', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/players?example=13')
parent_id = node_194
node_212 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.default', :type => 'folder', :icon => '/images/jstree/working.png', :url => '')
parent_id = node_212
node_213 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.20loading', :type => 'folder', :icon => '/images/jstree/grid.png', :url => '')
parent_id = node_213
node_214 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.20xml_data', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=0101;model=invheader;datatype=xml')
node_215 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.20json_data', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=0102;model=invheader')
node_216 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.20once', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=0103;model=invheader')
node_217 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.20array', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=0104;datatype=local')
parent_id = node_212
node_218 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.20manipulating', :type => 'folder', :icon => '/images/jstree/working.png', :url => '')
parent_id = node_218
node_219 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.20data', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=0201;model=invheader')
node_220 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.20get', :type => 'default', :icon => '/images/jstree/working.png', :url => '/jqgrid/demo?demo=0202;model=invheader')
node_221 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.20set', :type => 'default', :icon => '/images/jstree/working.png', :url => '/jqgrid/demo?demo=0203;model=invheader')
parent_id = node_212
node_222 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.20advanced', :type => 'folder', :icon => '/images/jstree/working.png', :url => '')
parent_id = node_222
node_223 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.20multi', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=0301;model=invheader')
node_224 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.20master', :type => 'default', :icon => '/images/jstree/working.png', :url => '/jqgrid/demo?demo=0302;model=invheader')
node_225 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.20subgrid', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=0303;model=invheader')
node_226 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.20as_subgrid', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=0304;model=invheader')
node_227 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.20resizing', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=0305;model=invheader')
node_228 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.20big_sets', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=0306;model=item')
parent_id = node_212
node_229 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.30v', :type => 'folder', :icon => '/images/jstree/grid.png', :url => '')
parent_id = node_229
node_230 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.30cmulti', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=0401;model=invheader')
node_231 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.30json_subgrid', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=0402;model=invheader')
node_232 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.30after_load', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=0403;model=invheader')
node_233 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.30resizable', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=0404;model=invheader')
node_234 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.30hide', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=0405;model=invheader')
parent_id = node_212
node_235 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.30row', :type => 'folder', :icon => '/images/jstree/working.png', :url => '')
parent_id = node_235
node_236 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.30basic', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=0501;model=invheader')
node_237 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.30cedit', :type => 'default', :icon => '/images/jstree/working.png', :url => '/jqgrid/demo?demo=0502;model=invheader')
node_238 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.30events', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=0503;model=invheader')
node_239 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.30full', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=0504;model=invheader')
node_240 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.30types', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=0505;model=invheader')
parent_id = node_212
node_241 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.30mapping', :type => 'folder', :icon => '/images/jstree/working.png', :url => '')
parent_id = node_241
node_242 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.30xml_map', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=0601;datatype=local')
node_243 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.30json_map', :type => 'default', :icon => '/images/jstree/working.png', :url => '/jqgrid/demo?demo=0602;model=invheader')
node_244 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.30optimize', :type => 'default', :icon => '/images/jstree/working.png', :url => '/jqgrid/demo?demo=0603;model=invheader')
parent_id = node_212
node_245 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.30integrations', :type => 'folder', :icon => '/images/jstree/grid.png', :url => '')
parent_id = node_245
node_246 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.30datepicker', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=0701;datatype=local')
parent_id = node_212
node_247 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jqgrid.demo.30live', :type => 'folder', :icon => '/images/jstree/grid.png', :url => '')
parent_id = node_247
node_248 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.30searching', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=0801;model=invheader')
node_249 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.30edit_row', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=0802;model=invheader')
node_250 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.30add_row', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=0803;model=invheader')
node_251 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.30delete_row', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=0804;model=invheader')
node_252 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.30navigator', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=0805;model=invheader')
parent_id = node_212
node_253 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jqgrid.demo.31v', :type => 'folder', :icon => '/images/jstree/working.png', :url => '')
parent_id = node_253
node_254 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.31toolbar', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=0901;model=invheader')
node_255 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.31userdata', :type => 'default', :icon => '/images/jstree/working.png', :url => '/jqgrid/demo?demo=0902;model=invheader')
node_256 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.31new_methods', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=0903;model=invheader')
node_257 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.31post_data', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=0904;model=invheader')
node_258 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.31cparams', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=0905;model=invheader')
parent_id = node_212
node_259 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.jqgrid.demo.32v', :type => 'folder', :icon => '/images/jstree/working.png', :url => '')
parent_id = node_259
node_260 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.32new_methods', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=1001;model=invheader')
node_261 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.32initial', :type => 'default', :icon => '/images/jstree/working.png', :url => '/jqgrid/demo?demo=1002;model=invheader')
node_262 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.32insert', :type => 'default', :icon => '/images/jstree/working.png', :url => '/jqgrid/demo?demo=1003;model=invheader')
node_263 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.32server_errors', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=1004;model=invheader')
node_264 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.32hide', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=1005;model=invheader')
node_265 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.32cbutton', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=1006;model=invheader')
node_266 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.32client', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=1007;model=invheader')
parent_id = node_212
node_267 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.jqgrid.demo.33v', :type => 'folder', :icon => '/images/jstree/working.png', :url => '')
parent_id = node_267
node_268 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.33dynamic', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=1101;model=invheader')
node_269 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.33tree', :type => 'default', :icon => '/images/jstree/working.png', :url => '/jqgrid/demo?demo=1102;model=invheader')
node_270 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.33cell', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=1103;model=invheader')
node_271 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.33visible', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=1104;model=invheader')
node_272 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.33html', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=1105;model=invheader')
node_273 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.33mtoolbar', :type => 'default', :icon => '/images/jstree/working.png', :url => '/jqgrid/demo?demo=1106;model=invheader')
node_274 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.33mform', :type => 'default', :icon => '/images/jstree/working.png', :url => '/jqgrid/demo?demo=1107;model=invheader')
node_275 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jqgrid.demo.33function', :type => 'default', :icon => '/images/jstree/working.png', :url => '/jqgrid/demo?demo=1108;model=invheader')
node_276 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jqgrid.demo.33rdnd', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=1109;model=invheader')
parent_id = node_212
node_277 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.jqgrid.demo.34v', :type => 'folder', :icon => '/images/jstree/working.png', :url => '')
parent_id = node_277
node_278 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.34format', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=1201;model=invheader')
node_279 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.34cformat', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=1202;model=invheader')
node_280 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.34import', :type => 'default', :icon => '/images/jstree/working.png', :url => '/jqgrid/demo?demo=1203;model=invheader')
node_281 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.34autoscroll', :type => 'default', :icon => '/images/jstree/working.png', :url => '/jqgrid/demo?demo=1204;model=invheader')
node_282 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.34scroll', :type => 'default', :icon => '/images/jstree/working.png', :url => '/jqgrid/demo?demo=1205;model=invheader')
node_283 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.34adjacency', :type => 'default', :icon => '/images/jstree/working.png', :url => '/jqgrid/demo?demo=1206;model=invheader')
parent_id = node_212
node_284 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 12, :title => 'txt.jqgrid.demo.35v', :type => 'folder', :icon => '/images/jstree/working.png', :url => '')
parent_id = node_284
node_285 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.35number', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=1301;model=invheader')
node_286 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.35view', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=1302;model=item')
node_287 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.35stoolbar', :type => 'default', :icon => '/images/jstree/working.png', :url => '/jqgrid/demo?demo=1303;model=invheader')
node_288 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.35asearch', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=1304;model=invheader')
node_289 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.35improvements', :type => 'default', :icon => '/images/jstree/working.png', :url => '/jqgrid/demo?demo=1305;model=invheader')
node_290 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.35real', :type => 'default', :icon => '/images/jstree/working.png', :url => '/jqgrid/demo?demo=1306;model=invheader')
node_291 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.35navigation', :type => 'default', :icon => '/images/jstree/working.png', :url => '/jqgrid/demo?demo=1307;model=invheader')
node_292 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jqgrid.demo.35summary', :type => 'default', :icon => '/images/jstree/working.png', :url => '/jqgrid/demo?demo=1308;model=invheader')
node_293 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jqgrid.demo.35sortable', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=1309;model=invheader')
parent_id = node_212
node_294 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 13, :title => 'txt.jqgrid.demo.36v', :type => 'folder', :icon => '/images/jstree/working.png', :url => '')
parent_id = node_294
node_295 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.36api', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=1401;model=invheader')
node_296 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.36rtl', :type => 'default', :icon => '/images/jstree/working.png', :url => '/jqgrid/demo?demo=1402;model=invheader')
node_297 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.36reordering', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=1403;model=invheader')
node_298 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.36chooser', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=1404;model=invheader')
node_299 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.36validation', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=1405;model=invheader')
node_300 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.36cinput', :type => 'default', :icon => '/images/jstree/working.png', :url => '/jqgrid/demo?demo=1406;model=invheader')
node_301 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.36ajax', :type => 'default', :icon => '/images/jstree/working.png', :url => '/jqgrid/demo?demo=1407;model=invheader')
node_302 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jqgrid.demo.36tscroll', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=1408;model=item')
node_303 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jqgrid.demo.36srows', :type => 'default', :icon => '/images/jstree/working.png', :url => '/jqgrid/demo?demo=1409;model=invheader')
node_304 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.jqgrid.demo.36rdnd', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=1410;model=invheader')
node_305 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.jqgrid.demo.36resizing', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=1411;model=invheader')
parent_id = node_212
node_306 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 14, :title => 'txt.jqgrid.demo.37v', :type => 'folder', :icon => '/images/jstree/working.png', :url => '')
parent_id = node_306
node_307 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.37array', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=1501;datatype=local')
node_308 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.37server', :type => 'default', :icon => '/images/jstree/working.png', :url => '/jqgrid/demo?demo=1502;model=item')
node_309 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.37single', :type => 'default', :icon => '/images/jstree/working.png', :url => '/jqgrid/demo?demo=1503;model=item')
node_310 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.37multiple', :type => 'default', :icon => '/images/jstree/working.png', :url => '/jqgrid/demo?demo=1504;model=item')
node_311 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.37scroll', :type => 'default', :icon => '/images/jstree/working.png', :url => '/jqgrid/demo?demo=1505;model=item')
node_312 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.37toolbar', :type => 'default', :icon => '/images/jstree/working.png', :url => '/jqgrid/demo?demo=1506;model=item')
node_313 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.37crud', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=1507;model=invheader')
parent_id = node_212
node_314 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 15, :title => 'txt.jqgrid.demo.38v', :type => 'folder', :icon => '/images/jstree/working.png', :url => '')
parent_id = node_314
node_315 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.38array1', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=1601;datatype=local')
node_316 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.38array2', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=1602;datatype=local')
node_317 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.38array3', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=1603;datatype=local')
node_318 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.38array4', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=1604;datatype=local')
node_319 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.38array5', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=1605;datatype=local')
node_320 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.38array6', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=1606;datatype=local')
node_321 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.38remote1', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=1607;model=invheader')
node_322 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jqgrid.demo.38remote2', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=1608;model=invheader')
node_323 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jqgrid.demo.38remote3', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=1609;model=invheader')
node_324 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.jqgrid.demo.38remote4', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=1610;model=invheader')
node_325 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.jqgrid.demo.38xml1', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=1611;model=invheader')
parent_id = node_212
parent_id = node_194
node_326 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.2dc', :type => 'folder', :icon => '/images/jstree/grid.png', :url => '')
node_327 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.secret', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/widgets')
parent_id = node_1
node_328 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqical.name', :type => 'accordion', :icon => '/images/jstree/working.png', :url => '')
parent_id = node_328
node_329 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqical.anytime.name', :type => 'folder', :icon => '/images/jstree/alarmclock.png', :url => '')
parent_id = node_329
node_330 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqical.anytime.default', :type => 'default', :icon => '/images/jstree/alarmclock.png', :url => '/jqical/anytime/default')
node_331 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqical.anytime.inline', :type => 'default', :icon => '/images/jstree/alarmclock.png', :url => '/jqical/anytime/inline')
node_332 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqical.anytime.separate', :type => 'default', :icon => '/images/jstree/alarmclock.png', :url => '/jqical/anytime/separate')
node_333 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqical.anytime.css', :type => 'default', :icon => '/images/jstree/alarmclock.png', :url => '/jqical/anytime/css')
node_334 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqical.anytime.ajax', :type => 'default', :icon => '/images/jstree/alarmclock.png', :url => '/jqical/anytime/ajax')
node_335 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqical.anytime.convert', :type => 'default', :icon => '/images/jstree/alarmclock.png', :url => '/jqical/anytime/convert')
node_336 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqical.anytime.extend', :type => 'default', :icon => '/images/jstree/alarmclock.png', :url => '/jqical/anytime/extend')
parent_id = node_328
node_337 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqical.calendar.listing', :type => 'default', :icon => '/images/jstree/calendar.png', :url => '/jqical/calendars')
parent_id = node_1
node_338 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqt.name', :type => 'accordion', :icon => '/images/jstree/iphone.png', :url => '')
parent_id = node_338
node_339 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqt.demo', :type => 'default', :icon => '/images/jstree/working.png', :url => '/iphone/main')
node_340 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqt.beta', :type => 'default', :icon => '/images/jstree/iphone.png', :url => '/iphone/original')
parent_id = node_1

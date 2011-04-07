
#NavigationTree
puts "Started creating navigation tree"
puts "Please be patient ..."
node_1 = NavigationTree.create(:parent_id => 0, :position => 0, :left => 1,  :right => 2, :title => 'ROOT').id
parent_id = node_1
node_2 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.name', :type => 'accordion', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_2
node_3 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.interactions.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_3
node_4 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.interactions.draggable.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_4
node_5 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/default')
node_6 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.interactions.draggable.events', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/events')
node_7 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.interactions.draggable.constrain-movement', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/constrain_movement')
node_8 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.interactions.draggable.delay-start', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/delay_start')
node_9 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.interactions.draggable.snap-to', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/snap_to')
node_10 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.interactions.draggable.scroll', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/scroll')
node_11 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.interactions.draggable.revert', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/revert')
node_12 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.interactions.draggable.visual-feedback', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/visual_feedback')
node_13 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.interactions.draggable.handle', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/handle')
node_14 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.ui.interactions.draggable.cursor-style', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/cursor_style')
node_15 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.ui.interactions.draggable.sortable', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/sortable')
parent_id = node_3
node_16 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.interactions.droppable.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_16
node_17 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/droppable/default')
node_18 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.interactions.droppable.accepted-elements', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/droppable/accepted_elements')
node_19 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.interactions.droppable.propagation', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/droppable/propagation')
node_20 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.interactions.droppable.visual-feedback', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/droppable/visual_feedback')
node_21 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.interactions.droppable.revert', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/droppable/revert')
node_22 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.interactions.droppable.shopping-cart', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/droppable/shopping_cart')
node_23 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.interactions.droppable.photo-manager', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/droppable/photo_manager')
parent_id = node_3
node_24 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.interactions.resizable.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_24
node_25 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/default')
node_26 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.interactions.resizable.aspect-ratio', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/aspect_ratio')
node_27 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.interactions.resizable.max-min', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/max_min')
node_28 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.interactions.resizable.constrain-area', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/constrain_area')
node_29 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.interactions.resizable.delay-start', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/delay_start')
node_30 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.interactions.resizable.snap-to-grid', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/snap_to_grid')
node_31 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.interactions.resizable.visual-feedback', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/visual_feedback')
node_32 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.interactions.resizable.synchronous-resize', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/synchronous_resize')
node_33 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.interactions.resizable.animate', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/animate')
node_34 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.ui.interactions.resizable.helper', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/helper')
node_35 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.ui.interactions.resizable.textarea', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/textarea')
parent_id = node_3
node_36 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.interactions.selectable.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_36
node_37 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/selectable/default')
node_38 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.interactions.selectable.serialize', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/selectable/serialize')
node_39 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.interactions.selectable.display-grid', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/selectable/display_grid')
parent_id = node_3
node_40 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.interactions.sortable.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_40
node_41 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/sortable/default')
node_42 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.interactions.sortable.placeholder', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/sortable/placeholder')
node_43 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.interactions.sortable.connect-lists', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/sortable/connect_lists')
node_44 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.interactions.sortable.connect-lists-through-tabs', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/sortable/connect_lists_through_tabs')
node_45 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.interactions.sortable.empty-lists', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/sortable/empty_lists')
node_46 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.interactions.sortable.items', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/sortable/items')
node_47 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.interactions.sortable.delay-start', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/sortable/delay_start')
node_48 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.interactions.sortable.display-grid', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/sortable/display_grid')
node_49 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.interactions.sortable.portlets', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/sortable/portlets')
parent_id = node_3
parent_id = node_2
node_50 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_50
node_51 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.widgets.accordion.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_51
node_52 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/accordion/default')
node_53 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.accordion.fillspace', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/accordion/fillspace')
node_54 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.accordion.no-auto-height', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/accordion/no_auto_height')
node_55 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.accordion.collapsible', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/accordion/collapsible')
node_56 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.accordion.mouseover', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/accordion/mouseover')
node_57 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.accordion.hoverintent', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/accordion/hoverintent')
node_58 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.accordion.custom-icons', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/accordion/custom_icons')
node_59 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.accordion.sortable', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/accordion/sortable')
parent_id = node_50
node_60 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.autocomplete.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_60
node_61 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/default')
node_62 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.autocomplete.remote', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/remote')
node_63 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.autocomplete.remote-with-cache', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/remote_with_cache')
node_64 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.autocomplete.remote-jsonp', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/remote_jsonp')
node_65 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.autocomplete.maxheight', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/maxheight')
node_66 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.autocomplete.combobox', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/combobox')
node_67 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.autocomplete.custom-data', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/custom_data')
node_68 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.autocomplete.remote-xml', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/remote_xml')
node_69 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.widgets.autocomplete.categories', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/categories')
node_70 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.ui.widgets.autocomplete.folding', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/folding')
node_71 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.ui.widgets.autocomplete.multiple', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/multiple')
node_72 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.ui.widgets.autocomplete.multiple-remote', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/multiple_remote')
parent_id = node_50
node_73 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.button.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_73
node_74 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/button/default')
node_75 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.button.radio', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/button/radio')
node_76 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.button.checkbox', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/button/checkbox')
node_77 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.button.icon', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/button/icon')
node_78 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.button.toolbar', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/button/toolbar')
node_79 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.button.splitbutton', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/button/splitbutton')
parent_id = node_50
node_80 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.datepicker.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_80
node_81 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/default')
node_82 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.datepicker.date-formats', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/date_formats')
node_83 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.datepicker.min-max', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/min_max')
node_84 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.datepicker.localization', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/localization')
node_85 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.datepicker.alt-field', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/alt_field')
node_86 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.datepicker.inline', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/inline')
node_87 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.datepicker.buttonbar', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/buttonbar')
node_88 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.datepicker.dropdown-month-year', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/dropdown_month_year')
node_89 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.widgets.datepicker.other-months', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/other_months')
node_90 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.ui.widgets.datepicker.show-week', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/show_week')
node_91 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.ui.widgets.datepicker.multiple-calendars', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/multiple_calendars')
node_92 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.ui.widgets.datepicker.icon-trigger', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/icon_trigger')
node_93 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 12, :title => 'txt.ui.widgets.datepicker.animation', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/animation')
node_94 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 13, :title => 'txt.ui.widgets.datepicker.date-range', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/date_range')
parent_id = node_50
node_95 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.dialog.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_95
node_96 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/dialog/default')
node_97 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.dialog.animated', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/dialog/animated')
node_98 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.dialog.modal', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/dialog/modal')
node_99 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.dialog.modal-message', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/dialog/modal_message')
node_100 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.dialog.modal-confirmation', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/dialog/modal_confirmation')
node_101 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.dialog.modal-form', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/dialog/modal_form')
node_102 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.dialog.greybox', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/dialog/greybox')
parent_id = node_50
node_103 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.panel.name', :type => 'folder', :icon => '/images/icons/16x16/draft.png')
parent_id = node_103
node_104 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.widgets.panel.default', :type => 'default', :icon => '/images/icons/16x16/draft.png', :url => '/ui/widgets/panel/default')
node_105 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.panel.simple', :type => 'default', :icon => '/images/icons/16x16/draft.png', :url => '/ui/widgets/panel/simple')
node_106 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.panel.cookie', :type => 'default', :icon => '/images/icons/16x16/draft.png', :url => '/ui/widgets/panel/cookie')
node_107 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.panel.right1', :type => 'default', :icon => '/images/icons/16x16/draft.png', :url => '/ui/widgets/panel/right1')
node_108 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.panel.right2', :type => 'default', :icon => '/images/icons/16x16/draft.png', :url => '/ui/widgets/panel/right2')
node_109 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.panel.left', :type => 'default', :icon => '/images/icons/16x16/draft.png', :url => '/ui/widgets/panel/left')
node_110 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.panel.accordion', :type => 'default', :icon => '/images/icons/16x16/draft.png', :url => '/ui/widgets/panel/accordion')
node_111 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.panel.demo', :type => 'default', :icon => '/images/icons/16x16/draft.png', :url => '/ui/widgets/panel/demo')
parent_id = node_50
node_112 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.progressbar.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_112
node_113 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/progressbar/default')
node_114 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.progressbar.animated', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/progressbar/animated')
node_115 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.progressbar.resize', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/progressbar/resize')
parent_id = node_50
node_116 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.selectmenu.name', :type => 'folder', :icon => '/images/icons/16x16/filament.png')
parent_id = node_116
node_117 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'folder', :icon => '/images/icons/16x16/filament.png')
parent_id = node_117
node_118 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.widgets.selectmenu.default', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/default')
node_119 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.selectmenu.without-id', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/without_id')
node_120 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.selectmenu.maxheight', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/maxheight')
node_121 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.selectmenu.text-formatting', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/text_formatting')
node_122 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.selectmenu.icons', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/icons')
node_123 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.selectmenu.custom-icons', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/custom_icons')
node_124 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.selectmenu.optgroups', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/optgroups')
node_125 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.selectmenu.dropdown', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/dropdown')
node_126 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.widgets.selectmenu.menuwidth', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/menuwidth')
node_127 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.ui.widgets.selectmenu.custom-icons2', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/custom_icons2')
parent_id = node_116
node_128 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.selectmenu.disable-enable', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/disable_enable')
node_129 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.selectmenu.ajax', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/ajax')
node_130 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.selectmenu.background', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/background')
node_131 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.selectmenu.methods', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/methods')
node_132 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.selectmenu.dependency', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/dependency')
node_133 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.selectmenu.positioning', :type => 'default', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/positioning')
parent_id = node_50
node_134 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.widgets.slider.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_134
node_135 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/default')
node_136 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.slider.steps', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/steps')
node_137 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.slider.range', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/range')
node_138 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.slider.rangemin', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/rangemin')
node_139 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.slider.hotelrooms', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/hotelrooms')
node_140 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.slider.rangemax', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/rangemax')
node_141 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.slider.slider-vertical', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/slider_vertical')
node_142 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.slider.range-vertical', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/range_vertical')
node_143 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.widgets.slider.multiple-vertical', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/multiple_vertical')
node_144 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.ui.widgets.slider.colorpicker', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/colorpicker')
node_145 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.ui.widgets.slider.side-scroll', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/side_scroll')
node_146 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.ui.widgets.slider.tabs', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/tabs')
parent_id = node_50
node_147 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.ui.widgets.tabs.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_147
node_148 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/tabs/default')
node_149 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.tabs.ajax', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/tabs/ajax')
node_150 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.tabs.mouseover', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/tabs/mouseover')
node_151 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.tabs.collapsible', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/tabs/collapsible')
node_152 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.tabs.sortable', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/tabs/sortable')
node_153 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.tabs.manipulation', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/tabs/manipulation')
node_154 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.tabs.bottom', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/tabs/bottom')
node_155 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.tabs.cookie', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/tabs/cookie')
parent_id = node_50
parent_id = node_2
node_156 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.effects.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_156
node_157 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.effects.animate.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/animate')
node_158 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.effects.toggle_class.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/toggle_class')
node_159 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.effects.add_class.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/add_class')
node_160 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.effects.remove_class.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/remove_class')
node_161 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.effects.switch_class.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/switch_class')
node_162 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.effects.effect.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_162
node_163 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.effects.effect.showcase', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/effect/default')
node_164 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.effects.effect.easing', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/effect/easing')
parent_id = node_156
node_165 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.effects.toggle.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/toggle')
node_166 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.effects.hide.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/hide')
node_167 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.effects.show.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/show')
parent_id = node_2
node_168 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.utilities.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_168
node_169 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.utilities.position.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_169
node_170 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/utilities/position/default')
node_171 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.utilities.position.cycler', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/utilities/position/cycler')
parent_id = node_168
parent_id = node_2
parent_id = node_1
node_172 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.plugins.name', :type => 'accordion', :icon => '/images/icons/16x16/plugin.png')
parent_id = node_172
node_426 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.graphics.name', :type => 'folder', :icon => '/images/icons/16x16/graphics.png')
parent_id = node_426
node_427 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.graphics.ganttview.name', :type => 'folder', :icon => '/images/icons/16x16/gantt.png')
parent_id = node_427
node_428 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.graphics.ganttview.default', :type => 'default', :icon => '/images/icons/16x16/gantt.png', :url => '/graphics/gantt_view/default')
parent_id = node_426
node_429 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.graphics.highcharts.name', :type => 'folder', :icon => '/images/icons/16x16/graphics.png')
parent_id = node_429
node_430 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.graphics.highcharts.line.name', :type => 'folder', :icon => '/images/icons/16x16/graphics.png')
parent_id = node_430
node_431 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.graphics.highcharts.line.basic', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=line_basic')
node_432 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.graphics.highcharts.line.ajax', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=line_ajax')
node_433 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.graphics.highcharts.line.labels', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=line_labels')
node_434 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.graphics.highcharts.line.time_series', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=line_time_series')
node_435 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.graphics.highcharts.spline.inverted', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=spline_inverted')
node_436 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.graphics.highcharts.spline.symbols', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=spline_symbols')
node_437 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.graphics.highcharts.spline.plot_bands', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=spline_plot_bands')
node_438 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.graphics.highcharts.scatter', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=scatter')
parent_id = node_429
node_439 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.graphics.highcharts.area.name', :type => 'folder', :icon => '/images/icons/16x16/graphics.png')
parent_id = node_439
node_440 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.graphics.highcharts.area.basic', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=area_basic')
node_441 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.graphics.highcharts.area.negative', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=area_negative')
node_442 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.graphics.highcharts.area.stacked', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=area_stacked')
node_443 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.graphics.highcharts.area.stacked_percent', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=area_stacked_percent')
node_444 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.graphics.highcharts.area.missing', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=area_missing')
node_445 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.graphics.highcharts.area.inverted', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=area_inverted')
node_446 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.graphics.highcharts.area.spline', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=area_spline')
parent_id = node_429
node_447 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.graphics.highcharts.bar.name', :type => 'folder', :icon => '/images/icons/16x16/graphics.png')
parent_id = node_447
node_448 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.graphics.highcharts.bar.basic', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=bar_basic')
node_449 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.graphics.highcharts.bar.stacked', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=bar_stacked')
node_450 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.graphics.highcharts.bar.negative_stack', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=bar_negative_stack')
node_451 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.graphics.highcharts.column.basic', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=column_basic')
node_452 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.graphics.highcharts.column.negative', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=column_negative')
node_453 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.graphics.highcharts.column.stacked', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=column_stacked')
node_454 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.graphics.highcharts.column.stacked_and_grouped', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=column_stacked_and_grouped')
node_455 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.graphics.highcharts.column.stacked_percent', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=column_stacked_percent')
node_456 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.graphics.highcharts.column.rotated_labels', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=column_rotated_labels')
node_457 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.graphics.highcharts.column.parsed', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=column_parsed')
parent_id = node_429
node_458 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.graphics.highcharts.pie.name', :type => 'folder', :icon => '/images/icons/16x16/graphics.png')
parent_id = node_458
node_459 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.graphics.highcharts.pie.basic', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=pie_basic')
node_460 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.graphics.highcharts.pie.donut', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=pie_donut')
node_461 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.graphics.highcharts.pie.legend', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=pie_legend')
parent_id = node_429
node_462 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.graphics.highcharts.dynamic.name', :type => 'folder', :icon => '/images/icons/16x16/graphics.png')
parent_id = node_462
node_463 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.graphics.highcharts.dynamic.update', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=dynamic_update')
node_464 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.graphics.highcharts.dynamic.click_to_add', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=dynamic_click_to_add')
node_465 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.graphics.highcharts.dynamic.master_detail', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/graphics/highcharts/examples?example=dynamic_master_detail')
parent_id = node_429
node_466 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.graphics.highcharts.combo.name', :type => 'folder', :icon => '/images/icons/16x16/graphics.png')
parent_id = node_466
node_467 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.graphics.highcharts.combo.default', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=combo')
node_468 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.graphics.highcharts.combo.dual_axes', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=combo_dual_axes')
node_469 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.graphics.highcharts.combo.multi_axes', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=combo_multi_axes')
node_470 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.graphics.highcharts.combo.regression', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=combo_regression')
parent_id = node_429
parent_id = node_426
node_471 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.graphics.sparklines.name', :type => 'folder', :icon => '/images/icons/16x16/sparklines.png')
parent_id = node_471
node_472 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.graphics.sparklines.examples', :type => 'default', :icon => '/images/icons/16x16/sparklines.png', :url => '/graphics/sparklines/examples')
node_473 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.graphics.sparklines.default', :type => 'default', :icon => '/images/icons/16x16/sparklines.png', :url => '/graphics/sparklines/default')
parent_id = node_426
parent_id = node_172
node_474 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.handling.name', :type => 'folder', :icon => '/images/icons/16x16/plugin.png')
parent_id = node_474
node_475 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.history.name', :type => 'folder', :icon => '/images/icons/16x16/history.png')
parent_id = node_475
node_476 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.history.example1', :type => 'default', :icon => '/images/icons/16x16/history.png', :url => '/handling/history/html4')
node_542 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.history.example3', :type => 'default', :icon => '/images/icons/16x16/history.png', :url => '/handling/history/ajax')
node_543 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.history.example4', :type => 'default', :icon => '/images/icons/16x16/history.png', :url => '/handling/history/ajax2')
node_544 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.history.example6', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/handling/history/mvc')
node_548 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.history.example5', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/handling/history/bbq')
node_1160 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.history.example2', :type => 'default', :icon => '/images/icons/16x16/html5.png', :url => '/handling/history/html5')
node_1162 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.history.example10', :type => 'default', :icon => '/images/icons/16x16/html5.png', :url => '/handling/history/native')
node_1163 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.history.example11', :type => 'default', :icon => '/images/icons/16x16/html5.png', :url => '/handling/history/navigator')
node_1164 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.history.example9', :type => 'default', :icon => '/images/icons/16x16/chrome.png', :url => '/handling/history/chrome')
node_1166 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.history.example12', :type => 'default', :icon => '/images/icons/16x16/safari.png', :url => '/handling/history/safari')
node_1168 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.history.example7', :type => 'default', :icon => '/images/icons/16x16/webkit.png', :url => '/handling/history/bcherry')
node_1169 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.history.example8', :type => 'default', :icon => '/images/icons/16x16/webkit.png', :url => '/handling/history/bcherry_orig')
parent_id = node_474
node_482 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.replacetext.name', :type => 'folder', :icon => '/images/icons/16x16/plugin.png')
parent_id = node_482
node_483 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.replacetext.default', :type => 'default', :icon => '/images/icons/16x16/plugin.png', :url => '/handling/replace_text/default')
parent_id = node_474
parent_id = node_172
node_484 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.haml.name', :type => 'folder', :icon => '/images/icons/16x16/haml.png')
parent_id = node_484
node_485 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.haml.jhaml', :type => 'default', :icon => '/images/icons/16x16/haml.png', :url => '/haml/jhaml')
parent_id = node_172
node_893 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.widgets.name', :type => 'folder', :icon => '/images/icons/16x16/plugin.png')
parent_id = node_893
node_894 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ical.name', :type => 'folder', :icon => '/images/icons/16x16/calendar.png')
parent_id = node_894
node_895 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ical.anytime.name', :type => 'folder', :icon => '/images/icons/16x16/alarmclock.png')
parent_id = node_895
node_896 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ical.anytime.default', :type => 'default', :icon => '/images/icons/16x16/alarmclock.png', :url => '/widgets/ical/anytime/default')
node_897 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ical.anytime.inline', :type => 'default', :icon => '/images/icons/16x16/alarmclock.png', :url => '/widgets/ical/anytime/inline')
node_898 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ical.anytime.separate', :type => 'default', :icon => '/images/icons/16x16/alarmclock.png', :url => '/widgets/ical/anytime/separate')
node_899 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ical.anytime.css', :type => 'default', :icon => '/images/icons/16x16/alarmclock.png', :url => '/widgets/ical/anytime/css')
node_900 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ical.anytime.ajax', :type => 'default', :icon => '/images/icons/16x16/alarmclock.png', :url => '/widgets/ical/anytime/ajax')
node_901 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ical.anytime.convert', :type => 'default', :icon => '/images/icons/16x16/alarmclock.png', :url => '/widgets/ical/anytime/convert')
node_902 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ical.anytime.extend', :type => 'default', :icon => '/images/icons/16x16/alarmclock.png', :url => '/widgets/ical/anytime/extend')
parent_id = node_894
node_903 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ical.fullcalendar.name', :type => 'folder', :icon => '/images/icons/16x16/calendar.png')
parent_id = node_903
node_904 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ical.fullcalendar.default', :type => 'default', :icon => '/images/icons/16x16/calendar.png', :url => '/widgets/ical/full_calendar/default')
node_905 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ical.fullcalendar.agenda', :type => 'default', :icon => '/images/icons/16x16/calendar.png', :url => '/widgets/ical/full_calendar/agenda_views')
node_906 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ical.fullcalendar.basic', :type => 'default', :icon => '/images/icons/16x16/calendar.png', :url => '/widgets/ical/full_calendar/basic_views')
node_907 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ical.fullcalendar.gcal', :type => 'default', :icon => '/images/icons/16x16/calendar.png', :url => '/widgets/ical/full_calendar/gcal')
node_908 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ical.fullcalendar.json', :type => 'default', :icon => '/images/icons/16x16/calendar.png', :url => '/widgets/ical/full_calendar/json')
node_909 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ical.fullcalendar.theme', :type => 'default', :icon => '/images/icons/16x16/calendar.png', :url => '/widgets/ical/full_calendar/theme')
node_910 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ical.fullcalendar.selectable', :type => 'default', :icon => '/images/icons/16x16/calendar.png', :url => '/widgets/ical/full_calendar/selectable')
node_911 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ical.fullcalendar.external', :type => 'default', :icon => '/images/icons/16x16/calendar.png', :url => '/widgets/ical/full_calendar/external_dragging')
parent_id = node_894
node_912 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ical.calendar.listing', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/widgets/ical/calendars')
parent_id = node_893
node_913 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.name', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_913
node_914 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.default', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_914
node_915 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.20loading', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_915
node_916 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.20xml_data', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0101;model=invheader;datatype=xml')
node_917 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.20json_data', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0102;model=invheader')
node_918 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.20once', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0103;model=invheader')
node_919 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.20array', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0104;datatype=local')
parent_id = node_914
node_920 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.20manipulating', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_920
node_921 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.20data', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0201;model=invheader')
node_922 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.20get', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0202;model=invheader')
node_923 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.20set', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0203;model=invheader')
parent_id = node_914
node_924 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.20advanced', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_924
node_925 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.20multi', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0301;model=invheader')
node_926 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.20master', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0302;model=invheader')
node_927 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.20subgrid', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0303;model=invheader')
node_928 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.20as_subgrid', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/widgets/jqgrid/demo?demo=0304;model=invheader')
node_929 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.20resizing', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0305;model=invheader')
node_930 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.20big_sets', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0306;model=item')
parent_id = node_914
node_931 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.30v', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_931
node_932 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.30cmulti', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0401;model=invheader')
node_933 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.30json_subgrid', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0402;model=invheader')
node_934 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.30after_load', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0403;model=invheader')
node_935 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.30resizable', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0404;model=invheader')
node_936 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.30hide', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0405;model=invheader')
parent_id = node_914
node_937 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.30row', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_937
node_938 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.30basic', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0501;model=invheader')
node_939 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.30cedit', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0502;model=invheader')
node_940 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.30events', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0503;model=invheader')
node_941 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.30full', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0504;model=invheader')
node_942 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.30types', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0505;model=invheader')
parent_id = node_914
node_943 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.30mapping', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_943
node_944 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.30xml_map', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0601;datatype=local')
node_945 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.30json_map', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/widgets/jqgrid/demo?demo=0602;model=invheader')
node_946 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.30optimize', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/widgets/jqgrid/demo?demo=0603;model=invheader')
parent_id = node_914
node_947 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.30integrations', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_947
node_948 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.30datepicker', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0701;datatype=local')
parent_id = node_914
node_949 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jqgrid.demo.30live', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_949
node_950 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.30searching', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0801;model=invheader')
node_951 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.30edit_row', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0802;model=invheader')
node_952 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.30add_row', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0803;model=invheader')
node_953 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.30delete_row', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0804;model=invheader')
node_954 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.30navigator', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0805;model=invheader')
parent_id = node_914
node_955 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jqgrid.demo.31v', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_955
node_956 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.31toolbar', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0901;model=invheader')
node_957 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.31userdata', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0902;model=invheader')
node_958 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.31new_methods', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0903;model=invheader')
node_959 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.31post_data', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0904;model=invheader')
node_960 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.31cparams', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0905;model=invheader')
parent_id = node_914
node_961 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.jqgrid.demo.32v', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_961
node_962 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.32new_methods', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1001;model=invheader')
node_963 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.32initial', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1002;model=invheader')
node_964 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.32insert', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1003;model=invheader')
node_965 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.32server_errors', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1004;model=invheader')
node_966 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.32hide', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1005;model=invheader')
node_967 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.32cbutton', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1006;model=invheader')
node_968 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.32client', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1007;model=invheader')
parent_id = node_914
node_969 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.jqgrid.demo.33v', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_969
node_970 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.33dynamic', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1101;model=invheader')
node_971 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.33tree', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1102;model=account')
node_972 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.33cell', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1103;model=invheader')
node_973 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.33visible', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1104;model=invheader')
node_974 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.33html', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1105;model=invheader')
node_975 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.33mtoolbar', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1106;model=invheader')
node_976 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.33mform', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1107;model=invheader')
node_977 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jqgrid.demo.33function', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1108;model=invheader')
node_978 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jqgrid.demo.33rdnd', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1109;model=invheader')
parent_id = node_914
node_979 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.jqgrid.demo.34v', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_979
node_980 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.34format', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1201;model=invheader')
node_981 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.34cformat', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1202;model=invheader')
node_982 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.34import', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1203;model=invheader')
node_983 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.34autoscroll', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/widgets/jqgrid/demo?demo=1204;model=invheader')
node_984 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.34scroll', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/widgets/jqgrid/demo?demo=1205;model=invheader')
node_985 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.34adjacency', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1206;model=account')
parent_id = node_914
node_986 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 12, :title => 'txt.jqgrid.demo.35v', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_986
node_987 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.35number', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1301;model=invheader')
node_988 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.35view', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1302;model=item')
node_989 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.35stoolbar', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1303;model=invheader')
node_990 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.35asearch', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1304;model=invheader')
node_991 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.35improvements', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/widgets/jqgrid/demo?demo=1305;model=invheader')
node_992 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.35real', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1306;model=account')
node_993 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.35navigation', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/widgets/jqgrid/demo?demo=1307;model=invheader')
node_994 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jqgrid.demo.35summary', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1308;model=invheader')
node_995 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jqgrid.demo.35sortable', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1309;model=invheader')
parent_id = node_914
node_996 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 13, :title => 'txt.jqgrid.demo.36v', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_996
node_997 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.36api', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1401;model=invheader')
node_998 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.36rtl', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1402;model=invheader')
node_999 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.36reordering', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1403;model=invheader')
node_1000 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.36chooser', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1404;model=invheader')
node_1001 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.36validation', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1405;model=invheader')
node_1002 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.36cinput', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1406;model=invheader')
node_1003 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.36ajax', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1407;model=invheader')
node_1004 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jqgrid.demo.36tscroll', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1408;model=item')
node_1005 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jqgrid.demo.36srows', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1409;model=invheader')
node_1006 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.jqgrid.demo.36rdnd', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1410;model=invheader')
node_1007 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.jqgrid.demo.36resizing', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1411;model=invheader')
parent_id = node_914
node_1008 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 14, :title => 'txt.jqgrid.demo.37v', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_1008
node_1009 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.37array', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1501;datatype=local')
node_1010 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.37server', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1502;model=item')
node_1011 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.37single', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1503;model=item')
node_1012 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.37multiple', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1504;model=item')
node_1013 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.37scroll', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1505;model=item')
node_1014 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.37toolbar', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1506;model=item')
node_1015 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.37crud', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/widgets/jqgrid/demo?demo=1507;model=invheader')
parent_id = node_914
node_1016 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 15, :title => 'txt.jqgrid.demo.38v', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_1016
node_1017 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.38array1', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1601;datatype=local')
node_1018 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.38array2', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1602;datatype=local')
node_1019 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.38array3', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1603;datatype=local')
node_1020 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.38array4', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1604;datatype=local')
node_1021 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.38array5', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1605;datatype=local')
node_1022 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.38array6', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1606;datatype=local')
node_1023 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.38remote1', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1607;model=invheader')
node_1024 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jqgrid.demo.38remote2', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1608;model=invheader')
node_1025 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jqgrid.demo.38remote3', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1609;model=invheader')
node_1026 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.jqgrid.demo.38remote4', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1610;model=invheader')
node_1027 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.jqgrid.demo.38xml1', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1611;model=invheader')
node_1028 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.jqgrid.demo.38remote5', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1612;model=invheader')
parent_id = node_914
parent_id = node_913
node_1029 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.mine.name', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_1029
node_1030 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.mine.cedit', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_1030
node_1031 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.mine.cedit1', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=9906;model=invheader')
node_1032 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.mine.cedit2', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=9907;model=invheader')
node_1033 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.mine.cedit3', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=9908;model=invheader')
node_1034 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.mine.cedit4', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=9909;model=invheader')
node_1035 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.mine.cedit5', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=9910;model=invheader')
parent_id = node_1029
node_1036 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.mine.contextmenu', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_1036
node_1037 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.mine.contextmenu1', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/mine?demo=contextmenu1')
node_1038 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.mine.contextmenu2', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=9901;model=invheader')
parent_id = node_1029
node_1039 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.mine.treegrid', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_1039
node_1040 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.33tree', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=9903;model=account')
node_1041 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.34adjacency', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=9904;model=account')
node_1042 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.35real', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=9905;model=account')
parent_id = node_1029
node_1043 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.gridify', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_1043
node_1044 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.simple.name', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_1044
node_1045 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.simple.default', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/players?example=01')
node_1046 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.simple.selection', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/players?example=02')
node_1047 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.simple.direct', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/players?example=03')
node_1048 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.simple.multiple', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/players?example=04')
node_1049 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.simple.master', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/players?example=05')
parent_id = node_1043
node_1050 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.manipulation.name', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_1050
node_1051 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.manipulation.inline', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/players?example=06')
node_1052 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.manipulation.modal', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/players?example=07')
node_1053 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.manipulation.input', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/players?example=08')
node_1054 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.manipulation.datepicker', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/players?example=09')
parent_id = node_1043
node_1055 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.subgrids.name', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_1055
node_1056 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.subgrids.default', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/widgets/jqgrid/players?example=10')
node_1057 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.subgrids.crud', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/widgets/jqgrid/players?example=11')
node_1058 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.subgrids.selection', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/widgets/jqgrid/players?example=12')
parent_id = node_1043
node_1059 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.improvements.name', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/players?example=13')
parent_id = node_1029
node_1060 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.secret', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/secrets')
parent_id = node_913
node_1061 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.2dc', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_1061
node_1062 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.subgrids.name', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_1062
node_1063 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.subgrids.default', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/users?example=10')
node_1064 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.subgrids.crud', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/users?example=11')
node_1065 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.subgrids.selection', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/users?example=12')
parent_id = node_1061
parent_id = node_913
parent_id = node_893
node_1066 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ribbon.name', :type => 'folder', :icon => '/images/icons/16x16/ribbon.png')
parent_id = node_1066
node_1067 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ribbon.default', :type => 'default', :icon => '/images/icons/16x16/ribbon.png', :url => '/widgets/ribbon/default')
node_1068 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ribbon.office', :type => 'default', :icon => '/images/icons/16x16/ribbon.png', :url => '/widgets/ribbon/office')
node_1069 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ribbon.simple', :type => 'default', :icon => '/images/icons/16x16/ribbon.png', :url => '/widgets/ribbon/simple')
parent_id = node_893
node_1070 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.tools.name', :type => 'folder', :icon => '/images/icons/16x16/tools.png')
parent_id = node_1070
node_1071 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tools.ui.name', :type => 'folder', :icon => '/images/icons/16x16/tools.png')
parent_id = node_1071
node_1072 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tools.ui.tooltips.name', :type => 'folder', :icon => '/images/icons/16x16/tools.png')
parent_id = node_1072
node_1073 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tools.default', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/widgets/tools/tooltips/default')
node_1074 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.tools.ui.tooltips.demo01', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/widgets/tools/tooltips/demo01')
node_1075 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.tools.ui.tooltips.demo02', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/widgets/tools/tooltips/demo02')
node_1076 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.tools.ui.tooltips.demo03', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/widgets/tools/tooltips/demo03')
node_1077 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.tools.ui.tooltips.demo04', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/widgets/tools/tooltips/demo04')
node_1078 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.tools.ui.tooltips.demo05', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/widgets/tools/tooltips/demo05')
node_1079 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.tools.ui.tooltips.demo06', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/widgets/tools/tooltips/demo06')
node_1080 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.tools.ui.tooltips.demo07', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/widgets/tools/tooltips/demo07')
parent_id = node_1071
node_1081 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.tools.ui.overlay.name', :type => 'folder', :icon => '/images/icons/16x16/tools.png')
parent_id = node_1081
node_1082 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tools.ui.overlay.demo01', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/widgets/tools/overlay/demo01')
node_1083 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.tools.ui.overlay.demo02', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/widgets/tools/overlay/demo02')
node_1084 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.tools.ui.overlay.demo03', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/widgets/tools/overlay/demo03')
node_1085 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.tools.ui.overlay.demo04', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/widgets/tools/overlay/demo04')
node_1086 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.tools.ui.overlay.demo05', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/widgets/tools/overlay/demo05')
node_1087 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.tools.ui.overlay.demo06', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/widgets/tools/overlay/demo06')
node_1088 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.tools.ui.overlay.demo07', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/widgets/tools/overlay/demo07')
node_1089 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.tools.ui.overlay.demo08', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/widgets/tools/overlay/demo08')
parent_id = node_1071
parent_id = node_1070
node_1090 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.tools.toolbox.name', :type => 'folder', :icon => '/images/icons/16x16/tools.png')
parent_id = node_1090
node_1091 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tools.toolbox.expose.name', :type => 'folder', :icon => '/images/icons/16x16/tools.png')
parent_id = node_1091
node_1092 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tools.toolbox.expose.demo01', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/widgets/tools/expose/demo01')
node_1093 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.tools.toolbox.expose.demo02', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/widgets/tools/expose/demo02')
node_1094 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.tools.toolbox.expose.demo03', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/widgets/tools/expose/demo03')
node_1095 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.tools.toolbox.expose.demo04', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/widgets/tools/expose/demo04')
node_1096 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.tools.toolbox.expose.demo05', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/widgets/tools/expose/demo05')
parent_id = node_1090
parent_id = node_1070
parent_id = node_893
node_1097 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.tinymce.name', :type => 'folder', :icon => '/images/icons/16x16/editor.png')
parent_id = node_1097
node_1098 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tinymce.default', :type => 'default', :icon => '/images/icons/16x16/editor.png', :url => '/widgets/tiny_mce')
parent_id = node_893
node_1099 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.tokeninput.name', :type => 'folder', :icon => '/images/icons/16x16/plugin.png')
parent_id = node_1099
node_1100 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tokeninput.demo', :type => 'default', :icon => '/images/icons/16x16/plugin.png', :url => '/widgets/tokeninput/demo')
node_1101 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.tokeninput.default', :type => 'default', :icon => '/images/icons/16x16/plugin.png', :url => '/widgets/tokeninput/default')
parent_id = node_893
node_1102 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.tree.name', :type => 'folder', :icon => '/images/icons/16x16/tree.png')
parent_id = node_1102
node_1103 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jst.name', :type => 'folder', :icon => '/images/icons/16x16/tree.png')
parent_id = node_1103
node_1104 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jst.demo', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/demo')
node_1105 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jst.plugins', :type => 'folder', :icon => '/images/icons/16x16/tree.png')
parent_id = node_1105
node_1106 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jst.core', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/core')
node_1107 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jst.html', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/html')
node_1108 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jst.json', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/json')
node_1109 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jst.xml', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/xml')
node_1110 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jst.themes', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/themes')
node_1111 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jst.ui', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/ui')
node_1112 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jst.crrm', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/crrm')
node_1113 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jst.hotkeys', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/hotkeys')
node_1114 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jst.lang', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/languages')
node_1115 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.jst.cookies', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/cookies')
node_1116 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.jst.sort', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/sort')
node_1117 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.jst.dnd', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/dnd')
node_1118 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 12, :title => 'txt.jst.checkbox', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/checkbox')
node_1119 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 13, :title => 'txt.jst.radio', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/radio')
node_1120 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 14, :title => 'txt.jst.search', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/searching')
node_1121 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 15, :title => 'txt.jst.contextmenu', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/contextmenu')
node_1122 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 16, :title => 'txt.jst.types', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/types')
node_1123 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 17, :title => 'txt.jst.themeroller', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/themeroller')
node_1124 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 18, :title => 'txt.jst.unique', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/unique')
parent_id = node_1103
parent_id = node_1102
node_1125 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.dt.name', :type => 'folder', :icon => '/images/icons/16x16/tree.png')
parent_id = node_1125
node_1126 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.dt.default', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/default')
node_1127 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.dt.quick', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/quick')
node_1128 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.dt.ul', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/ul')
node_1129 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.dt.json', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/json')
node_1130 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.dt.api', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/api')
node_1131 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.dt.select', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/select')
node_1132 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.dt.theming.name', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/theming')
node_1133 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.dt.persist', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/persist')
node_1134 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.dt.events', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/events')
node_1135 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.dt.effects', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/effects')
node_1136 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.dt.dnd', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/dnd')
node_1137 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.dt.dnd2', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/dnd2')
node_1138 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 12, :title => 'txt.dt.dnd3', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/dnd3')
node_1139 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 13, :title => 'txt.dt.contextmenu', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/contextmenu')
node_1140 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 14, :title => 'txt.dt.minexpand', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/minexpand')
node_1141 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 15, :title => 'txt.dt.lazy_persist', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/lazy_persist')
node_1142 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 16, :title => 'txt.dt.iframe', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/iframe')
node_1143 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 17, :title => 'txt.dt.benchmark', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/test_bench')
node_1144 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 18, :title => 'txt.dt.form', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/form')
node_1145 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 19, :title => 'txt.dt.multiline', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/multiline')
parent_id = node_1102
parent_id = node_893
parent_id = node_172
parent_id = node_1
node_486 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.name', :type => 'accordion', :icon => '/images/icons/16x16/jqmobile.png')
parent_id = node_486
node_487 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.black', :type => 'folder', :icon => '/images/icons/16x16/blackberry.png')
parent_id = node_487
node_488 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.port', :type => 'folder', :icon => '/images/icons/16x16/portrait.png')
parent_id = node_488
node_489 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/blackberry_portrait/jqm')
node_490 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/blackberry_portrait/jqm2')
node_491 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/blackberry_portrait/jqm_original')
parent_id = node_487
node_492 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.land', :type => 'folder', :icon => '/images/icons/16x16/landscape.png')
parent_id = node_492
node_493 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/blackberry_landscape/jqm')
node_494 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/blackberry_landscape/jqm2')
node_495 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/blackberry_landscape/jqm_original')
parent_id = node_487
parent_id = node_486
node_1183 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.galaxy7', :type => 'folder', :icon => '/images/icons/16x16/galaxy7.png')
parent_id = node_1183
node_1184 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.port', :type => 'folder', :icon => '/images/icons/16x16/portrait.png')
parent_id = node_1184
node_1185 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/galaxy7_portrait/jqm')
node_1186 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/galaxy7_portrait/jqm2')
node_1187 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/galaxy7_portrait/jqm_original')
node_1188 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.emu.jqt.default', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators/galaxy7_portrait/jqt')
node_1189 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.emu.jqt.home', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators/galaxy7_portrait/jqt_original')
parent_id = node_1183
node_1190 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.land', :type => 'folder', :icon => '/images/icons/16x16/landscape.png')
parent_id = node_1190
node_1191 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/galaxy7_landscape/jqm')
node_1192 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/galaxy7_landscape/jqm2')
node_1193 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/galaxy7_landscape/jqm_original')
node_1194 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.emu.jqt.default', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators/galaxy7_landscape/jqt')
node_1195 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.emu.jqt.home', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators/galaxy7_landscape/jqt_original')
parent_id = node_1183
parent_id = node_486
node_1196 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.ipad', :type => 'folder', :icon => '/images/icons/16x16/ipad.png')
parent_id = node_1196
node_1197 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.port', :type => 'folder', :icon => '/images/icons/16x16/portrait.png')
parent_id = node_1197
node_1198 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/ipad_portrait/jqm')
node_1199 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/ipad_portrait/jqm2')
node_1200 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/ipad_portrait/jqm_original')
node_1201 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.emu.jqt.default', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators/ipad_portrait/jqt')
node_1202 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.emu.jqt.home', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators/ipad_portrait/jqt_original')
parent_id = node_1196
node_1203 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.land', :type => 'folder', :icon => '/images/icons/16x16/landscape.png')
parent_id = node_1203
node_1204 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/ipad_landscape/jqm')
node_1205 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/ipad_landscape/jqm2')
node_1206 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/ipad_landscape/jqm_original')
node_1207 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.emu.jqt.default', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators/ipad_landscape/jqt')
node_1208 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.emu.jqt.home', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators/ipad_landscape/jqt_original')
parent_id = node_1196
parent_id = node_486
node_1209 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.emu.iphone', :type => 'folder', :icon => '/images/icons/16x16/iphone.png')
parent_id = node_1209
node_1210 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.port', :type => 'folder', :icon => '/images/icons/16x16/portrait.png')
parent_id = node_1210
node_1211 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/iphone_portrait/jqm')
node_1212 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/iphone_portrait/jqm2')
node_1213 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/iphone_portrait/jqm_original')
node_1214 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.emu.jqt.default', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators/iphone_portrait/jqt')
node_1215 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.emu.jqt.home', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators/iphone_portrait/jqt_original')
parent_id = node_1209
node_1216 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.land', :type => 'folder', :icon => '/images/icons/16x16/landscape.png')
parent_id = node_1216
node_1217 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/iphone_landscape/jqm')
node_1218 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/iphone_landscape/jqm2')
node_1219 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/iphone_landscape/jqm_original')
node_1220 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.emu.jqt.default', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators/iphone_landscape/jqt')
node_1221 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.emu.jqt.home', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators/iphone_landscape/jqt_original')
parent_id = node_1209
parent_id = node_486
node_1222 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.emu.palm', :type => 'folder', :icon => '/images/icons/16x16/palm.png')
parent_id = node_1222
node_1223 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.port', :type => 'folder', :icon => '/images/icons/16x16/portrait.png')
parent_id = node_1223
node_1224 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/palm_portrait/jqm')
node_1225 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/palm_portrait/jqm2')
node_1226 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/palm_portrait/jqm_original')
parent_id = node_1222
node_1227 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.land', :type => 'folder', :icon => '/images/icons/16x16/landscape.png')
parent_id = node_1227
node_1228 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/palm_landscape/jqm')
node_1229 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/palm_landscape/jqm2')
node_1230 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/palm_landscape/jqm_original')
parent_id = node_1222
parent_id = node_486
parent_id = node_1
puts "Finished creating navigation tree"


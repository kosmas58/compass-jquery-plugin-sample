
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
node_173 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.graphics.name', :type => 'folder', :icon => '/images/icons/16x16/graphics.png')
parent_id = node_173
node_174 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.graphics.ganttview.name', :type => 'folder', :icon => '/images/icons/16x16/gantt.png')
parent_id = node_174
node_175 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.graphics.ganttview.default', :type => 'default', :icon => '/images/icons/16x16/gantt.png', :url => '/graphics/gantt_view/default')
parent_id = node_173
node_176 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.graphics.highcharts.name', :type => 'folder', :icon => '/images/icons/16x16/graphics.png')
parent_id = node_176
node_177 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.graphics.highcharts.line.name', :type => 'folder', :icon => '/images/icons/16x16/graphics.png')
parent_id = node_177
node_178 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.graphics.highcharts.line.basic', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=line_basic')
node_179 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.graphics.highcharts.line.ajax', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=line_ajax')
node_180 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.graphics.highcharts.line.labels', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=line_labels')
node_181 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.graphics.highcharts.line.time_series', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=line_time_series')
node_182 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.graphics.highcharts.spline.inverted', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=spline_inverted')
node_183 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.graphics.highcharts.spline.symbols', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=spline_symbols')
node_184 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.graphics.highcharts.spline.plot_bands', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=spline_plot_bands')
node_185 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.graphics.highcharts.scatter', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=scatter')
parent_id = node_176
node_186 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.graphics.highcharts.area.name', :type => 'folder', :icon => '/images/icons/16x16/graphics.png')
parent_id = node_186
node_187 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.graphics.highcharts.area.basic', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=area_basic')
node_188 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.graphics.highcharts.area.negative', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=area_negative')
node_189 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.graphics.highcharts.area.stacked', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=area_stacked')
node_190 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.graphics.highcharts.area.stacked_percent', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=area_stacked_percent')
node_191 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.graphics.highcharts.area.missing', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=area_missing')
node_192 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.graphics.highcharts.area.inverted', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=area_inverted')
node_193 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.graphics.highcharts.area.spline', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=area_spline')
parent_id = node_176
node_194 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.graphics.highcharts.bar.name', :type => 'folder', :icon => '/images/icons/16x16/graphics.png')
parent_id = node_194
node_195 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.graphics.highcharts.bar.basic', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=bar_basic')
node_196 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.graphics.highcharts.bar.stacked', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=bar_stacked')
node_197 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.graphics.highcharts.bar.negative_stack', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=bar_negative_stack')
node_198 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.graphics.highcharts.column.basic', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=column_basic')
node_199 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.graphics.highcharts.column.negative', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=column_negative')
node_200 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.graphics.highcharts.column.stacked', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=column_stacked')
node_201 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.graphics.highcharts.column.stacked_and_grouped', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=column_stacked_and_grouped')
node_202 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.graphics.highcharts.column.stacked_percent', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=column_stacked_percent')
node_203 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.graphics.highcharts.column.rotated_labels', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=column_rotated_labels')
node_204 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.graphics.highcharts.column.parsed', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=column_parsed')
parent_id = node_176
node_205 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.graphics.highcharts.pie.name', :type => 'folder', :icon => '/images/icons/16x16/graphics.png')
parent_id = node_205
node_206 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.graphics.highcharts.pie.basic', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=pie_basic')
node_207 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.graphics.highcharts.pie.donut', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=pie_donut')
node_208 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.graphics.highcharts.pie.legend', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=pie_legend')
parent_id = node_176
node_209 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.graphics.highcharts.dynamic.name', :type => 'folder', :icon => '/images/icons/16x16/graphics.png')
parent_id = node_209
node_210 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.graphics.highcharts.dynamic.update', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=dynamic_update')
node_211 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.graphics.highcharts.dynamic.click_to_add', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=dynamic_click_to_add')
node_212 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.graphics.highcharts.dynamic.master_detail', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/graphics/highcharts/examples?example=dynamic_master_detail')
parent_id = node_176
node_213 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.graphics.highcharts.combo.name', :type => 'folder', :icon => '/images/icons/16x16/graphics.png')
parent_id = node_213
node_214 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.graphics.highcharts.combo.default', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=combo')
node_215 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.graphics.highcharts.combo.dual_axes', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=combo_dual_axes')
node_216 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.graphics.highcharts.combo.multi_axes', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=combo_multi_axes')
node_217 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.graphics.highcharts.combo.regression', :type => 'default', :icon => '/images/icons/16x16/graphics.png', :url => '/graphics/highcharts/examples?example=combo_regression')
parent_id = node_176
parent_id = node_173
node_218 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.graphics.sparklines.name', :type => 'folder', :icon => '/images/icons/16x16/sparklines.png')
parent_id = node_218
node_219 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.graphics.sparklines.examples', :type => 'default', :icon => '/images/icons/16x16/sparklines.png', :url => '/graphics/sparklines/examples')
node_220 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.graphics.sparklines.default', :type => 'default', :icon => '/images/icons/16x16/sparklines.png', :url => '/graphics/sparklines/default')
parent_id = node_173
parent_id = node_172
node_221 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.handling.name', :type => 'folder', :icon => '/images/icons/16x16/plugin.png')
parent_id = node_221
node_222 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.history.name', :type => 'folder', :icon => '/images/icons/16x16/history.png')
parent_id = node_222
node_223 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.history.example1', :type => 'default', :icon => '/images/icons/16x16/history.png', :url => '/handling/history/html4')
node_224 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.history.example3', :type => 'default', :icon => '/images/icons/16x16/history.png', :url => '/handling/history/ajax')
node_225 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.history.example4', :type => 'default', :icon => '/images/icons/16x16/history.png', :url => '/handling/history/ajax2')
node_226 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.history.example6', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/handling/history/mvc')
node_227 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.history.example5', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/handling/history/bbq')
node_228 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.history.example2', :type => 'default', :icon => '/images/icons/16x16/html5.png', :url => '/handling/history/html5')
node_229 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.history.example10', :type => 'default', :icon => '/images/icons/16x16/html5.png', :url => '/handling/history/native')
node_230 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.history.example11', :type => 'default', :icon => '/images/icons/16x16/html5.png', :url => '/handling/history/navigator')
node_231 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.history.example9', :type => 'default', :icon => '/images/icons/16x16/chrome.png', :url => '/handling/history/chrome')
node_232 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.history.example12', :type => 'default', :icon => '/images/icons/16x16/safari.png', :url => '/handling/history/safari')
node_233 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.history.example7', :type => 'default', :icon => '/images/icons/16x16/webkit.png', :url => '/handling/history/bcherry')
node_234 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.history.example8', :type => 'default', :icon => '/images/icons/16x16/webkit.png', :url => '/handling/history/bcherry_orig')
parent_id = node_221
node_235 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.mediahelpers.name', :type => 'folder', :icon => '/images/icons/16x16/display.png')
parent_id = node_235
node_236 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.mediahelpers.default', :type => 'default', :icon => '/images/icons/16x16/display.png', :url => '/handling/mediahelpers/default')
parent_id = node_221
node_237 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.replacetext.name', :type => 'folder', :icon => '/images/icons/16x16/plugin.png')
parent_id = node_237
node_238 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.replacetext.default', :type => 'default', :icon => '/images/icons/16x16/plugin.png', :url => '/handling/replace_text/default')
parent_id = node_221
parent_id = node_172
node_239 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.haml.name', :type => 'folder', :icon => '/images/icons/16x16/haml.png')
parent_id = node_239
node_240 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.haml.jhaml', :type => 'default', :icon => '/images/icons/16x16/haml.png', :url => '/haml/jhaml')
parent_id = node_172
node_241 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.widgets.name', :type => 'folder', :icon => '/images/icons/16x16/plugin.png')
parent_id = node_241
node_990 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.editor.name', :type => 'folder', :icon => '/images/icons/16x16/editor.png')
parent_id = node_990
node_991 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.markitup.name', :type => 'folder', :icon => '/images/icons/16x16/markitup.png')
parent_id = node_991
node_992 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.markitup.default', :type => 'default', :icon => '/images/icons/16x16/markitup.png', :url => '/widgets/mark_it_up/basic')
node_993 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.markitup.html', :type => 'default', :icon => '/images/icons/16x16/markitup.png', :url => '/widgets/mark_it_up/html')
node_994 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.markitup.markdown', :type => 'default', :icon => '/images/icons/16x16/markitup.png', :url => '/widgets/mark_it_up/markdown')
node_995 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.markitup.textile', :type => 'default', :icon => '/images/icons/16x16/markitup.png', :url => '/widgets/mark_it_up/textile')
node_996 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.markitup.wiki', :type => 'default', :icon => '/images/icons/16x16/markitup.png', :url => '/widgets/mark_it_up/wiki')
parent_id = node_990
node_997 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.tinymce.name', :type => 'folder', :icon => '/images/icons/16x16/tinymce.png')
parent_id = node_997
node_998 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tinymce.default', :type => 'default', :icon => '/images/icons/16x16/tinymce.png', :url => '/widgets/tiny_mce')
parent_id = node_990
parent_id = node_241
node_999 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ical.name', :type => 'folder', :icon => '/images/icons/16x16/calendar.png')
parent_id = node_999
node_1000 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ical.anytime.name', :type => 'folder', :icon => '/images/icons/16x16/alarmclock.png')
parent_id = node_1000
node_1001 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ical.anytime.default', :type => 'default', :icon => '/images/icons/16x16/alarmclock.png', :url => '/widgets/ical/anytime/default')
node_1002 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ical.anytime.inline', :type => 'default', :icon => '/images/icons/16x16/alarmclock.png', :url => '/widgets/ical/anytime/inline')
node_1003 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ical.anytime.separate', :type => 'default', :icon => '/images/icons/16x16/alarmclock.png', :url => '/widgets/ical/anytime/separate')
node_1004 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ical.anytime.css', :type => 'default', :icon => '/images/icons/16x16/alarmclock.png', :url => '/widgets/ical/anytime/css')
node_1005 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ical.anytime.ajax', :type => 'default', :icon => '/images/icons/16x16/alarmclock.png', :url => '/widgets/ical/anytime/ajax')
node_1006 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ical.anytime.convert', :type => 'default', :icon => '/images/icons/16x16/alarmclock.png', :url => '/widgets/ical/anytime/convert')
node_1007 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ical.anytime.extend', :type => 'default', :icon => '/images/icons/16x16/alarmclock.png', :url => '/widgets/ical/anytime/extend')
parent_id = node_999
node_1008 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ical.fullcalendar.name', :type => 'folder', :icon => '/images/icons/16x16/calendar.png')
parent_id = node_1008
node_1009 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ical.fullcalendar.default', :type => 'default', :icon => '/images/icons/16x16/calendar.png', :url => '/widgets/ical/full_calendar/default')
node_1010 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ical.fullcalendar.agenda', :type => 'default', :icon => '/images/icons/16x16/calendar.png', :url => '/widgets/ical/full_calendar/agenda_views')
node_1011 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ical.fullcalendar.basic', :type => 'default', :icon => '/images/icons/16x16/calendar.png', :url => '/widgets/ical/full_calendar/basic_views')
node_1012 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ical.fullcalendar.gcal', :type => 'default', :icon => '/images/icons/16x16/calendar.png', :url => '/widgets/ical/full_calendar/gcal')
node_1013 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ical.fullcalendar.json', :type => 'default', :icon => '/images/icons/16x16/calendar.png', :url => '/widgets/ical/full_calendar/json')
node_1014 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ical.fullcalendar.theme', :type => 'default', :icon => '/images/icons/16x16/calendar.png', :url => '/widgets/ical/full_calendar/theme')
node_1015 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ical.fullcalendar.selectable', :type => 'default', :icon => '/images/icons/16x16/calendar.png', :url => '/widgets/ical/full_calendar/selectable')
node_1016 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ical.fullcalendar.external', :type => 'default', :icon => '/images/icons/16x16/calendar.png', :url => '/widgets/ical/full_calendar/external_dragging')
parent_id = node_999
node_1017 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ical.calendar.listing', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/widgets/ical/calendars')
parent_id = node_241
node_1018 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.name', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_1018
node_1019 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.default', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_1019
node_1020 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.20loading', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_1020
node_1021 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.20xml_data', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0101;model=invheader;datatype=xml')
node_1022 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.20json_data', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0102;model=invheader')
node_1023 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.20once', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0103;model=invheader')
node_1024 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.20array', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0104;datatype=local')
parent_id = node_1019
node_1025 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.20manipulating', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_1025
node_1026 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.20data', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0201;model=invheader')
node_1027 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.20get', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0202;model=invheader')
node_1028 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.20set', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0203;model=invheader')
parent_id = node_1019
node_1029 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.20advanced', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_1029
node_1030 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.20multi', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0301;model=invheader')
node_1031 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.20master', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0302;model=invheader')
node_1032 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.20subgrid', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0303;model=invheader')
node_1033 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.20as_subgrid', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/widgets/jqgrid/demo?demo=0304;model=invheader')
node_1034 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.20resizing', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0305;model=invheader')
node_1035 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.20big_sets', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0306;model=item')
parent_id = node_1019
node_1036 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.30v', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_1036
node_1037 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.30cmulti', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0401;model=invheader')
node_1038 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.30json_subgrid', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0402;model=invheader')
node_1039 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.30after_load', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0403;model=invheader')
node_1040 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.30resizable', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0404;model=invheader')
node_1041 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.30hide', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0405;model=invheader')
parent_id = node_1019
node_1042 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.30row', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_1042
node_1043 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.30basic', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0501;model=invheader')
node_1044 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.30cedit', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0502;model=invheader')
node_1045 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.30events', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0503;model=invheader')
node_1046 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.30full', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0504;model=invheader')
node_1047 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.30types', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0505;model=invheader')
parent_id = node_1019
node_1048 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.30mapping', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_1048
node_1049 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.30xml_map', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0601;datatype=local')
node_1050 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.30json_map', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/widgets/jqgrid/demo?demo=0602;model=invheader')
node_1051 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.30optimize', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/widgets/jqgrid/demo?demo=0603;model=invheader')
parent_id = node_1019
node_1052 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.30integrations', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_1052
node_1053 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.30datepicker', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0701;datatype=local')
parent_id = node_1019
node_1054 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jqgrid.demo.30live', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_1054
node_1055 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.30searching', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0801;model=invheader')
node_1056 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.30edit_row', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0802;model=invheader')
node_1057 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.30add_row', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0803;model=invheader')
node_1058 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.30delete_row', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0804;model=invheader')
node_1059 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.30navigator', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0805;model=invheader')
parent_id = node_1019
node_1060 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jqgrid.demo.31v', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_1060
node_1061 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.31toolbar', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0901;model=invheader')
node_1062 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.31userdata', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0902;model=invheader')
node_1063 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.31new_methods', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0903;model=invheader')
node_1064 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.31post_data', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0904;model=invheader')
node_1065 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.31cparams', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=0905;model=invheader')
parent_id = node_1019
node_1066 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.jqgrid.demo.32v', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_1066
node_1067 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.32new_methods', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1001;model=invheader')
node_1068 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.32initial', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1002;model=invheader')
node_1069 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.32insert', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1003;model=invheader')
node_1070 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.32server_errors', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1004;model=invheader')
node_1071 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.32hide', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1005;model=invheader')
node_1072 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.32cbutton', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1006;model=invheader')
node_1073 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.32client', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1007;model=invheader')
parent_id = node_1019
node_1074 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.jqgrid.demo.33v', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_1074
node_1075 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.33dynamic', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1101;model=invheader')
node_1076 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.33tree', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1102;model=account')
node_1077 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.33cell', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1103;model=invheader')
node_1078 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.33visible', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1104;model=invheader')
node_1079 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.33html', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1105;model=invheader')
node_1080 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.33mtoolbar', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1106;model=invheader')
node_1081 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.33mform', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1107;model=invheader')
node_1082 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jqgrid.demo.33function', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1108;model=invheader')
node_1083 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jqgrid.demo.33rdnd', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1109;model=invheader')
parent_id = node_1019
node_1084 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.jqgrid.demo.34v', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_1084
node_1085 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.34format', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1201;model=invheader')
node_1086 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.34cformat', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1202;model=invheader')
node_1087 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.34import', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1203;model=invheader')
node_1088 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.34autoscroll', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/widgets/jqgrid/demo?demo=1204;model=invheader')
node_1089 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.34scroll', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/widgets/jqgrid/demo?demo=1205;model=invheader')
node_1090 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.34adjacency', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1206;model=account')
parent_id = node_1019
node_1091 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 12, :title => 'txt.jqgrid.demo.35v', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_1091
node_1092 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.35number', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1301;model=invheader')
node_1093 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.35view', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1302;model=item')
node_1094 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.35stoolbar', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1303;model=invheader')
node_1095 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.35asearch', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1304;model=invheader')
node_1096 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.35improvements', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/widgets/jqgrid/demo?demo=1305;model=invheader')
node_1097 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.35real', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1306;model=account')
node_1098 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.35navigation', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/widgets/jqgrid/demo?demo=1307;model=invheader')
node_1099 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jqgrid.demo.35summary', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1308;model=invheader')
node_1100 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jqgrid.demo.35sortable', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1309;model=invheader')
parent_id = node_1019
node_1101 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 13, :title => 'txt.jqgrid.demo.36v', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_1101
node_1102 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.36api', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1401;model=invheader')
node_1103 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.36rtl', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1402;model=invheader')
node_1104 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.36reordering', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1403;model=invheader')
node_1105 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.36chooser', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1404;model=invheader')
node_1106 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.36validation', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1405;model=invheader')
node_1107 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.36cinput', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1406;model=invheader')
node_1108 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.36ajax', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1407;model=invheader')
node_1109 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jqgrid.demo.36tscroll', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1408;model=item')
node_1110 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jqgrid.demo.36srows', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1409;model=invheader')
node_1111 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.jqgrid.demo.36rdnd', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1410;model=invheader')
node_1112 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.jqgrid.demo.36resizing', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1411;model=invheader')
parent_id = node_1019
node_1113 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 14, :title => 'txt.jqgrid.demo.37v', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_1113
node_1114 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.37array', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1501;datatype=local')
node_1115 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.37server', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1502;model=item')
node_1116 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.37single', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1503;model=item')
node_1117 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.37multiple', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1504;model=item')
node_1118 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.37scroll', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1505;model=item')
node_1119 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.37toolbar', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1506;model=item')
node_1120 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.37crud', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/widgets/jqgrid/demo?demo=1507;model=invheader')
parent_id = node_1019
node_1121 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 15, :title => 'txt.jqgrid.demo.38v', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_1121
node_1122 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.38array1', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1601;datatype=local')
node_1123 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.38array2', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1602;datatype=local')
node_1124 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.38array3', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1603;datatype=local')
node_1125 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.38array4', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1604;datatype=local')
node_1126 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.38array5', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1605;datatype=local')
node_1127 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.38array6', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1606;datatype=local')
node_1128 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.38remote1', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1607;model=invheader')
node_1129 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jqgrid.demo.38remote2', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1608;model=invheader')
node_1130 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jqgrid.demo.38remote3', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1609;model=invheader')
node_1131 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.jqgrid.demo.38remote4', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1610;model=invheader')
node_1132 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.jqgrid.demo.38xml1', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1611;model=invheader')
node_1133 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.jqgrid.demo.38remote5', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=1612;model=invheader')
parent_id = node_1019
parent_id = node_1018
node_1134 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.mine.name', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_1134
node_1135 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.mine.cedit', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_1135
node_1136 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.mine.cedit1', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=9906;model=invheader')
node_1137 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.mine.cedit2', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=9907;model=invheader')
node_1138 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.mine.cedit3', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=9908;model=invheader')
node_1139 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.mine.cedit4', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=9909;model=invheader')
node_1140 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.mine.cedit5', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=9910;model=invheader')
parent_id = node_1134
node_1141 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.mine.contextmenu', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_1141
node_1142 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.mine.contextmenu1', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/mine?demo=contextmenu1')
node_1143 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.mine.contextmenu2', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=9901;model=invheader')
parent_id = node_1134
node_1144 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.mine.treegrid', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_1144
node_1145 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.33tree', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=9903;model=account')
node_1146 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.34adjacency', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=9904;model=account')
node_1147 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.35real', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/demo?demo=9905;model=account')
parent_id = node_1134
node_1148 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.gridify', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_1148
node_1149 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.simple.name', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_1149
node_1150 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.simple.default', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/players?example=01')
node_1151 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.simple.selection', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/players?example=02')
node_1152 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.simple.direct', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/players?example=03')
node_1153 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.simple.multiple', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/players?example=04')
node_1154 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.simple.master', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/players?example=05')
parent_id = node_1148
node_1155 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.manipulation.name', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_1155
node_1156 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.manipulation.inline', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/players?example=06')
node_1157 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.manipulation.modal', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/players?example=07')
node_1158 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.manipulation.input', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/players?example=08')
node_1159 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.manipulation.datepicker', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/players?example=09')
parent_id = node_1148
node_1160 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.subgrids.name', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_1160
node_1161 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.subgrids.default', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/widgets/jqgrid/players?example=10')
node_1162 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.subgrids.crud', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/widgets/jqgrid/players?example=11')
node_1163 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.subgrids.selection', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/widgets/jqgrid/players?example=12')
parent_id = node_1148
node_1164 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.improvements.name', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/players?example=13')
parent_id = node_1134
node_1165 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.secret', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/secrets')
parent_id = node_1018
node_1166 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.2dc', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_1166
node_1167 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.subgrids.name', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_1167
node_1168 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.subgrids.default', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/users?example=10')
node_1169 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.subgrids.crud', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/users?example=11')
node_1170 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.subgrids.selection', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/widgets/jqgrid/users?example=12')
parent_id = node_1166
parent_id = node_1018
parent_id = node_241
node_1171 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ribbon.name', :type => 'folder', :icon => '/images/icons/16x16/ribbon.png')
parent_id = node_1171
node_1172 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ribbon.default', :type => 'default', :icon => '/images/icons/16x16/ribbon.png', :url => '/widgets/ribbon/default')
node_1173 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ribbon.office', :type => 'default', :icon => '/images/icons/16x16/ribbon.png', :url => '/widgets/ribbon/office')
node_1174 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ribbon.simple', :type => 'default', :icon => '/images/icons/16x16/ribbon.png', :url => '/widgets/ribbon/simple')
parent_id = node_241
node_1175 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.tools.name', :type => 'folder', :icon => '/images/icons/16x16/tools.png')
parent_id = node_1175
node_1176 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tools.ui.name', :type => 'folder', :icon => '/images/icons/16x16/tools.png')
parent_id = node_1176
node_1177 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tools.ui.tooltips.name', :type => 'folder', :icon => '/images/icons/16x16/tools.png')
parent_id = node_1177
node_1178 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tools.default', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/widgets/tools/tooltips/default')
node_1179 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.tools.ui.tooltips.demo01', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/widgets/tools/tooltips/demo01')
node_1180 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.tools.ui.tooltips.demo02', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/widgets/tools/tooltips/demo02')
node_1181 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.tools.ui.tooltips.demo03', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/widgets/tools/tooltips/demo03')
node_1182 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.tools.ui.tooltips.demo04', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/widgets/tools/tooltips/demo04')
node_1183 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.tools.ui.tooltips.demo05', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/widgets/tools/tooltips/demo05')
node_1184 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.tools.ui.tooltips.demo06', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/widgets/tools/tooltips/demo06')
node_1185 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.tools.ui.tooltips.demo07', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/widgets/tools/tooltips/demo07')
parent_id = node_1176
node_1186 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.tools.ui.overlay.name', :type => 'folder', :icon => '/images/icons/16x16/tools.png')
parent_id = node_1186
node_1187 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tools.ui.overlay.demo01', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/widgets/tools/overlay/demo01')
node_1188 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.tools.ui.overlay.demo02', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/widgets/tools/overlay/demo02')
node_1189 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.tools.ui.overlay.demo03', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/widgets/tools/overlay/demo03')
node_1190 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.tools.ui.overlay.demo04', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/widgets/tools/overlay/demo04')
node_1191 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.tools.ui.overlay.demo05', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/widgets/tools/overlay/demo05')
node_1192 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.tools.ui.overlay.demo06', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/widgets/tools/overlay/demo06')
node_1193 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.tools.ui.overlay.demo07', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/widgets/tools/overlay/demo07')
node_1194 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.tools.ui.overlay.demo08', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/widgets/tools/overlay/demo08')
parent_id = node_1176
parent_id = node_1175
node_1195 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.tools.toolbox.name', :type => 'folder', :icon => '/images/icons/16x16/tools.png')
parent_id = node_1195
node_1196 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tools.toolbox.expose.name', :type => 'folder', :icon => '/images/icons/16x16/tools.png')
parent_id = node_1196
node_1197 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tools.toolbox.expose.demo01', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/widgets/tools/expose/demo01')
node_1198 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.tools.toolbox.expose.demo02', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/widgets/tools/expose/demo02')
node_1199 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.tools.toolbox.expose.demo03', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/widgets/tools/expose/demo03')
node_1200 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.tools.toolbox.expose.demo04', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/widgets/tools/expose/demo04')
node_1201 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.tools.toolbox.expose.demo05', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/widgets/tools/expose/demo05')
parent_id = node_1195
parent_id = node_1175
parent_id = node_241
node_1202 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.tokeninput.name', :type => 'folder', :icon => '/images/icons/16x16/plugin.png')
parent_id = node_1202
node_1203 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tokeninput.demo', :type => 'default', :icon => '/images/icons/16x16/plugin.png', :url => '/widgets/tokeninput/demo')
node_1204 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.tokeninput.default', :type => 'default', :icon => '/images/icons/16x16/plugin.png', :url => '/widgets/tokeninput/default')
parent_id = node_241
node_1205 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.tree.name', :type => 'folder', :icon => '/images/icons/16x16/tree.png')
parent_id = node_1205
node_1228 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.dt.name', :type => 'folder', :icon => '/images/icons/16x16/tree.png')
parent_id = node_1228
node_1229 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.dt.default', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/default')
node_1230 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.dt.quick', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/quick')
node_1231 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.dt.ul', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/ul')
node_1232 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.dt.json', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/json')
node_1233 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.dt.api', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/api')
node_1234 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.dt.select', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/select')
node_1235 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.dt.theming.name', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/theming')
node_1236 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.dt.persist', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/persist')
node_1237 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.dt.events', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/events')
node_1238 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.dt.effects', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/effects')
node_1239 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.dt.dnd', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/dnd')
node_1240 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.dt.dnd2', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/dnd2')
node_1241 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 12, :title => 'txt.dt.dnd3', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/dnd3')
node_1242 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 13, :title => 'txt.dt.contextmenu', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/contextmenu')
node_1243 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 14, :title => 'txt.dt.minexpand', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/minexpand')
node_1244 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 15, :title => 'txt.dt.lazy_persist', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/lazy_persist')
node_1245 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 16, :title => 'txt.dt.iframe', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/iframe')
node_1246 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 17, :title => 'txt.dt.benchmark', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/test_bench')
node_1247 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 18, :title => 'txt.dt.form', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/form')
node_1248 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 19, :title => 'txt.dt.multiline', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/multiline')
parent_id = node_1205
node_1249 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jst.name', :type => 'folder', :icon => '/images/icons/16x16/tree.png')
parent_id = node_1249
node_1250 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jst.demo', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/demo')
node_1251 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jst.plugins', :type => 'folder', :icon => '/images/icons/16x16/tree.png')
parent_id = node_1251
node_1252 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jst.core', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/core')
node_1253 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jst.html', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/html')
node_1254 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jst.json', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/json')
node_1255 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jst.xml', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/xml')
node_1256 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jst.themes', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/themes')
node_1257 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jst.ui', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/ui')
node_1258 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jst.crrm', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/crrm')
node_1259 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jst.hotkeys', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/hotkeys')
node_1260 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jst.lang', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/languages')
node_1261 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.jst.cookies', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/cookies')
node_1262 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.jst.sort', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/sort')
node_1263 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.jst.dnd', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/dnd')
node_1264 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 12, :title => 'txt.jst.checkbox', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/checkbox')
node_1265 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 13, :title => 'txt.jst.radio', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/radio')
node_1266 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 14, :title => 'txt.jst.search', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/searching')
node_1267 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 15, :title => 'txt.jst.contextmenu', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/contextmenu')
node_1268 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 16, :title => 'txt.jst.types', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/types')
node_1269 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 17, :title => 'txt.jst.themeroller', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/themeroller')
node_1270 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 18, :title => 'txt.jst.unique', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/unique')
parent_id = node_1249
parent_id = node_1205
parent_id = node_241
parent_id = node_172
parent_id = node_1
node_494 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.name', :type => 'accordion', :icon => '/images/icons/16x16/jqmobile.png')
parent_id = node_494
node_495 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.os.android', :type => 'folder', :icon => '/images/icons/16x16/android_logo2.png')
parent_id = node_495
node_496 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.galaxys', :type => 'folder', :icon => '/images/icons/16x16/galaxys.png')
parent_id = node_496
node_497 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators?device=galaxy.s;orientation=portrait;url=/mobile')
node_498 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators?device=galaxy.s;orientation=portrait;url=/mobile/experiments/main')
node_499 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators?device=galaxy.s;orientation=portrait;url=http://jquerymobile.com/demos/1.0a4/')
node_500 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.emu.jqt.default', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators?device=galaxy.s;orientation=portrait;url=/jqtouch/demo')
node_501 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.emu.jqt.home', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators?device=galaxy.s;orientation=portrait;url=http://www.jqtouch.com/preview/demos/main/')
parent_id = node_495
node_502 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.galaxys2', :type => 'folder', :icon => '/images/icons/16x16/galaxys.png')
parent_id = node_502
node_503 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators?device=galaxy.s2;orientation=portrait;url=/mobile')
node_504 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators?device=galaxy.s2;orientation=portrait;url=/mobile/experiments/main')
node_505 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators?device=galaxy.s2;orientation=portrait;url=http://jquerymobile.com/demos/1.0a4/')
node_506 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.emu.jqt.default', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators?device=galaxy.s2;orientation=portrait;url=/jqtouch/demo')
node_507 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.emu.jqt.home', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators?device=galaxy.s2;orientation=portrait;url=http://www.jqtouch.com/preview/demos/main/')
parent_id = node_495
node_508 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.galaxy7', :type => 'folder', :icon => '/images/icons/16x16/galaxy7.png')
parent_id = node_508
node_509 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators?device=galaxy.tab.7;orientation=portrait;url=/mobile')
node_510 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators?device=galaxy.tab.7;orientation=portrait;url=/mobile/experiments/main')
node_511 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators?device=galaxy.tab.7;orientation=portrait;url=http://jquerymobile.com/demos/1.0a4/')
node_512 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.emu.jqt.default', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators?device=galaxy.tab.7;orientation=portrait;url=/jqtouch/demo')
node_513 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.emu.jqt.home', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators?device=galaxy.tab.7;orientation=portrait;url=http://www.jqtouch.com/preview/demos/main/')
parent_id = node_495
node_514 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.emu.galaxy9', :type => 'folder', :icon => '/images/icons/16x16/galaxy10.png')
parent_id = node_514
node_515 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators?device=galaxy.tab.8.9;orientation=landscape;url=/mobile')
node_516 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators?device=galaxy.tab.8.9;orientation=landscape;url=/mobile/experiments/main')
node_517 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators?device=galaxy.tab.8.9;orientation=landscape;url=http://jquerymobile.com/demos/1.0a4/')
node_518 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.emu.jqt.default', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators?device=galaxy.tab.8.9;orientation=landscape;url=/jqtouch/demo')
node_519 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.emu.jqt.home', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators?device=galaxy.tab.8.9;orientation=landscape;url=http://www.jqtouch.com/preview/demos/main/')
parent_id = node_495
node_520 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.emu.galaxy10', :type => 'folder', :icon => '/images/icons/16x16/galaxy10.png')
parent_id = node_520
node_521 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators?device=galaxy.tab.10.1;orientation=landscape;url=/mobile')
node_522 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators?device=galaxy.tab.10.1;orientation=landscape;url=/mobile/experiments/main')
node_523 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators?device=galaxy.tab.10.1;orientation=landscape;url=http://jquerymobile.com/demos/1.0a4/')
node_524 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.emu.jqt.default', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators?device=galaxy.tab.10.1;orientation=landscape;url=/jqtouch/demo')
node_525 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.emu.jqt.home', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators?device=galaxy.tab.10.1;orientation=landscape;url=http://www.jqtouch.com/preview/demos/main/')
parent_id = node_495
node_526 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.emu.htc.sensation', :type => 'folder', :icon => '/images/icons/16x16/htc.sensation.png')
parent_id = node_526
node_527 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators?device=htc.sensation;orientation=portrait;url=/mobile')
node_528 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators?device=htc.sensation;orientation=portrait;url=/mobile/experiments/main')
node_529 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators?device=htc.sensation;orientation=portrait;url=http://jquerymobile.com/demos/1.0a4/')
node_530 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.emu.jqt.default', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators?device=htc.sensation;orientation=portrait;url=/jqtouch/demo')
node_531 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.emu.jqt.home', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators?device=htc.sensation;orientation=portrait;url=http://www.jqtouch.com/preview/demos/main/')
parent_id = node_495
parent_id = node_494
node_532 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.os.bos', :type => 'folder', :icon => '/images/icons/16x16/blackberry_logo.png')
parent_id = node_532
node_533 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.bb.play', :type => 'folder', :icon => '/images/icons/16x16/bb.playbook.png')
parent_id = node_533
node_534 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators?device=bb.playbook;orientation=landscape;url=/mobile')
node_535 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators?device=bb.playbook;orientation=landscape;url=/mobile/experiments/main')
node_536 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators?device=bb.playbook;orientation=landscape;url=http://jquerymobile.com/demos/1.0a4/')
node_537 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.emu.jqt.default', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators?device=bb.playbook;orientation=portrait;url=/jqtouch/demo')
node_538 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.emu.jqt.home', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators?device=bb.playbook;orientation=portrait;url=http://www.jqtouch.com/preview/demos/main/')
parent_id = node_532
node_539 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.bb.torch', :type => 'folder', :icon => '/images/icons/16x16/bb.torch.png')
parent_id = node_539
node_540 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators?device=bb.torch;orientation=portrait;url=/mobile')
node_541 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators?device=bb.torch;orientation=portrait;url=/mobile/experiments/main')
node_542 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators?device=bb.torch;orientation=portrait;url=http://jquerymobile.com/demos/1.0a4/')
node_543 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.emu.jqt.default', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators?device=bb.torch;orientation=portrait;url=/jqtouch/demo')
node_544 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.emu.jqt.home', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators?device=bb.torch;orientation=portrait;url=http://www.jqtouch.com/preview/demos/main/')
parent_id = node_532
parent_id = node_494
node_545 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.os.ios', :type => 'folder', :icon => '/images/icons/16x16/apple_logo.png')
parent_id = node_545
node_546 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.ipad', :type => 'folder', :icon => '/images/icons/16x16/ipad.png')
parent_id = node_546
node_547 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators?device=ipad;orientation=landscape;url=/mobile')
node_548 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators?device=ipad;orientation=landscape;url=/mobile/experiments/main')
node_549 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators?device=ipad;orientation=landscape;url=http://jquerymobile.com/demos/1.0a4/')
node_550 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.emu.jqt.default', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators?device=ipad;orientation=landscape;url=/jqtouch/demo')
node_551 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.emu.jqt.home', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators?device=ipad;orientation=landscape;url=http://www.jqtouch.com/preview/demos/main/')
parent_id = node_545
node_552 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.iphone3', :type => 'folder', :icon => '/images/icons/16x16/iphone.png')
parent_id = node_552
node_553 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators?device=iphone.3;orientation=portrait;url=/mobile')
node_554 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators?device=iphone.3;orientation=portrait;url=/mobile/experiments/main')
node_555 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators?device=iphone.3;orientation=portrait;url=http://jquerymobile.com/demos/1.0a4/')
node_556 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.emu.jqt.default', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators?device=iphone.3;orientation=portrait;url=/jqtouch/demo')
node_557 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.emu.jqt.home', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators?device=iphone.3;orientation=portrait;url=http://www.jqtouch.com/preview/demos/main/')
parent_id = node_545
node_558 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.iphone4', :type => 'folder', :icon => '/images/icons/16x16/iphone.png')
parent_id = node_558
node_559 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators?device=iphone.4;orientation=portrait;url=/mobile')
node_560 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators?device=iphone.4;orientation=portrait;url=/mobile/experiments/main')
node_561 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators?device=iphone.4;orientation=portrait;url=http://jquerymobile.com/demos/1.0a4/')
node_562 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.emu.jqt.default', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators?device=iphone.4;orientation=portrait;url=/jqtouch/demo')
node_563 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.emu.jqt.home', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators?device=iphone.4;orientation=portrait;url=http://www.jqtouch.com/preview/demos/main/')
parent_id = node_545
parent_id = node_494
node_564 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.emu.os.webos', :type => 'folder', :icon => '/images/icons/16x16/webos_logo.png')
parent_id = node_564
node_565 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.palm', :type => 'folder', :icon => '/images/icons/16x16/palm.png')
parent_id = node_565
node_566 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators?device=palm.pre.2;orientation=portrait;url=/mobile')
node_567 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators?device=palm.pre.2;orientation=portrait;url=/mobile/experiments/main')
node_568 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators?device=palm.pre.2;orientation=portrait;url=http://jquerymobile.com/demos/1.0a4/')
node_569 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.emu.jqt.default', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators?device=palm.pre.2;orientation=portrait;url=/jqtouch/demo')
node_570 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.emu.jqt.home', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators?device=palm.pre.2;orientation=portrait;url=http://www.jqtouch.com/preview/demos/main/')
parent_id = node_564
parent_id = node_494
parent_id = node_1
puts "Finished creating navigation tree"


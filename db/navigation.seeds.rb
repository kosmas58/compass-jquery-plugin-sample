
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
node_94 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 13, :title => 'txt.ui.widgets.datepicker.event-search', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/event_search')
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
node_157 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.effects.add_class.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/add_class')
node_158 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.effects.remove_class.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/remove_class')
node_159 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.effects.switch_class.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/switch_class')
node_160 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.effects.toggle_class.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/toggle_class')
node_161 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.effects.show.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/show')
node_162 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.effects.hide.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/hide')
node_163 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.effects.toggle.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/toggle')
node_164 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.effects.animate.default', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/animate')
node_165 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.effects.effect.default', :type => 'folder', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_165
node_166 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.effects.effect.showcase', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/effect/default')
node_167 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.effects.effect.easing', :type => 'default', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/effect/easing')
parent_id = node_156
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
node_173 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.widgets.name', :type => 'folder', :icon => '/images/icons/16x16/plugin.png')
parent_id = node_173
node_174 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tools.name', :type => 'folder', :icon => '/images/icons/16x16/tools.png')
parent_id = node_174
node_175 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tools.ui.name', :type => 'folder', :icon => '/images/icons/16x16/tools.png')
parent_id = node_175
node_176 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tools.ui.tooltips.name', :type => 'folder', :icon => '/images/icons/16x16/tools.png')
parent_id = node_176
node_177 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tools.default', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/tooltips/default')
node_178 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.tools.ui.tooltips.demo01', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/tooltips/demo01')
node_179 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.tools.ui.tooltips.demo02', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/tooltips/demo02')
node_180 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.tools.ui.tooltips.demo03', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/tooltips/demo03')
node_181 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.tools.ui.tooltips.demo04', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/tooltips/demo04')
node_182 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.tools.ui.tooltips.demo05', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/tooltips/demo05')
node_183 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.tools.ui.tooltips.demo06', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/tooltips/demo06')
node_184 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.tools.ui.tooltips.demo07', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/tooltips/demo07')
parent_id = node_175
node_185 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.tools.ui.overlay.name', :type => 'folder', :icon => '/images/icons/16x16/tools.png')
parent_id = node_185
node_186 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tools.ui.overlay.demo01', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/overlay/demo01')
node_187 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.tools.ui.overlay.demo02', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/overlay/demo02')
node_188 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.tools.ui.overlay.demo03', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/overlay/demo03')
node_189 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.tools.ui.overlay.demo04', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/overlay/demo04')
node_190 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.tools.ui.overlay.demo05', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/overlay/demo05')
node_191 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.tools.ui.overlay.demo06', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/overlay/demo06')
node_192 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.tools.ui.overlay.demo07', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/overlay/demo07')
node_193 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.tools.ui.overlay.demo08', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/overlay/demo08')
parent_id = node_175
parent_id = node_174
node_194 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.tools.toolbox.name', :type => 'folder', :icon => '/images/icons/16x16/tools.png')
parent_id = node_194
node_195 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tools.toolbox.expose.name', :type => 'folder', :icon => '/images/icons/16x16/tools.png')
parent_id = node_195
node_196 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tools.toolbox.expose.demo01', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/expose/demo01')
node_197 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.tools.toolbox.expose.demo02', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/expose/demo02')
node_198 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.tools.toolbox.expose.demo03', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/expose/demo03')
node_199 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.tools.toolbox.expose.demo04', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/expose/demo04')
node_200 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.tools.toolbox.expose.demo05', :type => 'default', :icon => '/images/icons/16x16/tools.png', :url => '/tools/expose/demo05')
parent_id = node_194
parent_id = node_174
parent_id = node_173
node_201 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.tree.name', :type => 'folder', :icon => '/images/icons/16x16/tree.png')
parent_id = node_201
node_202 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jst.name', :type => 'folder', :icon => '/images/icons/16x16/tree.png')
parent_id = node_202
node_203 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jst.demo', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/demo')
node_204 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jst.plugins', :type => 'folder', :icon => '/images/icons/16x16/tree.png')
parent_id = node_204
node_205 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jst.core', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/core')
node_206 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jst.html', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/html')
node_207 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jst.json', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/json')
node_208 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jst.xml', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/xml')
node_209 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jst.themes', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/themes')
node_210 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jst.ui', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/ui')
node_211 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jst.crrm', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/crrm')
node_212 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jst.hotkeys', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/hotkeys')
node_213 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jst.lang', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/languages')
node_214 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.jst.cookies', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/cookies')
node_215 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.jst.sort', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/sort')
node_216 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.jst.dnd', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/dnd')
node_217 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 12, :title => 'txt.jst.checkbox', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/checkbox')
node_218 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 13, :title => 'txt.jst.radio', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/radio')
node_219 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 14, :title => 'txt.jst.search', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/searching')
node_220 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 15, :title => 'txt.jst.contextmenu', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/contextmenu')
node_221 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 16, :title => 'txt.jst.types', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/types')
node_222 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 17, :title => 'txt.jst.themeroller', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/themeroller')
node_223 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 18, :title => 'txt.jst.unique', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/jstree/unique')
parent_id = node_202
parent_id = node_201
node_224 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.dt.name', :type => 'folder', :icon => '/images/icons/16x16/tree.png')
parent_id = node_224
node_225 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.dt.default', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/default')
node_226 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.dt.quick', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/quick')
node_227 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.dt.ul', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/ul')
node_228 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.dt.json', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/json')
node_229 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.dt.api', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/api')
node_230 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.dt.select', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/select')
node_231 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.dt.theming.name', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/theming')
node_232 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.dt.persist', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/persist')
node_233 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.dt.events', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/events')
node_234 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.dt.effects', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/effects')
node_235 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.dt.dnd', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/dnd')
node_236 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.dt.dnd2', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/dnd2')
node_237 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 12, :title => 'txt.dt.dnd3', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/dnd3')
node_238 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 13, :title => 'txt.dt.contextmenu', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/contextmenu')
node_239 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 14, :title => 'txt.dt.minexpand', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/minexpand')
node_240 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 15, :title => 'txt.dt.lazy_persist', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/lazy_persist')
node_241 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 16, :title => 'txt.dt.iframe', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/iframe')
node_242 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 17, :title => 'txt.dt.benchmark', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/test_bench')
node_243 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 18, :title => 'txt.dt.form', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/form')
node_244 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 19, :title => 'txt.dt.multiline', :type => 'default', :icon => '/images/icons/16x16/tree.png', :url => '/widgets/dynatree/multiline')
parent_id = node_201
parent_id = node_173
node_245 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ribbon.name', :type => 'folder', :icon => '/images/icons/16x16/ribbon.png')
parent_id = node_245
node_246 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ribbon.default', :type => 'default', :icon => '/images/icons/16x16/ribbon.png', :url => '/widgets/ribbon/default')
node_247 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ribbon.office', :type => 'default', :icon => '/images/icons/16x16/ribbon.png', :url => '/widgets/ribbon/office')
node_248 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ribbon.simple', :type => 'default', :icon => '/images/icons/16x16/ribbon.png', :url => '/widgets/ribbon/simple')
parent_id = node_173
node_249 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.name', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_249
node_250 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.default', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_250
node_251 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.20loading', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_251
node_252 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.20xml_data', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0101;model=invheader;datatype=xml')
node_253 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.20json_data', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0102;model=invheader')
node_254 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.20once', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0103;model=invheader')
node_255 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.20array', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0104;datatype=local')
parent_id = node_250
node_256 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.20manipulating', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_256
node_257 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.20data', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0201;model=invheader')
node_258 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.20get', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0202;model=invheader')
node_259 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.20set', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0203;model=invheader')
parent_id = node_250
node_260 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.20advanced', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_260
node_261 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.20multi', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0301;model=invheader')
node_262 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.20master', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0302;model=invheader')
node_263 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.20subgrid', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0303;model=invheader')
node_264 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.20as_subgrid', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/demo?demo=0304;model=invheader')
node_265 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.20resizing', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0305;model=invheader')
node_266 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.20big_sets', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0306;model=item')
parent_id = node_250
node_267 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.30v', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_267
node_268 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.30cmulti', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0401;model=invheader')
node_269 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.30json_subgrid', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0402;model=invheader')
node_270 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.30after_load', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0403;model=invheader')
node_271 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.30resizable', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0404;model=invheader')
node_272 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.30hide', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0405;model=invheader')
parent_id = node_250
node_273 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.30row', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_273
node_274 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.30basic', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0501;model=invheader')
node_275 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.30cedit', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0502;model=invheader')
node_276 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.30events', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0503;model=invheader')
node_277 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.30full', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0504;model=invheader')
node_278 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.30types', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0505;model=invheader')
parent_id = node_250
node_279 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.30mapping', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_279
node_280 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.30xml_map', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0601;datatype=local')
node_281 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.30json_map', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/demo?demo=0602;model=invheader')
node_282 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.30optimize', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/demo?demo=0603;model=invheader')
parent_id = node_250
node_283 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.30integrations', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_283
node_284 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.30datepicker', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0701;datatype=local')
parent_id = node_250
node_285 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jqgrid.demo.30live', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_285
node_286 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.30searching', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0801;model=invheader')
node_287 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.30edit_row', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0802;model=invheader')
node_288 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.30add_row', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0803;model=invheader')
node_289 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.30delete_row', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0804;model=invheader')
node_290 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.30navigator', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0805;model=invheader')
parent_id = node_250
node_291 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jqgrid.demo.31v', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_291
node_292 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.31toolbar', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0901;model=invheader')
node_293 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.31userdata', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0902;model=invheader')
node_294 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.31new_methods', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0903;model=invheader')
node_295 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.31post_data', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0904;model=invheader')
node_296 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.31cparams', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0905;model=invheader')
parent_id = node_250
node_297 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.jqgrid.demo.32v', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_297
node_298 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.32new_methods', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1001;model=invheader')
node_299 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.32initial', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1002;model=invheader')
node_300 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.32insert', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1003;model=invheader')
node_301 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.32server_errors', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1004;model=invheader')
node_302 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.32hide', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1005;model=invheader')
node_303 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.32cbutton', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1006;model=invheader')
node_304 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.32client', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1007;model=invheader')
parent_id = node_250
node_305 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.jqgrid.demo.33v', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_305
node_306 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.33dynamic', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1101;model=invheader')
node_307 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.33tree', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1102;model=account')
node_308 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.33cell', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1103;model=invheader')
node_309 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.33visible', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1104;model=invheader')
node_310 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.33html', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1105;model=invheader')
node_311 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.33mtoolbar', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1106;model=invheader')
node_312 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.33mform', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1107;model=invheader')
node_313 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jqgrid.demo.33function', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1108;model=invheader')
node_314 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jqgrid.demo.33rdnd', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1109;model=invheader')
parent_id = node_250
node_315 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.jqgrid.demo.34v', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_315
node_316 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.34format', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1201;model=invheader')
node_317 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.34cformat', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1202;model=invheader')
node_318 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.34import', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1203;model=invheader')
node_319 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.34autoscroll', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/demo?demo=1204;model=invheader')
node_320 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.34scroll', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/demo?demo=1205;model=invheader')
node_321 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.34adjacency', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1206;model=account')
parent_id = node_250
node_322 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 12, :title => 'txt.jqgrid.demo.35v', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_322
node_323 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.35number', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1301;model=invheader')
node_324 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.35view', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1302;model=item')
node_325 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.35stoolbar', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1303;model=invheader')
node_326 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.35asearch', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1304;model=invheader')
node_327 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.35improvements', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/demo?demo=1305;model=invheader')
node_328 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.35real', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1306;model=account')
node_329 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.35navigation', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/demo?demo=1307;model=invheader')
node_330 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jqgrid.demo.35summary', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1308;model=invheader')
node_331 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jqgrid.demo.35sortable', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1309;model=invheader')
parent_id = node_250
node_332 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 13, :title => 'txt.jqgrid.demo.36v', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_332
node_333 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.36api', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1401;model=invheader')
node_334 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.36rtl', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1402;model=invheader')
node_335 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.36reordering', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1403;model=invheader')
node_336 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.36chooser', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1404;model=invheader')
node_337 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.36validation', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1405;model=invheader')
node_338 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.36cinput', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1406;model=invheader')
node_339 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.36ajax', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1407;model=invheader')
node_340 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jqgrid.demo.36tscroll', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1408;model=item')
node_341 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jqgrid.demo.36srows', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1409;model=invheader')
node_342 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.jqgrid.demo.36rdnd', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1410;model=invheader')
node_343 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.jqgrid.demo.36resizing', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1411;model=invheader')
parent_id = node_250
node_344 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 14, :title => 'txt.jqgrid.demo.37v', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_344
node_345 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.37array', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1501;datatype=local')
node_346 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.37server', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1502;model=item')
node_347 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.37single', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1503;model=item')
node_348 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.37multiple', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1504;model=item')
node_349 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.37scroll', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1505;model=item')
node_350 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.37toolbar', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1506;model=item')
node_351 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.37crud', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/demo?demo=1507;model=invheader')
parent_id = node_250
node_352 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 15, :title => 'txt.jqgrid.demo.38v', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_352
node_353 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.38array1', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1601;datatype=local')
node_354 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.38array2', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1602;datatype=local')
node_355 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.38array3', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1603;datatype=local')
node_356 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.38array4', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1604;datatype=local')
node_357 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.38array5', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1605;datatype=local')
node_358 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.38array6', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1606;datatype=local')
node_359 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.38remote1', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1607;model=invheader')
node_360 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jqgrid.demo.38remote2', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1608;model=invheader')
node_361 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jqgrid.demo.38remote3', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1609;model=invheader')
node_362 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.jqgrid.demo.38remote4', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1610;model=invheader')
node_363 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.jqgrid.demo.38xml1', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1611;model=invheader')
node_364 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.jqgrid.demo.38remote5', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1612;model=invheader')
parent_id = node_250
parent_id = node_249
node_365 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.mine.name', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_365
node_366 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.mine.cedit', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_366
node_367 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.mine.cedit1', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=9906;model=invheader')
node_368 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.mine.cedit2', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=9907;model=invheader')
node_369 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.mine.cedit3', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=9908;model=invheader')
node_370 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.mine.cedit4', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=9909;model=invheader')
node_371 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.mine.cedit5', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=9910;model=invheader')
parent_id = node_365
node_372 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.mine.contextmenu', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_372
node_373 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.mine.contextmenu1', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/mine?demo=contextmenu1')
node_374 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.mine.contextmenu2', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=9901;model=invheader')
parent_id = node_365
node_375 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.mine.treegrid', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_375
node_376 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.33tree', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=9903;model=account')
node_377 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.34adjacency', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=9904;model=account')
node_378 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.35real', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=9905;model=account')
parent_id = node_365
node_379 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.gridify', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_379
node_380 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.simple.name', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_380
node_381 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.simple.default', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/players?example=01')
node_382 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.simple.selection', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/players?example=02')
node_383 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.simple.direct', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/players?example=03')
node_384 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.simple.multiple', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/players?example=04')
node_385 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.simple.master', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/players?example=05')
parent_id = node_379
node_386 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.manipulation.name', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_386
node_387 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.manipulation.inline', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/players?example=06')
node_388 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.manipulation.modal', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/players?example=07')
node_389 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.manipulation.input', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/players?example=08')
node_390 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.manipulation.datepicker', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/players?example=09')
parent_id = node_379
node_391 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.subgrids.name', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_391
node_392 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.subgrids.default', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/players?example=10')
node_393 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.subgrids.crud', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/players?example=11')
node_394 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.subgrids.selection', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/players?example=12')
parent_id = node_379
node_395 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.improvements.name', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/players?example=13')
parent_id = node_365
node_396 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.secret', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/widgets')
parent_id = node_249
node_397 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.2dc', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_397
node_398 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.subgrids.name', :type => 'folder', :icon => '/images/icons/16x16/grid.png')
parent_id = node_398
node_399 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.subgrids.default', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/users?example=10')
node_400 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.subgrids.crud', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/users?example=11')
node_401 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.subgrids.selection', :type => 'default', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/users?example=12')
parent_id = node_397
parent_id = node_249
parent_id = node_173
node_402 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ical.name', :type => 'folder', :icon => '/images/icons/16x16/working.png')
parent_id = node_402
node_403 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ical.anytime.name', :type => 'folder', :icon => '/images/icons/16x16/alarmclock.png')
parent_id = node_403
node_404 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ical.anytime.default', :type => 'default', :icon => '/images/icons/16x16/alarmclock.png', :url => '/widgets/ical/anytime/default')
node_405 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ical.anytime.inline', :type => 'default', :icon => '/images/icons/16x16/alarmclock.png', :url => '/widgets/ical/anytime/inline')
node_406 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ical.anytime.separate', :type => 'default', :icon => '/images/icons/16x16/alarmclock.png', :url => '/widgets/ical/anytime/separate')
node_407 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ical.anytime.css', :type => 'default', :icon => '/images/icons/16x16/alarmclock.png', :url => '/widgets/ical/anytime/css')
node_408 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ical.anytime.ajax', :type => 'default', :icon => '/images/icons/16x16/alarmclock.png', :url => '/widgets/ical/anytime/ajax')
node_409 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ical.anytime.convert', :type => 'default', :icon => '/images/icons/16x16/alarmclock.png', :url => '/widgets/ical/anytime/convert')
node_410 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ical.anytime.extend', :type => 'default', :icon => '/images/icons/16x16/alarmclock.png', :url => '/widgets/ical/anytime/extend')
parent_id = node_402
node_411 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ical.calendar.listing', :type => 'default', :icon => '/images/icons/16x16/calendar.png', :url => '/widgets/ical/calendars')
parent_id = node_173
parent_id = node_172
node_412 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.handling.name', :type => 'folder', :icon => '/images/icons/16x16/plugin.png')
parent_id = node_412
node_413 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.history.name', :type => 'folder', :icon => '/images/icons/16x16/history.png')
parent_id = node_413
node_414 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.history.ajax', :type => 'default', :icon => '/images/icons/16x16/history.png', :url => '/handling/history/ajax')
node_415 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.history.ajax2', :type => 'default', :icon => '/images/icons/16x16/history.png', :url => '/handling/history/ajax2')
node_416 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.history.mvc', :type => 'default', :icon => '/images/icons/16x16/working.png', :url => '/handling/history/mvc')
parent_id = node_412
node_417 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.replacetext.name', :type => 'folder', :icon => '/images/icons/16x16/plugin.png')
parent_id = node_417
node_418 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.replacetext.default', :type => 'default', :icon => '/images/icons/16x16/plugin.png', :url => '/handling/replace_text/default')
parent_id = node_412
parent_id = node_172
node_419 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.graphics.name', :type => 'folder', :icon => '/images/icons/16x16/graphics.png')
parent_id = node_419
node_420 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.graphics.ganttview.name', :type => 'folder', :icon => '/images/icons/16x16/gantt.png')
parent_id = node_420
node_421 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.graphics.ganttview.default', :type => 'default', :icon => '/images/icons/16x16/gantt.png', :url => '/graphics/gantt_view/default')
parent_id = node_419
node_422 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.graphics.sparklines.name', :type => 'folder', :icon => '/images/icons/16x16/sparklines.png')
parent_id = node_422
node_423 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.graphics.sparklines.examples', :type => 'default', :icon => '/images/icons/16x16/sparklines.png', :url => '/graphics/sparklines/examples')
node_424 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.graphics.sparklines.default', :type => 'default', :icon => '/images/icons/16x16/sparklines.png', :url => '/graphics/sparklines/default')
parent_id = node_419
parent_id = node_172
node_425 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.haml.name', :type => 'folder', :icon => '/images/icons/16x16/haml.png')
parent_id = node_425
node_426 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.haml.jhaml', :type => 'default', :icon => '/images/icons/16x16/haml.png', :url => '/haml/jhaml')
parent_id = node_172
parent_id = node_1
node_427 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.name', :type => 'accordion', :icon => '/images/icons/16x16/jqmobile.png')
parent_id = node_427
node_428 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.black', :type => 'folder', :icon => '/images/icons/16x16/blackberry.png')
parent_id = node_428
node_429 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.port', :type => 'folder', :icon => '/images/icons/16x16/portrait.png')
parent_id = node_429
node_430 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/blackberry_portrait/jqm')
node_431 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/blackberry_portrait/jqm2')
node_432 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/blackberry_portrait/jqm_original')
parent_id = node_428
node_433 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.land', :type => 'folder', :icon => '/images/icons/16x16/landscape.png')
parent_id = node_433
node_434 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/blackberry_landscape/jqm')
node_435 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/blackberry_landscape/jqm2')
node_436 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/blackberry_landscape/jqm_original')
parent_id = node_428
parent_id = node_427
node_437 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.ipad', :type => 'folder', :icon => '/images/icons/16x16/ipad.png')
parent_id = node_437
node_438 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.port', :type => 'folder', :icon => '/images/icons/16x16/portrait.png')
parent_id = node_438
node_439 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/ipad_portrait/jqm')
node_440 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/ipad_portrait/jqm2')
node_441 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/ipad_portrait/jqm_original')
node_442 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.emu.jqt.default', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators/ipad_portrait/jqt')
node_443 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.emu.jqt.home', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators/ipad_portrait/jqt_original')
parent_id = node_437
node_444 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.land', :type => 'folder', :icon => '/images/icons/16x16/landscape.png')
parent_id = node_444
node_445 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/ipad_landscape/jqm')
node_446 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/ipad_landscape/jqm2')
node_447 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/ipad_landscape/jqm_original')
node_448 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.emu.jqt.default', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators/ipad_landscape/jqt')
node_449 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.emu.jqt.home', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators/ipad_landscape/jqt_original')
parent_id = node_437
parent_id = node_427
node_450 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.iphone', :type => 'folder', :icon => '/images/icons/16x16/iphone.png')
parent_id = node_450
node_451 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.port', :type => 'folder', :icon => '/images/icons/16x16/portrait.png')
parent_id = node_451
node_452 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/iphone_portrait/jqm')
node_453 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/iphone_portrait/jqm2')
node_454 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/iphone_portrait/jqm_original')
node_455 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.emu.jqt.default', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators/iphone_portrait/jqt')
node_456 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.emu.jqt.home', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators/iphone_portrait/jqt_original')
parent_id = node_450
node_457 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.land', :type => 'folder', :icon => '/images/icons/16x16/landscape.png')
parent_id = node_457
node_458 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/iphone_landscape/jqm')
node_459 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/iphone_landscape/jqm2')
node_460 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/iphone_landscape/jqm_original')
node_461 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.emu.jqt.default', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators/iphone_landscape/jqt')
node_462 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.emu.jqt.home', :type => 'default', :icon => '/images/icons/16x16/jqtouch.png', :url => '/emulators/iphone_landscape/jqt_original')
parent_id = node_450
parent_id = node_427
node_463 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.emu.palm', :type => 'folder', :icon => '/images/icons/16x16/palm.png')
parent_id = node_463
node_464 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.port', :type => 'folder', :icon => '/images/icons/16x16/portrait.png')
parent_id = node_464
node_465 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/palm_portrait/jqm')
node_466 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/palm_portrait/jqm2')
node_467 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/palm_portrait/jqm_original')
parent_id = node_463
node_468 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.land', :type => 'folder', :icon => '/images/icons/16x16/landscape.png')
parent_id = node_468
node_469 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/palm_landscape/jqm')
node_470 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/palm_landscape/jqm2')
node_471 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :type => 'default', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/palm_landscape/jqm_original')
parent_id = node_463
parent_id = node_427
parent_id = node_1
puts "Finished creating navigation tree"


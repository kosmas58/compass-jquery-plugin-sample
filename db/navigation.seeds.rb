
#NavigationTree
puts "Started creating navigation tree"
puts "Please be patient ..."
node_1 = NavigationTree.create(:parent_id => 0, :position => 0, :left => 1,  :right => 2, :title => 'ROOT').id
parent_id = node_1
node_2 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.name', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_2
node_3 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.interactions.default', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_3
node_4 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.interactions.draggable.default', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_4
node_5 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/default')
node_6 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.interactions.draggable.events', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/events')
node_7 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.interactions.draggable.constrain-movement', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/constrain_movement')
node_8 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.interactions.draggable.delay-start', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/delay_start')
node_9 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.interactions.draggable.snap-to', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/snap_to')
node_10 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.interactions.draggable.scroll', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/scroll')
node_11 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.interactions.draggable.revert', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/revert')
node_12 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.interactions.draggable.visual-feedback', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/visual_feedback')
node_13 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.interactions.draggable.handle', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/handle')
node_14 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.ui.interactions.draggable.cursor-style', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/cursor_style')
node_15 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.ui.interactions.draggable.sortable', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/draggable/sortable')
parent_id = node_3
node_16 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.interactions.droppable.default', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_16
node_17 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/droppable/default')
node_18 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.interactions.droppable.accepted-elements', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/droppable/accepted_elements')
node_19 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.interactions.droppable.propagation', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/droppable/propagation')
node_20 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.interactions.droppable.visual-feedback', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/droppable/visual_feedback')
node_21 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.interactions.droppable.revert', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/droppable/revert')
node_22 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.interactions.droppable.shopping-cart', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/droppable/shopping_cart')
node_23 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.interactions.droppable.photo-manager', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/droppable/photo_manager')
parent_id = node_3
node_24 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.interactions.resizable.default', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_24
node_25 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/default')
node_26 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.interactions.resizable.aspect-ratio', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/aspect_ratio')
node_27 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.interactions.resizable.max-min', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/max_min')
node_28 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.interactions.resizable.constrain-area', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/constrain_area')
node_29 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.interactions.resizable.delay-start', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/delay_start')
node_30 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.interactions.resizable.snap-to-grid', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/snap_to_grid')
node_31 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.interactions.resizable.visual-feedback', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/visual_feedback')
node_32 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.interactions.resizable.synchronous-resize', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/synchronous_resize')
node_33 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.interactions.resizable.animate', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/animate')
node_34 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.ui.interactions.resizable.helper', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/helper')
node_35 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.ui.interactions.resizable.textarea', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/resizable/textarea')
parent_id = node_3
node_36 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.interactions.selectable.default', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_36
node_37 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/selectable/default')
node_38 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.interactions.selectable.serialize', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/selectable/serialize')
node_39 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.interactions.selectable.display-grid', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/selectable/display_grid')
parent_id = node_3
node_40 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.interactions.sortable.default', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_40
node_41 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/sortable/default')
node_42 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.interactions.sortable.placeholder', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/sortable/placeholder')
node_43 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.interactions.sortable.connect-lists', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/sortable/connect_lists')
node_44 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.interactions.sortable.connect-lists-through-tabs', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/sortable/connect_lists_through_tabs')
node_45 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.interactions.sortable.empty-lists', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/sortable/empty_lists')
node_46 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.interactions.sortable.items', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/sortable/items')
node_47 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.interactions.sortable.delay-start', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/sortable/delay_start')
node_48 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.interactions.sortable.display-grid', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/sortable/display_grid')
node_49 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.interactions.sortable.portlets', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/interactions/sortable/portlets')
parent_id = node_3
parent_id = node_2
node_50 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.default', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_50
node_51 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.widgets.accordion.default', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_51
node_52 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/accordion/default')
node_53 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.accordion.fillspace', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/accordion/fillspace')
node_54 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.accordion.no-auto-height', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/accordion/no_auto_height')
node_55 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.accordion.collapsible', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/accordion/collapsible')
node_56 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.accordion.mouseover', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/accordion/mouseover')
node_57 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.accordion.hoverintent', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/accordion/hoverintent')
node_58 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.accordion.custom-icons', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/accordion/custom_icons')
node_59 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.accordion.sortable', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/accordion/sortable')
parent_id = node_50
node_60 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.autocomplete.default', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_60
node_61 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/default')
node_62 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.autocomplete.remote', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/remote')
node_63 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.autocomplete.remote-with-cache', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/remote_with_cache')
node_64 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.autocomplete.remote-jsonp', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/remote_jsonp')
node_65 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.autocomplete.maxheight', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/maxheight')
node_66 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.autocomplete.combobox', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/combobox')
node_67 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.autocomplete.custom-data', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/custom_data')
node_68 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.autocomplete.remote-xml', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/remote_xml')
node_69 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.widgets.autocomplete.categories', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/categories')
node_70 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.ui.widgets.autocomplete.folding', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/folding')
node_71 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.ui.widgets.autocomplete.multiple', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/multiple')
node_72 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.ui.widgets.autocomplete.multiple-remote', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/autocomplete/multiple_remote')
parent_id = node_50
node_73 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.button.default', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_73
node_74 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/button/default')
node_75 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.button.radio', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/button/radio')
node_76 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.button.checkbox', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/button/checkbox')
node_77 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.button.icon', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/button/icon')
node_78 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.button.toolbar', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/button/toolbar')
node_79 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.button.splitbutton', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/button/splitbutton')
parent_id = node_50
node_80 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.datepicker.default', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_80
node_81 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/default')
node_82 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.datepicker.date-formats', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/date_formats')
node_83 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.datepicker.min-max', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/min_max')
node_84 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.datepicker.localization', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/localization')
node_85 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.datepicker.alt-field', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/alt_field')
node_86 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.datepicker.inline', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/inline')
node_87 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.datepicker.buttonbar', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/buttonbar')
node_88 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.datepicker.dropdown-month-year', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/dropdown_month_year')
node_89 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.widgets.datepicker.other-months', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/other_months')
node_90 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.ui.widgets.datepicker.show-week', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/show_week')
node_91 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.ui.widgets.datepicker.multiple-calendars', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/multiple_calendars')
node_92 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.ui.widgets.datepicker.icon-trigger', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/icon_trigger')
node_93 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 12, :title => 'txt.ui.widgets.datepicker.animation', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/animation')
node_94 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 13, :title => 'txt.ui.widgets.datepicker.event-search', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/datepicker/event_search')
parent_id = node_50
node_95 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.dialog.default', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_95
node_96 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/dialog/default')
node_97 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.dialog.animated', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/dialog/animated')
node_98 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.dialog.modal', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/dialog/modal')
node_99 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.dialog.modal-message', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/dialog/modal_message')
node_100 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.dialog.modal-confirmation', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/dialog/modal_confirmation')
node_101 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.dialog.modal-form', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/dialog/modal_form')
node_102 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.dialog.greybox', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/dialog/greybox')
parent_id = node_50
node_103 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.panel.name', :ntype => '', :icon => '/images/icons/16x16/draft.png')
parent_id = node_103
node_104 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.widgets.panel.default', :ntype => '', :icon => '/images/icons/16x16/draft.png', :url => '/ui/widgets/panel/default')
node_105 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.panel.simple', :ntype => '', :icon => '/images/icons/16x16/draft.png', :url => '/ui/widgets/panel/simple')
node_106 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.panel.cookie', :ntype => '', :icon => '/images/icons/16x16/draft.png', :url => '/ui/widgets/panel/cookie')
node_107 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.panel.right1', :ntype => '', :icon => '/images/icons/16x16/draft.png', :url => '/ui/widgets/panel/right1')
node_108 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.panel.right2', :ntype => '', :icon => '/images/icons/16x16/draft.png', :url => '/ui/widgets/panel/right2')
node_109 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.panel.left', :ntype => '', :icon => '/images/icons/16x16/draft.png', :url => '/ui/widgets/panel/left')
node_110 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.panel.accordion', :ntype => '', :icon => '/images/icons/16x16/draft.png', :url => '/ui/widgets/panel/accordion')
node_111 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.panel.demo', :ntype => '', :icon => '/images/icons/16x16/draft.png', :url => '/ui/widgets/panel/demo')
parent_id = node_50
node_112 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.progressbar.default', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_112
node_113 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/progressbar/default')
node_114 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.progressbar.animated', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/progressbar/animated')
node_115 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.progressbar.resize', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/progressbar/resize')
parent_id = node_50
node_116 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.selectmenu.name', :ntype => '', :icon => '/images/icons/16x16/filament.png')
parent_id = node_116
node_117 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.widgets.selectmenu.default', :ntype => '', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/default')
node_118 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.selectmenu.without-id', :ntype => '', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/without_id')
node_119 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.selectmenu.maxheight', :ntype => '', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/maxheight')
node_120 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.selectmenu.text-formatting', :ntype => '', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/text_formatting')
node_121 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.selectmenu.icons', :ntype => '', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/icons')
node_122 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.selectmenu.custom-icons', :ntype => '', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/custom_icons')
node_123 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.selectmenu.optgroups', :ntype => '', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/optgroups')
node_124 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.selectmenu.dropdown', :ntype => '', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/dropdown')
node_125 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.widgets.selectmenu.menuwidth', :ntype => '', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/menuwidth')
node_126 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.ui.widgets.selectmenu.custom-icons2', :ntype => '', :icon => '/images/icons/16x16/filament.png', :url => '/ui/widgets/selectmenu/custom_icons2')
parent_id = node_50
node_127 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.widgets.slider.default', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_127
node_128 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/default')
node_129 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.slider.steps', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/steps')
node_130 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.slider.range', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/range')
node_131 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.slider.rangemin', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/rangemin')
node_132 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.slider.hotelrooms', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/hotelrooms')
node_133 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.slider.rangemax', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/rangemax')
node_134 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.slider.slider-vertical', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/slider_vertical')
node_135 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.slider.range-vertical', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/range_vertical')
node_136 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.widgets.slider.multiple-vertical', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/multiple_vertical')
node_137 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.ui.widgets.slider.colorpicker', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/colorpicker')
node_138 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.ui.widgets.slider.side-scroll', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/side_scroll')
node_139 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.ui.widgets.slider.tabs', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/slider/tabs')
parent_id = node_50
node_140 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.ui.widgets.tabs.default', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_140
node_141 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/tabs/default')
node_142 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.tabs.ajax', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/tabs/ajax')
node_143 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.tabs.mouseover', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/tabs/mouseover')
node_144 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.tabs.collapsible', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/tabs/collapsible')
node_145 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.tabs.sortable', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/tabs/sortable')
node_146 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.tabs.manipulation', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/tabs/manipulation')
node_147 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.tabs.bottom', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/tabs/bottom')
node_148 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.tabs.cookie', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/widgets/tabs/cookie')
parent_id = node_50
parent_id = node_2
node_149 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.effects.default', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_149
node_150 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.effects.add_class.default', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/add_class')
node_151 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.effects.remove_class.default', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/remove_class')
node_152 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.effects.switch_class.default', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/switch_class')
node_153 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.effects.toggle_class.default', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/toggle_class')
node_154 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.effects.show.default', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/show')
node_155 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.effects.hide.default', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/hide')
node_156 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.effects.toggle.default', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/toggle')
node_157 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.effects.animate.default', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/animate')
node_158 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.effects.effect.default', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_158
node_159 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.effects.effect.showcase', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/effect/default')
node_160 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.effects.effect.easing', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/effects/effect/easing')
parent_id = node_149
parent_id = node_2
node_161 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.utilities.default', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_161
node_162 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.utilities.position.default', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png')
parent_id = node_162
node_163 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/utilities/position/default')
node_164 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.utilities.position.cycler', :ntype => '', :icon => '/images/icons/16x16/jquery-ui.png', :url => '/ui/utilities/position/cycler')
parent_id = node_161
parent_id = node_2
parent_id = node_1
node_165 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.plugins.name', :ntype => '', :icon => '/images/icons/16x16/plugin.png')
parent_id = node_165
node_166 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tools.name', :ntype => '', :icon => '/images/icons/16x16/tools.png')
parent_id = node_166
node_167 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tools.ui.name', :ntype => '', :icon => '/images/icons/16x16/tools.png')
parent_id = node_167
node_168 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tools.ui.tooltips.name', :ntype => '', :icon => '/images/icons/16x16/tools.png')
parent_id = node_168
node_169 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tools.default', :ntype => '', :icon => '/images/icons/16x16/tools.png', :url => '/tools/tooltips/default')
node_170 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.tools.ui.tooltips.demo01', :ntype => '', :icon => '/images/icons/16x16/tools.png', :url => '/tools/tooltips/demo01')
node_171 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.tools.ui.tooltips.demo02', :ntype => '', :icon => '/images/icons/16x16/tools.png', :url => '/tools/tooltips/demo02')
node_172 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.tools.ui.tooltips.demo03', :ntype => '', :icon => '/images/icons/16x16/tools.png', :url => '/tools/tooltips/demo03')
node_173 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.tools.ui.tooltips.demo04', :ntype => '', :icon => '/images/icons/16x16/tools.png', :url => '/tools/tooltips/demo04')
node_174 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.tools.ui.tooltips.demo05', :ntype => '', :icon => '/images/icons/16x16/tools.png', :url => '/tools/tooltips/demo05')
node_175 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.tools.ui.tooltips.demo06', :ntype => '', :icon => '/images/icons/16x16/tools.png', :url => '/tools/tooltips/demo06')
node_176 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.tools.ui.tooltips.demo07', :ntype => '', :icon => '/images/icons/16x16/tools.png', :url => '/tools/tooltips/demo07')
parent_id = node_167
node_177 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.tools.ui.overlay.name', :ntype => '', :icon => '/images/icons/16x16/tools.png')
parent_id = node_177
node_178 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tools.ui.overlay.demo01', :ntype => '', :icon => '/images/icons/16x16/tools.png', :url => '/tools/overlay/demo01')
node_179 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.tools.ui.overlay.demo02', :ntype => '', :icon => '/images/icons/16x16/tools.png', :url => '/tools/overlay/demo02')
node_180 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.tools.ui.overlay.demo03', :ntype => '', :icon => '/images/icons/16x16/tools.png', :url => '/tools/overlay/demo03')
node_181 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.tools.ui.overlay.demo04', :ntype => '', :icon => '/images/icons/16x16/tools.png', :url => '/tools/overlay/demo04')
node_182 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.tools.ui.overlay.demo05', :ntype => '', :icon => '/images/icons/16x16/tools.png', :url => '/tools/overlay/demo05')
node_183 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.tools.ui.overlay.demo06', :ntype => '', :icon => '/images/icons/16x16/tools.png', :url => '/tools/overlay/demo06')
node_184 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.tools.ui.overlay.demo07', :ntype => '', :icon => '/images/icons/16x16/tools.png', :url => '/tools/overlay/demo07')
node_185 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.tools.ui.overlay.demo08', :ntype => '', :icon => '/images/icons/16x16/tools.png', :url => '/tools/overlay/demo08')
parent_id = node_167
parent_id = node_166
node_186 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.tools.toolbox.name', :ntype => '', :icon => '/images/icons/16x16/tools.png')
parent_id = node_186
node_187 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tools.toolbox.expose.name', :ntype => '', :icon => '/images/icons/16x16/tools.png')
parent_id = node_187
node_188 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.tools.toolbox.expose.demo01', :ntype => '', :icon => '/images/icons/16x16/tools.png', :url => '/tools/expose/demo01')
node_189 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.tools.toolbox.expose.demo02', :ntype => '', :icon => '/images/icons/16x16/tools.png', :url => '/tools/expose/demo02')
node_190 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.tools.toolbox.expose.demo03', :ntype => '', :icon => '/images/icons/16x16/tools.png', :url => '/tools/expose/demo03')
node_191 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.tools.toolbox.expose.demo04', :ntype => '', :icon => '/images/icons/16x16/tools.png', :url => '/tools/expose/demo04')
node_192 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.tools.toolbox.expose.demo05', :ntype => '', :icon => '/images/icons/16x16/tools.png', :url => '/tools/expose/demo05')
parent_id = node_186
parent_id = node_166
parent_id = node_165
node_193 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.history.name', :ntype => '', :icon => '/images/icons/16x16/history.png')
parent_id = node_193
node_194 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.history.ajax', :ntype => '', :icon => '/images/icons/16x16/history.png', :url => '/history/ajax')
node_195 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.history.ajax2', :ntype => '', :icon => '/images/icons/16x16/working.png', :url => '/history/ajax2')
node_196 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.history.mvc', :ntype => '', :icon => '/images/icons/16x16/working.png', :url => '/history/mvc')
parent_id = node_165
node_197 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.tree.name', :ntype => '', :icon => '/images/icons/16x16/tree.png')
parent_id = node_197
node_198 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jst.name', :ntype => '', :icon => '/images/icons/16x16/tree.png')
parent_id = node_198
node_199 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jst.demo', :ntype => '', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/demo')
node_200 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jst.plugins', :ntype => '', :icon => '/images/icons/16x16/tree.png')
parent_id = node_200
node_201 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jst.core', :ntype => '', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/core')
node_202 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jst.html', :ntype => '', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/html')
node_203 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jst.json', :ntype => '', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/json')
node_204 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jst.xml', :ntype => '', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/xml')
node_205 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jst.themes', :ntype => '', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/themes')
node_206 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jst.ui', :ntype => '', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/ui')
node_207 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jst.crrm', :ntype => '', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/crrm')
node_208 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jst.hotkeys', :ntype => '', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/hotkeys')
node_209 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jst.lang', :ntype => '', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/languages')
node_210 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.jst.cookies', :ntype => '', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/cookies')
node_211 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.jst.sort', :ntype => '', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/sort')
node_212 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.jst.dnd', :ntype => '', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/dnd')
node_213 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 12, :title => 'txt.jst.checkbox', :ntype => '', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/checkbox')
node_214 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 13, :title => 'txt.jst.radio', :ntype => '', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/radio')
node_215 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 14, :title => 'txt.jst.search', :ntype => '', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/searching')
node_216 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 15, :title => 'txt.jst.contextmenu', :ntype => '', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/contextmenu')
node_217 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 16, :title => 'txt.jst.types', :ntype => '', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/types')
node_218 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 17, :title => 'txt.jst.themeroller', :ntype => '', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/themeroller')
node_219 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 18, :title => 'txt.jst.unique', :ntype => '', :icon => '/images/icons/16x16/tree.png', :url => '/jstree/unique')
parent_id = node_198
parent_id = node_197
node_220 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.dt.name', :ntype => '', :icon => '/images/icons/16x16/tree.png')
parent_id = node_220
node_221 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.dt.default', :ntype => '', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/default')
node_222 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.dt.quick', :ntype => '', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/quick')
node_223 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.dt.ul', :ntype => '', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/ul')
node_224 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.dt.json', :ntype => '', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/json')
node_225 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.dt.api', :ntype => '', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/api')
node_226 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.dt.select', :ntype => '', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/select')
node_227 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.dt.theming.name', :ntype => '', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/theming')
node_228 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.dt.persist', :ntype => '', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/persist')
node_229 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.dt.events', :ntype => '', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/events')
node_230 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.dt.effects', :ntype => '', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/effects')
node_231 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.dt.dnd', :ntype => '', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/dnd')
node_232 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.dt.dnd2', :ntype => '', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/dnd2')
node_233 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 12, :title => 'txt.dt.dnd3', :ntype => '', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/dnd3')
node_234 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 13, :title => 'txt.dt.contextmenu', :ntype => '', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/contextmenu')
node_235 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 14, :title => 'txt.dt.minexpand', :ntype => '', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/minexpand')
node_236 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 15, :title => 'txt.dt.lazy_persist', :ntype => '', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/lazy_persist')
node_237 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 16, :title => 'txt.dt.iframe', :ntype => '', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/iframe')
node_238 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 17, :title => 'txt.dt.benchmark', :ntype => '', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/test_bench')
node_239 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 18, :title => 'txt.dt.form', :ntype => '', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/form')
node_240 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 19, :title => 'txt.dt.multiline', :ntype => '', :icon => '/images/icons/16x16/tree.png', :url => '/dynatree/multiline')
parent_id = node_197
parent_id = node_165
node_241 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ribbon.name', :ntype => '', :icon => '/images/icons/16x16/ribbon.png')
parent_id = node_241
node_242 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ribbon.default', :ntype => '', :icon => '/images/icons/16x16/ribbon.png', :url => '/ribbon/default')
node_243 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ribbon.office', :ntype => '', :icon => '/images/icons/16x16/ribbon.png', :url => '/ribbon/office')
node_244 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ribbon.simple', :ntype => '', :icon => '/images/icons/16x16/ribbon.png', :url => '/ribbon/simple')
parent_id = node_165
node_245 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.name', :ntype => '', :icon => '/images/icons/16x16/working.png')
parent_id = node_245
node_246 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.default', :ntype => '', :icon => '/images/icons/16x16/working.png')
parent_id = node_246
node_247 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.20loading', :ntype => '', :icon => '/images/icons/16x16/grid.png')
parent_id = node_247
node_248 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.20xml_data', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0101;model=invheader;datatype=xml')
node_249 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.20json_data', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0102;model=invheader')
node_250 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.20once', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0103;model=invheader')
node_251 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.20array', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0104;datatype=local')
parent_id = node_246
node_252 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.20manipulating', :ntype => '', :icon => '/images/icons/16x16/grid.png')
parent_id = node_252
node_253 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.20data', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0201;model=invheader')
node_254 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.20get', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0202;model=invheader')
node_255 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.20set', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0203;model=invheader')
parent_id = node_246
node_256 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.20advanced', :ntype => '', :icon => '/images/icons/16x16/working.png')
parent_id = node_256
node_257 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.20multi', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0301;model=invheader')
node_258 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.20master', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0302;model=invheader')
node_259 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.20subgrid', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0303;model=invheader')
node_260 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.20as_subgrid', :ntype => '', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/demo?demo=0304;model=invheader')
node_261 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.20resizing', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0305;model=invheader')
node_262 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.20big_sets', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0306;model=item')
parent_id = node_246
node_263 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.30v', :ntype => '', :icon => '/images/icons/16x16/grid.png')
parent_id = node_263
node_264 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.30cmulti', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0401;model=invheader')
node_265 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.30json_subgrid', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0402;model=invheader')
node_266 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.30after_load', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0403;model=invheader')
node_267 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.30resizable', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0404;model=invheader')
node_268 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.30hide', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0405;model=invheader')
parent_id = node_246
node_269 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.30row', :ntype => '', :icon => '/images/icons/16x16/working.png')
parent_id = node_269
node_270 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.30basic', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0501;model=invheader')
node_271 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.30cedit', :ntype => '', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/demo?demo=0502;model=invheader')
node_272 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.30events', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0503;model=invheader')
node_273 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.30full', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0504;model=invheader')
node_274 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.30types', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0505;model=invheader')
parent_id = node_246
node_275 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.30mapping', :ntype => '', :icon => '/images/icons/16x16/working.png')
parent_id = node_275
node_276 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.30xml_map', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0601;datatype=local')
node_277 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.30json_map', :ntype => '', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/demo?demo=0602;model=invheader')
node_278 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.30optimize', :ntype => '', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/demo?demo=0603;model=invheader')
parent_id = node_246
node_279 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.30integrations', :ntype => '', :icon => '/images/icons/16x16/grid.png')
parent_id = node_279
node_280 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.30datepicker', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0701;datatype=local')
parent_id = node_246
node_281 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jqgrid.demo.30live', :ntype => '', :icon => '/images/icons/16x16/grid.png')
parent_id = node_281
node_282 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.30searching', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0801;model=invheader')
node_283 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.30edit_row', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0802;model=invheader')
node_284 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.30add_row', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0803;model=invheader')
node_285 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.30delete_row', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0804;model=invheader')
node_286 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.30navigator', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0805;model=invheader')
parent_id = node_246
node_287 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jqgrid.demo.31v', :ntype => '', :icon => '/images/icons/16x16/grid.png')
parent_id = node_287
node_288 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.31toolbar', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0901;model=invheader')
node_289 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.31userdata', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0902;model=invheader')
node_290 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.31new_methods', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0903;model=invheader')
node_291 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.31post_data', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0904;model=invheader')
node_292 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.31cparams', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=0905;model=invheader')
parent_id = node_246
node_293 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.jqgrid.demo.32v', :ntype => '', :icon => '/images/icons/16x16/grid.png')
parent_id = node_293
node_294 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.32new_methods', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1001;model=invheader')
node_295 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.32initial', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1002;model=invheader')
node_296 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.32insert', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1003;model=invheader')
node_297 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.32server_errors', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1004;model=invheader')
node_298 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.32hide', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1005;model=invheader')
node_299 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.32cbutton', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1006;model=invheader')
node_300 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.32client', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1007;model=invheader')
parent_id = node_246
node_301 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.jqgrid.demo.33v', :ntype => '', :icon => '/images/icons/16x16/grid.png')
parent_id = node_301
node_302 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.33dynamic', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1101;model=invheader')
node_303 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.33tree', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1102;model=account')
node_304 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.33cell', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1103;model=invheader')
node_305 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.33visible', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1104;model=invheader')
node_306 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.33html', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1105;model=invheader')
node_307 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.33mtoolbar', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1106;model=invheader')
node_308 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.33mform', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1107;model=invheader')
node_309 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jqgrid.demo.33function', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1108;model=invheader')
node_310 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jqgrid.demo.33rdnd', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1109;model=invheader')
parent_id = node_246
node_311 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.jqgrid.demo.34v', :ntype => '', :icon => '/images/icons/16x16/working.png')
parent_id = node_311
node_312 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.34format', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1201;model=invheader')
node_313 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.34cformat', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1202;model=invheader')
node_314 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.34import', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1203;model=invheader')
node_315 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.34autoscroll', :ntype => '', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/demo?demo=1204;model=invheader')
node_316 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.34scroll', :ntype => '', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/demo?demo=1205;model=invheader')
node_317 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.34adjacency', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1206;model=account')
parent_id = node_246
node_318 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 12, :title => 'txt.jqgrid.demo.35v', :ntype => '', :icon => '/images/icons/16x16/working.png')
parent_id = node_318
node_319 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.35number', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1301;model=invheader')
node_320 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.35view', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1302;model=item')
node_321 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.35stoolbar', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1303;model=invheader')
node_322 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.35asearch', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1304;model=invheader')
node_323 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.35improvements', :ntype => '', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/demo?demo=1305;model=invheader')
node_324 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.35real', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1306;model=account')
node_325 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.35navigation', :ntype => '', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/demo?demo=1307;model=invheader')
node_326 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jqgrid.demo.35summary', :ntype => '', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/demo?demo=1308;model=invheader')
node_327 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jqgrid.demo.35sortable', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1309;model=invheader')
parent_id = node_246
node_328 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 13, :title => 'txt.jqgrid.demo.36v', :ntype => '', :icon => '/images/icons/16x16/grid.png')
parent_id = node_328
node_329 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.36api', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1401;model=invheader')
node_330 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.36rtl', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1402;model=invheader')
node_331 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.36reordering', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1403;model=invheader')
node_332 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.36chooser', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1404;model=invheader')
node_333 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.36validation', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1405;model=invheader')
node_334 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.36cinput', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1406;model=invheader')
node_335 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.36ajax', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1407;model=invheader')
node_336 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jqgrid.demo.36tscroll', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1408;model=item')
node_337 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jqgrid.demo.36srows', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1409;model=invheader')
node_338 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.jqgrid.demo.36rdnd', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1410;model=invheader')
node_339 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.jqgrid.demo.36resizing', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1411;model=invheader')
parent_id = node_246
node_340 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 14, :title => 'txt.jqgrid.demo.37v', :ntype => '', :icon => '/images/icons/16x16/grid.png')
parent_id = node_340
node_341 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.37array', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1501;datatype=local')
node_342 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.37server', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1502;model=item')
node_343 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.37single', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1503;model=item')
node_344 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.37multiple', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1504;model=item')
node_345 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.37scroll', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1505;model=item')
node_346 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.37toolbar', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1506;model=item')
node_347 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.37crud', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1507;model=invheader')
parent_id = node_246
node_348 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 15, :title => 'txt.jqgrid.demo.38v', :ntype => '', :icon => '/images/icons/16x16/grid.png')
parent_id = node_348
node_349 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.38array1', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1601;datatype=local')
node_350 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.38array2', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1602;datatype=local')
node_351 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.38array3', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1603;datatype=local')
node_352 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.38array4', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1604;datatype=local')
node_353 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.38array5', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1605;datatype=local')
node_354 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.38array6', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1606;datatype=local')
node_355 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.38remote1', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1607;model=invheader')
node_356 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jqgrid.demo.38remote2', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1608;model=invheader')
node_357 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jqgrid.demo.38remote3', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1609;model=invheader')
node_358 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.jqgrid.demo.38remote4', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1610;model=invheader')
node_359 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.jqgrid.demo.38xml1', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1611;model=invheader')
node_360 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.jqgrid.demo.38remote5', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=1612;model=invheader')
parent_id = node_246
parent_id = node_245
node_361 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.mine.name', :ntype => '', :icon => '/images/icons/16x16/grid.png')
parent_id = node_361
node_362 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.mine.contextmenu', :ntype => '', :icon => '/images/icons/16x16/grid.png')
parent_id = node_362
node_363 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.mine.contextmenu1', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/mine?demo=contextmenu1')
node_364 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.mine.contextmenu2', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/demo?demo=9901;model=invheader')
parent_id = node_361
node_365 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.gridify', :ntype => '', :icon => '/images/icons/16x16/working.png')
parent_id = node_365
node_366 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.simple.name', :ntype => '', :icon => '/images/icons/16x16/grid.png')
parent_id = node_366
node_367 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.simple.default', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/players?example=01')
node_368 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.simple.selection', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/players?example=02')
node_369 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.simple.direct', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/players?example=03')
node_370 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.simple.multiple', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/players?example=04')
node_371 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.simple.master', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/players?example=05')
parent_id = node_365
node_372 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.manipulation.name', :ntype => '', :icon => '/images/icons/16x16/grid.png')
parent_id = node_372
node_373 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.manipulation.inline', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/players?example=06')
node_374 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.manipulation.modal', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/players?example=07')
node_375 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.manipulation.input', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/players?example=08')
node_376 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.manipulation.datepicker', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/players?example=09')
parent_id = node_365
node_377 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.subgrids.name', :ntype => '', :icon => '/images/icons/16x16/working.png')
parent_id = node_377
node_378 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.subgrids.default', :ntype => '', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/players?example=10')
node_379 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.subgrids.crud', :ntype => '', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/players?example=11')
node_380 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.subgrids.selection', :ntype => '', :icon => '/images/icons/16x16/working.png', :url => '/jqgrid/players?example=12')
parent_id = node_365
node_381 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.improvements.name', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/players?example=13')
parent_id = node_361
node_382 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.2dc', :ntype => '', :icon => '/images/icons/16x16/grid.png')
parent_id = node_382
node_383 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.subgrids.name', :ntype => '', :icon => '/images/icons/16x16/grid.png')
parent_id = node_383
node_384 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.subgrids.default', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/users?example=10')
node_385 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.subgrids.crud', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/users?example=11')
node_386 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.subgrids.selection', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/users?example=12')
parent_id = node_382
parent_id = node_361
node_387 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.secret', :ntype => '', :icon => '/images/icons/16x16/grid.png', :url => '/jqgrid/widgets')
parent_id = node_245
parent_id = node_165
node_388 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ical.name', :ntype => '', :icon => '/images/icons/16x16/working.png')
parent_id = node_388
node_389 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ical.anytime.name', :ntype => '', :icon => '/images/icons/16x16/alarmclock.png')
parent_id = node_389
node_390 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ical.anytime.default', :ntype => '', :icon => '/images/icons/16x16/alarmclock.png', :url => '/ical/anytime/default')
node_391 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ical.anytime.inline', :ntype => '', :icon => '/images/icons/16x16/alarmclock.png', :url => '/ical/anytime/inline')
node_392 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ical.anytime.separate', :ntype => '', :icon => '/images/icons/16x16/alarmclock.png', :url => '/ical/anytime/separate')
node_393 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ical.anytime.css', :ntype => '', :icon => '/images/icons/16x16/alarmclock.png', :url => '/ical/anytime/css')
node_394 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ical.anytime.ajax', :ntype => '', :icon => '/images/icons/16x16/alarmclock.png', :url => '/ical/anytime/ajax')
node_395 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ical.anytime.convert', :ntype => '', :icon => '/images/icons/16x16/alarmclock.png', :url => '/ical/anytime/convert')
node_396 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ical.anytime.extend', :ntype => '', :icon => '/images/icons/16x16/alarmclock.png', :url => '/ical/anytime/extend')
parent_id = node_388
node_397 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ical.calendar.listing', :ntype => '', :icon => '/images/icons/16x16/calendar.png', :url => '/ical/calendars')
parent_id = node_165
node_398 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.sparklines.name', :ntype => '', :icon => '/images/icons/16x16/sparklines.png')
parent_id = node_398
node_399 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.sparklines.default', :ntype => '', :icon => '/images/icons/16x16/sparklines.png', :url => '/sparklines/default')
node_400 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.sparklines.examples', :ntype => '', :icon => '/images/icons/16x16/working.png', :url => '/sparklines/examples')
parent_id = node_165
parent_id = node_1
node_401 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.name', :ntype => '', :icon => '/images/icons/16x16/jqmobile.png')
parent_id = node_401
node_402 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.black', :ntype => '', :icon => '/images/icons/16x16/blackberry.png')
parent_id = node_402
node_403 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.port', :ntype => '', :icon => '/images/icons/16x16/portrait.png')
parent_id = node_403
node_404 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :ntype => '', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/blackberry_portrait/jqm')
node_405 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :ntype => '', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/blackberry_portrait/jqm2')
node_406 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :ntype => '', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/blackberry_portrait/jqm_original')
parent_id = node_402
node_407 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.land', :ntype => '', :icon => '/images/icons/16x16/landscape.png')
parent_id = node_407
node_408 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :ntype => '', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/blackberry_landscape/jqm')
node_409 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :ntype => '', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/blackberry_landscape/jqm2')
node_410 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :ntype => '', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/blackberry_landscape/jqm_original')
parent_id = node_402
parent_id = node_401
node_411 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.ipad', :ntype => '', :icon => '/images/icons/16x16/ipad.png')
parent_id = node_411
node_412 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.port', :ntype => '', :icon => '/images/icons/16x16/portrait.png')
parent_id = node_412
node_413 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :ntype => '', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/ipad_portrait/jqm')
node_414 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :ntype => '', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/ipad_portrait/jqm2')
node_415 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :ntype => '', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/ipad_portrait/jqm_original')
parent_id = node_411
node_416 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.land', :ntype => '', :icon => '/images/icons/16x16/landscape.png')
parent_id = node_416
node_417 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :ntype => '', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/ipad_landscape/jqm')
node_418 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :ntype => '', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/ipad_landscape/jqm2')
node_419 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :ntype => '', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/ipad_landscape/jqm_original')
parent_id = node_411
parent_id = node_401
node_420 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.iphone', :ntype => '', :icon => '/images/icons/16x16/iphone.png')
parent_id = node_420
node_421 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.port', :ntype => '', :icon => '/images/icons/16x16/portrait.png')
parent_id = node_421
node_422 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :ntype => '', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/iphone_portrait/jqm')
node_423 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :ntype => '', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/iphone_portrait/jqm2')
node_424 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :ntype => '', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/iphone_portrait/jqm_original')
parent_id = node_420
node_425 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.land', :ntype => '', :icon => '/images/icons/16x16/landscape.png')
parent_id = node_425
node_426 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :ntype => '', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/iphone_landscape/jqm')
node_427 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :ntype => '', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/iphone_landscape/jqm2')
node_428 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :ntype => '', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/iphone_landscape/jqm_original')
parent_id = node_420
parent_id = node_401
node_429 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.emu.palm', :ntype => '', :icon => '/images/icons/16x16/palm.png')
parent_id = node_429
node_430 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.port', :ntype => '', :icon => '/images/icons/16x16/portrait.png')
parent_id = node_430
node_431 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :ntype => '', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/palm_portrait/jqm')
node_432 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :ntype => '', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/palm_portrait/jqm2')
node_433 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :ntype => '', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/palm_portrait/jqm_original')
parent_id = node_429
node_434 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.land', :ntype => '', :icon => '/images/icons/16x16/landscape.png')
parent_id = node_434
node_435 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.emu.jqm.default', :ntype => '', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/palm_landscape/jqm')
node_436 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.emu.jqm.experiments', :ntype => '', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/palm_landscape/jqm2')
node_437 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.emu.jqm.home', :ntype => '', :icon => '/images/icons/16x16/jqmobile.png', :url => '/emulators/palm_landscape/jqm_original')
parent_id = node_429
parent_id = node_401
parent_id = node_1
puts "Finished creating navigation tree"


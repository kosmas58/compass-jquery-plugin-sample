
#NavigationTree
node_1 = NavigationTree.create(:parent_id => 0, :position => 0, :left => 1,  :right => 2, :level => 0, :title => 'ROOT').id
parent_id = node_1
node_19 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.name', :type => 'accordion', :icon => '/images/jstree/jquery-ui.png', :url => '')
parent_id = node_19
node_20 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.interactions.default', :type => 'folder', :icon => '/images/jstree/jquery-ui.png', :url => '')
parent_id = node_20
node_26 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.interactions.draggable.default', :type => 'folder', :icon => '/images/jstree/jquery-ui.png', :url => '')
parent_id = node_26
node_27 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/draggable/default')
node_40 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.interactions.draggable.events', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/draggable/events')
node_41 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.interactions.draggable.constrain-movement', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/draggable/constrain_movement')
node_42 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.interactions.draggable.delay-start', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/draggable/delay_start')
node_43 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.interactions.draggable.snap-to', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/draggable/snap_to')
node_44 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.interactions.draggable.scroll', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/draggable/scroll')
node_45 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.interactions.draggable.revert', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/draggable/revert')
node_46 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.interactions.draggable.visual-feedback', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/draggable/visual_feedback')
node_47 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.interactions.draggable.handle', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/draggable/handle')
node_48 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.ui.interactions.draggable.cursor-style', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/draggable/cursor_style')
node_49 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.ui.interactions.draggable.sortable', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/draggable/sortable')
parent_id = node_20
node_50 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.interactions.droppable.default', :type => 'folder', :icon => '/images/jstree/jquery-ui.png', :url => '')
parent_id = node_50
node_51 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/droppable/default')
node_52 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.interactions.droppable.accepted-elements', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/droppable/accepted_elements')
node_54 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.interactions.droppable.propagation', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/droppable/propagation')
node_55 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.interactions.droppable.visual-feedback', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/droppable/visual_feedback')
node_56 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.interactions.droppable.revert', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/droppable/revert')
node_59 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.interactions.droppable.shopping-cart', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/droppable/shopping_cart')
node_60 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.interactions.droppable.photo-manager', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/droppable/photo_manager')
parent_id = node_20
node_62 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.interactions.resizable.default', :type => 'folder', :icon => '/images/jstree/jquery-ui.png', :url => '')
parent_id = node_62
node_63 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/resizable/default')
node_64 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.interactions.resizable.aspect-ratio', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/resizable/aspect_ratio')
node_68 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.interactions.resizable.max-min', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/resizable/max_min')
node_107 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.interactions.resizable.constrain-area', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/resizable/constrain_area')
node_108 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.interactions.resizable.delay-start', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/resizable/delay_start')
node_109 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.interactions.resizable.snap-to-grid', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/resizable/snap_to_grid')
node_110 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.interactions.resizable.visual-feedback', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/resizable/visual_feedback')
node_111 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.interactions.resizable.synchronous-resize', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/resizable/synchronous_resize')
node_112 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.interactions.resizable.animate', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/resizable/animate')
node_113 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.ui.interactions.resizable.helper', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/resizable/helper')
node_114 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.ui.interactions.resizable.textarea', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/resizable/textarea')
parent_id = node_20
node_74 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.interactions.selectable.default', :type => 'folder', :icon => '/images/jstree/jquery-ui.png', :url => '')
parent_id = node_74
node_75 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/selectable/default')
node_76 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.interactions.selectable.serialize', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/selectable/serialize')
node_77 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.interactions.selectable.display-grid', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/selectable/display_grid')
parent_id = node_20
node_86 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.interactions.sortable.default', :type => 'folder', :icon => '/images/jstree/jquery-ui.png', :url => '')
parent_id = node_86
node_87 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/sortable/default')
node_88 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.interactions.sortable.placeholder', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/sortable/placeholder')
node_89 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.interactions.sortable.connect-lists', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/sortable/connect_lists')
node_90 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.interactions.sortable.connect-lists-through-tabs', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/sortable/connect_lists_through_tabs')
node_91 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.interactions.sortable.empty-lists', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/sortable/empty_lists')
node_92 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.interactions.sortable.items', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/sortable/items')
node_93 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.interactions.sortable.delay-start', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/sortable/delay_start')
node_96 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.interactions.sortable.display-grid', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/sortable/display_grid')
node_97 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.interactions.sortable.portlets', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/interactions/sortable/portlets')
parent_id = node_20
parent_id = node_19
node_21 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.default', :type => 'folder', :icon => '/images/jstree/jquery-ui.png', :url => '')
parent_id = node_21
node_209 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.widgets.accordion.default', :type => 'folder', :icon => '/images/jstree/jquery-ui.png', :url => '')
parent_id = node_209
node_210 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/accordion/default')
node_218 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.accordion.fillspace', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/accordion/fillspace')
node_219 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.accordion.no-auto-height', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/accordion/no_auto_height')
node_220 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.accordion.collapsible', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/accordion/collapsible')
node_221 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.accordion.mouseover', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/accordion/mouseover')
node_222 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.accordion.hoverintent', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/accordion/hoverintent')
node_223 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.accordion.custom-icons', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/accordion/custom_icons')
node_224 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.accordion.sortable', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/accordion/sortable')
parent_id = node_21
node_211 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.autocomplete.default', :type => 'folder', :icon => '/images/jstree/jquery-ui.png', :url => '')
parent_id = node_211
node_225 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/autocomplete/default')
node_232 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.autocomplete.remote', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/autocomplete/remote')
node_233 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.autocomplete.remote-with-cache', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/autocomplete/remote_with_cache')
node_234 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.autocomplete.remote-jsonp', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/autocomplete/remote_jsonp')
node_235 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.autocomplete.maxheight', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/autocomplete/maxheight')
node_236 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.autocomplete.combobox', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/autocomplete/combobox')
node_237 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.autocomplete.custom-data', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/autocomplete/custom_data')
node_238 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.autocomplete.remote-xml', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/autocomplete/remote_xml')
node_239 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.widgets.autocomplete.categories', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/autocomplete/categories')
node_240 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.ui.widgets.autocomplete.folding', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/autocomplete/folding')
node_241 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.ui.widgets.autocomplete.multiple', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/autocomplete/multiple')
node_242 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.ui.widgets.autocomplete.multiple-remote', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/autocomplete/multiple_remote')
parent_id = node_21
node_212 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.button.default', :type => 'folder', :icon => '/images/jstree/jquery-ui.png', :url => '')
parent_id = node_212
node_226 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/button/default')
node_243 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.button.radio', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/button/radio')
node_244 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.button.checkbox', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/button/checkbox')
node_245 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.button.icon', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/button/icon')
node_246 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.button.toolbar', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/button/toolbar')
node_247 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.button.splitbutton', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/button/splitbutton')
parent_id = node_21
node_213 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.datepicker.default', :type => 'folder', :icon => '/images/jstree/jquery-ui.png', :url => '')
parent_id = node_213
node_227 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/datepicker/default')
node_249 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.datepicker.date-formats', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/datepicker/date_formats')
node_250 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.datepicker.min-max', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/datepicker/min_max')
node_251 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.datepicker.localization', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/datepicker/localization')
node_252 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.datepicker.alt-field', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/datepicker/alt_field')
node_253 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.datepicker.inline', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/datepicker/inline')
node_254 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.datepicker.buttonbar', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/datepicker/buttonbar')
node_255 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.datepicker.dropdown-month-year', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/datepicker/dropdown_month_year')
node_256 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.widgets.datepicker.other-months', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/datepicker/other_months')
node_257 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.ui.widgets.datepicker.show-week', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/datepicker/show_week')
node_258 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.ui.widgets.datepicker.multiple-calendars', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/datepicker/multiple_calendars')
node_259 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.ui.widgets.datepicker.icon-trigger', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/datepicker/icon_trigger')
node_260 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 12, :title => 'txt.ui.widgets.datepicker.animation', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/datepicker/animation')
node_261 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 13, :title => 'txt.ui.widgets.datepicker.event-search', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/datepicker/event_search')
parent_id = node_21
node_214 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.dialog.default', :type => 'folder', :icon => '/images/jstree/jquery-ui.png', :url => '')
parent_id = node_214
node_228 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/dialog/default')
node_248 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.dialog.animated', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/dialog/animated')
node_262 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.dialog.modal', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/dialog/modal')
node_263 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.dialog.modal-message', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/dialog/modal_message')
node_264 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.dialog.modal-confirmation', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/dialog/modal_confirmation')
node_265 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.dialog.modal-form', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/dialog/modal_form')
parent_id = node_21
node_215 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.progressbar.default', :type => 'folder', :icon => '/images/jstree/jquery-ui.png', :url => '')
parent_id = node_215
node_229 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/progressbar/default')
node_266 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.progressbar.animated', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/progressbar/animated')
node_267 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.progressbar.resize', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/progressbar/resize')
parent_id = node_21
node_216 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.slider.default', :type => 'folder', :icon => '/images/jstree/jquery-ui.png', :url => '')
parent_id = node_216
node_230 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/slider/default')
node_268 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.slider.steps', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/slider/steps')
node_276 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.slider.range', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/slider/range')
node_277 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.slider.rangemin', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/slider/rangemin')
node_278 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.slider.hotelrooms', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/slider/hotelrooms')
node_279 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.slider.rangemax', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/slider/rangemax')
node_280 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.slider.slider-vertical', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/slider/slider_vertical')
node_281 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.slider.range-vertical', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/slider/range_vertical')
node_282 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.widgets.slider.multiple-vertical', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/slider/multiple_vertical')
node_283 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.ui.widgets.slider.colorpicker', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/slider/colorpicker')
node_284 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.ui.widgets.slider.side-scroll', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/slider/side_scroll')
node_285 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.ui.widgets.slider.tabs', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/slider/tabs')
parent_id = node_21
node_217 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.tabs.default', :type => 'folder', :icon => '/images/jstree/jquery-ui.png', :url => '')
parent_id = node_217
node_231 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/tabs/default')
node_269 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.widgets.tabs.ajax', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/tabs/ajax')
node_270 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.widgets.tabs.mouseover', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/tabs/mouseover')
node_271 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.widgets.tabs.collapsible', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/tabs/collapsible')
node_272 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.widgets.tabs.sortable', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/tabs/sortable')
node_273 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.widgets.tabs.manipulation', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/tabs/manipulation')
node_274 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.widgets.tabs.bottom', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/tabs/bottom')
node_275 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.widgets.tabs.cookie', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/widgets/tabs/cookie')
parent_id = node_21
parent_id = node_19
node_115 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.effects.default', :type => 'folder', :icon => '/images/jstree/jquery-ui.png', :url => '')
parent_id = node_115
node_198 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.effects.add_class.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/effects/add_class')
node_199 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.effects.remove_class.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/effects/remove_class')
node_200 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ui.effects.switch_class.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/effects/switch_class')
node_201 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.effects.toggle_class.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/effects/toggle_class')
node_202 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.ui.effects.show.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/effects/show')
node_203 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.ui.effects.hide.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/effects/hide')
node_204 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.ui.effects.toggle.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/effects/toggle')
node_205 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.ui.effects.animate.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/effects/animate')
node_206 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.ui.effects.effect.default', :type => 'folder', :icon => '/images/jstree/jquery-ui.png', :url => '')
parent_id = node_206
node_207 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.effects.effect.showcase', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/effects/effect/default')
node_208 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.effects.effect.easing', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/effects/effect/easing')
parent_id = node_115
parent_id = node_19
node_194 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.ui.utilities.default', :type => 'folder', :icon => '/images/jstree/jquery-ui.png', :url => '')
parent_id = node_194
node_195 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.utilities.position.default', :type => 'folder', :icon => '/images/jstree/jquery-ui.png', :url => '')
parent_id = node_195
node_196 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ui.default', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/utilities/position/default')
node_197 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ui.utilities.position.cycler', :type => 'default', :icon => '/images/jstree/jquery-ui.png', :url => '/jqueryui/utilities/position/cycler')
parent_id = node_194
parent_id = node_19
parent_id = node_1
node_116 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.trees', :type => 'accordion', :icon => '/images/jstree/tree.png', :url => '')
parent_id = node_116
node_121 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jst.name', :type => 'folder', :icon => '/images/jstree/tree.png', :url => '')
parent_id = node_121
node_151 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jst.demo', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/jstree/demo')
node_152 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jst.plugins', :type => 'folder', :icon => '/images/jstree/tree.png', :url => '')
parent_id = node_152
node_153 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jst.core', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/jstree/core')
node_154 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jst.html', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/jstree/html')
node_155 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jst.json', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/jstree/json')
node_156 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jst.xml', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/jstree/xml')
node_157 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jst.themes', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/jstree/themes')
node_158 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jst.ui', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/jstree/ui')
node_159 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jst.crrm', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/jstree/crrm')
node_160 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jst.hotkeys', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/jstree/hotkeys')
node_161 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jst.lang', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/jstree/languages')
node_162 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.jst.cookies', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/jstree/cookies')
node_163 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.jst.sort', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/jstree/sort')
node_164 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.jst.dnd', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/jstree/dnd')
node_165 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 12, :title => 'txt.jst.checkbox', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/jstree/checkbox')
node_166 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 13, :title => 'txt.jst.radio', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/jstree/radio')
node_167 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 14, :title => 'txt.jst.search', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/jstree/searching')
node_168 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 15, :title => 'txt.jst.contextmenu', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/jstree/contextmenu')
node_169 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 16, :title => 'txt.jst.types', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/jstree/types')
node_170 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 17, :title => 'txt.jst.themeroller', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/jstree/themeroller')
node_171 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 18, :title => 'txt.jst.unique', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/jstree/unique')
parent_id = node_121
parent_id = node_116
node_122 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.dt.name', :type => 'folder', :icon => '/images/jstree/tree.png', :url => '')
parent_id = node_122
node_172 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.dt.default', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/dynatree/default')
node_173 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.dt.quick', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/dynatree/quick')
node_174 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.dt.ul', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/dynatree/ul')
node_175 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.dt.api', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/dynatree/api')
node_176 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.dt.select', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/dynatree/select')
node_177 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.dt.theming.name', :type => 'folder', :icon => '/images/jstree/tree.png', :url => '')
parent_id = node_177
node_178 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.dt.theming.aero', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/dynatree/theming_aero')
node_179 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.dt.theming.aqua', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/dynatree/theming_aqua')
node_180 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.dt.theming.crystal', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/dynatree/theming_crystal')
node_181 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.dt.theming.xp', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/dynatree/theming_xp')
parent_id = node_122
node_182 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.dt.persist', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/dynatree/persist')
node_183 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.dt.events', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/dynatree/events')
node_184 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.dt.effects', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/dynatree/effects')
node_185 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.dt.dnd', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/dynatree/dnd')
node_186 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.dt.dnd2', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/dynatree/dnd2')
node_187 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.dt.contextmenu', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/dynatree/contextmenu')
node_188 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 12, :title => 'txt.dt.minexpand', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/dynatree/minexpand')
node_189 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 13, :title => 'txt.dt.lazy', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/dynatree/lazy_persist')
node_190 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 14, :title => 'txt.dt.iframe', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/dynatree/iframe')
node_191 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 15, :title => 'txt.dt.benchmark', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/dynatree/test_bench')
node_192 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 16, :title => 'txt.dt.form', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/dynatree/form')
node_193 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 17, :title => 'txt.dt.multiline', :type => 'default', :icon => '/images/jstree/tree.png', :url => '/dynatree/multiline')
parent_id = node_116
parent_id = node_1
node_117 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ribbon.name', :type => 'accordion', :icon => '/images/jstree/ribbon.png', :url => '')
parent_id = node_117
node_129 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.ribbon.default', :type => 'default', :icon => '/images/jstree/ribbon.png', :url => '/ribbon/default')
node_149 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.ribbon.office', :type => 'default', :icon => '/images/jstree/ribbon.png', :url => '/ribbon/office')
node_150 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.ribbon.simple', :type => 'default', :icon => '/images/jstree/ribbon.png', :url => '/ribbon/simple')
parent_id = node_1
node_118 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.name', :type => 'accordion', :icon => '/images/jstree/working.png', :url => '')
parent_id = node_118
node_286 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.gridify', :type => 'folder', :icon => '/images/jstree/working.png', :url => '')
parent_id = node_286
node_287 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.simple.name', :type => 'folder', :icon => '/images/jstree/working.png', :url => '')
parent_id = node_287
node_291 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.simple.default', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/players?example=01')
node_292 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.simple.selection', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/players?example=02')
node_293 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.simple.direct', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/players?example=03')
node_294 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.simple.multiple', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/players?example=04')
node_295 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.simple.master', :type => 'default', :icon => '/images/jstree/working.png', :url => '/jqgrid/players?example=05')
parent_id = node_286
node_288 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.manipulation.name', :type => 'folder', :icon => '/images/jstree/grid.png', :url => '')
parent_id = node_288
node_296 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.manipulation.inline', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/players?example=06')
node_297 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.manipulation.modal', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/players?example=07')
node_298 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.manipulation.input', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/players?example=08')
node_299 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.manipulation.datepicker', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/players?example=09')
parent_id = node_286
node_289 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.subgrids.name', :type => 'folder', :icon => '/images/jstree/grid.png', :url => '')
parent_id = node_289
node_300 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.subgrids.default', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/players?example=10')
node_301 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.subgrids.crud', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/players?example=11')
node_302 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.subgrids.selection', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/players?example=12')
parent_id = node_286
node_303 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.improvements.name', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/players?example=13')
parent_id = node_118
node_290 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.default', :type => 'folder', :icon => '/images/jstree/working.png', :url => '')
parent_id = node_290
node_304 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.20loading', :type => 'folder', :icon => '/images/jstree/grid.png', :url => '')
parent_id = node_304
node_306 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.20xml_data', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=0101;model=invheader;datatype=xml')
node_307 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.20json_data', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=0102;model=invheader')
node_308 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.20once', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=0103;model=invheader')
node_309 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.20array', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=0104;datatype=local')
parent_id = node_290
node_305 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.20manipulating', :type => 'folder', :icon => '/images/jstree/working.png', :url => '')
parent_id = node_305
node_310 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqgrid.demo.20data', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/demo?demo=0201;model=invheader')
node_311 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqgrid.demo.20get', :type => 'default', :icon => '/images/jstree/working.png', :url => '/jqgrid/demo?demo=0202;model=invheader')
node_312 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.20set', :type => 'default', :icon => '/images/jstree/working.png', :url => '/jqgrid/demo?demo=0203;model=invheader')
parent_id = node_290
node_313 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.20advanced', :type => 'folder', :icon => '/images/jstree/grid.png', :url => '')
node_314 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.demo.30v', :type => 'folder', :icon => '/images/jstree/grid.png', :url => '')
node_315 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqgrid.demo.30row', :type => 'folder', :icon => '/images/jstree/working.png', :url => '')
node_316 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqgrid.demo.30mapping', :type => 'folder', :icon => '/images/jstree/working.png', :url => '')
node_317 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqgrid.demo.30integrations', :type => 'folder', :icon => '/images/jstree/grid.png', :url => '')
node_318 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 7, :title => 'txt.jqgrid.demo.30live', :type => 'folder', :icon => '/images/jstree/grid.png', :url => '')
node_319 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 8, :title => 'txt.jqgrid.demo.31v', :type => 'folder', :icon => '/images/jstree/working.png', :url => '')
node_320 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 9, :title => 'txt.jqgrid.demo.32v', :type => 'folder', :icon => '/images/jstree/working.png', :url => '')
node_321 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 10, :title => 'txt.jqgrid.demo.33v', :type => 'folder', :icon => '/images/jstree/working.png', :url => '')
node_322 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 11, :title => 'txt.jqgrid.demo.34v', :type => 'folder', :icon => '/images/jstree/working.png', :url => '')
node_323 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 12, :title => 'txt.jqgrid.demo.35v', :type => 'folder', :icon => '/images/jstree/working.png', :url => '')
node_324 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 13, :title => 'txt.jqgrid.demo.36v', :type => 'folder', :icon => '/images/jstree/working.png', :url => '')
node_325 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 14, :title => 'txt.jqgrid.demo.37v', :type => 'folder', :icon => '/images/jstree/working.png', :url => '')
node_326 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 15, :title => 'txt.jqgrid.demo.38v', :type => 'folder', :icon => '/images/jstree/working.png', :url => '')
parent_id = node_118
node_327 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqgrid.demo.2dc', :type => 'folder', :icon => '/images/jstree/grid.png', :url => '')
node_328 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqgrid.secret', :type => 'default', :icon => '/images/jstree/grid.png', :url => '/jqgrid/widgets')
parent_id = node_1
node_136 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqical.name', :type => 'accordion', :icon => '/images/jstree/working.png', :url => '')
parent_id = node_136
node_137 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqical.anytime.name', :type => 'folder', :icon => '/images/jstree/alarmclock.png', :url => '')
parent_id = node_137
node_142 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqical.anytime.default', :type => 'default', :icon => '/images/jstree/alarmclock.png', :url => '/jqical/anytime/default')
node_143 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqical.anytime.inline', :type => 'default', :icon => '/images/jstree/alarmclock.png', :url => '/jqical/anytime/inline')
node_144 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 2, :title => 'txt.jqical.anytime.separate', :type => 'default', :icon => '/images/jstree/alarmclock.png', :url => '/jqical/anytime/separate')
node_145 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 3, :title => 'txt.jqical.anytime.css', :type => 'default', :icon => '/images/jstree/alarmclock.png', :url => '/jqical/anytime/css')
node_146 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 4, :title => 'txt.jqical.anytime.ajax', :type => 'default', :icon => '/images/jstree/alarmclock.png', :url => '/jqical/anytime/ajax')
node_147 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqical.anytime.convert', :type => 'default', :icon => '/images/jstree/alarmclock.png', :url => '/jqical/anytime/convert')
node_148 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 6, :title => 'txt.jqical.anytime.extend', :type => 'default', :icon => '/images/jstree/alarmclock.png', :url => '/jqical/anytime/extend')
parent_id = node_136
node_138 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqical.calendar.listing', :type => 'default', :icon => '/images/jstree/calendar.png', :url => '/jqical/calendars')
parent_id = node_1
node_139 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 5, :title => 'txt.jqt.name', :type => 'accordion', :icon => '/images/jstree/iphone.png', :url => '')
parent_id = node_139
node_140 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 0, :title => 'txt.jqt.demo', :type => 'default', :icon => '/images/jstree/working.png', :url => '/iphone/main')
node_141 = NavigationTree.create_node(:id => parent_id, :seed => true, :position => 1, :title => 'txt.jqt.beta', :type => 'default', :icon => '/images/jstree/iphone.png', :url => '/iphone/original')
parent_id = node_1

require 'jquery/graphics'

ActionView::Helpers::AssetTagHelper.register_stylesheet_expansion :ganttView => ['compiled/jquery/ganttView.css']
ActionView::Helpers::AssetTagHelper.register_javascript_expansion :ganttView => ['jquery.ganttView.min']
ActionView::Helpers::AssetTagHelper.register_javascript_expansion :qrcode => ['jquery.qrcode.min']
ActionView::Helpers::AssetTagHelper.register_javascript_expansion :sparklines => ['jquery.sparkline.min']
ActionView::Helpers::AssetTagHelper.register_javascript_expansion :highcharts => ['jquery.highcharts.min']
ActionView::Helpers::AssetTagHelper.register_javascript_expansion :highcharts_grid => ['highcharts/grid.min']
ActionView::Helpers::AssetTagHelper.register_javascript_expansion :highcharts_skies => ['highcharts/skies.min']
ActionView::Helpers::AssetTagHelper.register_javascript_expansion :highcharts_gray => ['highcharts/gray.min']
ActionView::Helpers::AssetTagHelper.register_javascript_expansion :highcharts_blue => ['highcharts/dark-blue.min']
ActionView::Helpers::AssetTagHelper.register_javascript_expansion :highcharts_green => ['highcharts/dark-green.min']
ActionView::Helpers::AssetTagHelper.register_stylesheet_expansion :highslide => ['compiled/jquery/highslide.css']
ActionView::Helpers::AssetTagHelper.register_javascript_expansion :highslide => ['highcharts/highslide.min', 'highcharts/highslide-config.min']

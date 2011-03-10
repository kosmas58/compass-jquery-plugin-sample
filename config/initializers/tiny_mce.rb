require 'jquery/tiny_mce'
require 'tiny_mce_gzip_routes'

ActionView::Helpers::AssetTagHelper.register_javascript_expansion :tiny_mce => ['tiny_mce/jquery.tinymce']

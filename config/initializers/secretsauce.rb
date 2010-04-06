require 'jquery/secretsauce'

ActionView::Helpers::AssetTagHelper.register_javascript_expansion :secret_sauce => ["secretsauce.min"]

#ActionView::Base.send :include, SecretSauce::Helpers::UiThemeHelper
#ActionView::Base.send :include, SecretSauce::Helpers::UiGridHelper
#ActionView::Base.send :include, SecretSauce::Helpers::UiFormHelper
#ActionView::Base.send :include, SecretSauce::Helpers::UiDialogHelper
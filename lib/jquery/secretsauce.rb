# SecretSauce
module SecretSauce
  # if you get a failure here because you are running in production then that means you have probably not created your own
  # secret key. Just run rake sauce:key and replace KEY = DEFAULT_KEY with the results
  DEFAULT_KEY = "-----BEGIN RSA PRIVATE KEY-----\nMIICXQIBAAKBgQDkPrFxpIzhc2jZ2Uk3whjW9kzh4I45YNAvypKtMucBIqciaYX8\nsOWK/6qEOKCK8QwSEIRJQP0dGKV4V/RKwYqySL7SZd34aCwGNXeTiOgJQ74XwRw7\nOZGNSpp3jBf9PnDw26FQHUd06Hwx95JuM+MnZkkm6NEBOn0N42CzYdlzJQIDAQAB\nAoGATYj6kGdcsE2bRb3pgHaAJ639yhGVXuqDbmi7UPjkvl7+NdNw/7k8EO7vBwGR\nkAF4nz5bIeNg2JyBwZLnWunKakemFXfeGXJ5Xdp6/3FYpaTIfq7pN/T9GIjarAae\nCYOrju4T9UbD1tiZ3Jo/aatAH7Ize5isj9EbTjsO9FRpesECQQD8nwgj1QkXezD9\noz7fn7BEWaW6DHjN43aBhli2xV0BnwMj4Ex4+Q8TKXY6FJ9vrAaDJgCH9Pl/VLG+\nsoE4SGORAkEA50wyjbPftGB5jPUdbZc94NaUAI3nZhFmI9NWRxSlNV4vbTsa/9Aq\n1sCdUBc6Gd9+968MQEURJwn25xz7vtAkVQJBANPFEVLQdMWtbN1DKyLVwDMcH7S+\nXcrjAuYD1HyrKJOCVGSP1CuZRczfdg+sWBeKUw9AHTPb5gea3UIqa+7dqDECQCMf\njw21ouLhQ5QEJNPfg6YA77il093MBpaqIQ/qMqxIASu1LgRquBakaT8gR9Jl/gHe\nsx2PX2tuN/AglpoDQYECQQDf2fIbkoRFUng0jgxefHYkPSOB1LIAmGHiC23MaxpN\n4reSL1gs7vxXWeaJSj7P/nv2lZooogtg1lSkBtOQXT6w\n-----END RSA PRIVATE KEY-----\n"
  unless defined? KEY
    KEY = "d2ae25572da1187a96d91739fc77caa340f42e81fac891aca2518ccbdcc1c63ba74ac6af97dcb1f693837dc893d5373b2bbd70726d7af87d4aa3da715b94d3c3"
  end
  if RAILS_ENV != 'development' && KEY == DEFAULT_KEY
    fail "You can't run me in production yet! you havn't set up your own secret key!"
  end
end

Dir.glob("#{RAILS_ROOT}/vendor/plugins/secret_sauce/lib/secret_sauce/**/*.rb").each do |file|
  require file
end

ActionView::Base.send :include, SecretSauce::Helpers::UiThemeHelper
ActionView::Base.send :include, SecretSauce::Helpers::UiGridHelper
ActionView::Base.send :include, SecretSauce::Helpers::UiFormHelper
ActionView::Base.send :include, SecretSauce::Helpers::UiDialogHelper
module Theme
  class << self
    # Returns the current default locale. Defaults to :'en'
    def default_theme
      'ui-lightness'
    end    
         
    def current
      Thread.current[:theme] ||= default_theme
    end

    def current=(current)
      Thread.current[:theme] = current
    end    
    
    def themes
      [
        "black-tie",
        "blitzer",
        "cupertino",
        "dark-hive",
        "dot-luv",
        "eggplant",
        "excite-bike",
        "flick",
        "hot-sneaks",
        "humanity",
        "le-frog",
        "mint-choc",
        "overcast",
        "pepper-grinder",
        "redmond",
        "smoothness",
        "south-street",
        "sunny",
        "swanky-purse",
        "trontastic",
        "ui-darkness",
        "ui-lightness",
        "vader"
      ]
    end    
  end
end

jQuery.fn.hashValue = function() {
    var href = this.attr('href');
    return href ? href.replace(/^.*#/, '') : href;
}

jQuery(document).ready(function($) {
        // ----- Model ----
        var Model = {
            pages: [],
            currentLevel: 0,
            setPage: function(level, page, isUserAction) {
                if(page == this.pages[level]) {
                    return;
                }
                this._updateState(level, page);
                if(isUserAction) {
                    $.history.load(this.dump());
                } else {
                    render();
                }
            },
            incLevel: function() {
                this.currentLevel++;
                render();
            },
            _updateState: function(level, page) {
                var pages = [];
                for(var i = 0; i < level; i++) {
                    pages[i] = this.pages[i];
                }
                pages[level] = page;
                this.pages = pages;
                this.currentLevel = level;
            },
            dump: function() {
                return this.pages.join(",");
            },
            restore: function(hash) {
                if(this.dump() != hash) {
                    var pages = hash.split(/,/);
                    this.currentLevel = 0;
                    this.pages = pages;
                }
                render();
            }
        }

        // ----- View -----
        function render() {
            if(Model.pages[Model.currentLevel]) {
                var elm = getElement(Model.currentLevel, '.content');
                var url = "pages/"+ Model.pages[Model.currentLevel] + ".html";
                elm.load(url, loadHandler);
            }
        }

        // ----- Controllers -----
        $('.container .ajax-links a').live('click', clickHandler);

        function clickHandler(e) {
            var page = $(this).hashValue();
            var level = $(this).parents('.container').length - 1;
            Model.setPage(level, page, true);
            return false;
        }

        function loadHandler(responseText, textStatus, xhr) {
            var defaultPage = getDefaultPage(Model.currentLevel + 1);
            if(defaultPage && !Model.pages[Model.currentLevel + 1]) {
                Model.setPage(Model.currentLevel + 1, defaultPage, false);
            } else {
                Model.incLevel();
            }
        }

        // ----- Initializes history plugin -----
        $.history.init(function(hash) {
                if(hash == "") {
                    var defaultPage = getDefaultPage(0);
                    if(defaultPage) {
                        Model.restore(defaultPage);
                    }
                } else {
                    Model.restore(hash);
                }
            },
            { unescape: "," });

        // ----- Utility functions -----
        function strRepeat(str, num) {
            var ret = "";
            for(var i = 0; i < num; i++) {
                ret+= str;
            }
            return ret;
        }

        function getElement(level, className) {
            var selector = strRepeat(".container ", level + 1) + className;
            return $(selector).first();
        }

        function getDefaultPage(level) {
            return getElement(level, '.ajax-links .default-content').hashValue();
        }

    });

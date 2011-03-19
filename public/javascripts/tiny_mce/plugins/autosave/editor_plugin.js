(function(l){var n="autosave",j="restoredraft",h=true,k,m,i=l.util.Dispatcher;l.create("tinymce.plugins.AutoSave",{init:function(d,c){var e=this,a=d.settings;e.editor=d;function b(g){var f={s:1000,m:60000};g=/^(\d+)([ms]?)$/.exec(""+g);return(g[2]?f[g[2]]:1)*parseInt(g)}l.each({ask_before_unload:h,interval:"30s",retention:"20m",minlength:50},function(g,f){f=n+"_"+f;if(a[f]===k){a[f]=g}});a.autosave_interval=b(a.autosave_interval);a.autosave_retention=b(a.autosave_retention);d.addButton(j,{title:n+".restore_content",onclick:function(){if(d.getContent({draft:true}).replace(/\s|&nbsp;|<\/?p[^>]*>|<br[^>]*>/gi,"").length>0){d.windowManager.confirm(n+".warning_message",function(f){if(f){e.restoreDraft()}})}else{e.restoreDraft()}}});d.onNodeChange.add(function(){var f=d.controlManager;if(f.get(j)){f.setDisabled(j,!e.hasDraft())}});d.onInit.add(function(){if(d.controlManager.get(j)){e.setupStorage(d);setInterval(function(){e.storeDraft();d.nodeChanged()},a.autosave_interval)}});e.onStoreDraft=new i(e);e.onRestoreDraft=new i(e);e.onRemoveDraft=new i(e);if(!m){window.onbeforeunload=l.plugins.AutoSave._beforeUnloadHandler;m=h}},getInfo:function(){return{longname:"Auto save",author:"Moxiecode Systems AB",authorurl:"http://tinymce.moxiecode.com",infourl:"http://wiki.moxiecode.com/index.php/TinyMCE:Plugins/autosave",version:l.majorVersion+"."+l.minorVersion}},getExpDate:function(){return new Date(new Date().getTime()+this.editor.settings.autosave_retention).toUTCString()},setupStorage:function(c){var d=this,a=n+"_test",b="OK";d.key=n+c.id;l.each([function(){if(localStorage){localStorage.setItem(a,b);if(localStorage.getItem(a)===b){localStorage.removeItem(a);return localStorage}}},function(){if(sessionStorage){sessionStorage.setItem(a,b);if(sessionStorage.getItem(a)===b){sessionStorage.removeItem(a);return sessionStorage}}},function(){if(l.isIE){c.getElement().style.behavior="url('#default#userData')";return{autoExpires:h,setItem:function(f,p){var e=c.getElement();e.setAttribute(f,p);e.expires=d.getExpDate();try{e.save("TinyMCE")}catch(g){}},getItem:function(f){var e=c.getElement();try{e.load("TinyMCE");return e.getAttribute(f)}catch(g){return null}},removeItem:function(e){c.getElement().removeAttribute(e)}}}},],function(f){try{d.storage=f();if(d.storage){return false}}catch(e){}})},storeDraft:function(){var d=this,a=d.storage,c=d.editor,e,b;if(a){if(!a.getItem(d.key)&&!c.isDirty()){return}b=c.getContent({draft:true});if(b.length>c.settings.autosave_minlength){e=d.getExpDate();if(!d.storage.autoExpires){d.storage.setItem(d.key+"_expires",e)}d.storage.setItem(d.key,b);d.onStoreDraft.dispatch(d,{expires:e,content:b})}}},restoreDraft:function(){var b=this,a=b.storage;if(a){content=a.getItem(b.key);if(content){b.editor.setContent(content);b.onRestoreDraft.dispatch(b,{content:content})}}},hasDraft:function(){var d=this,a=d.storage,c,b;if(a){b=!!a.getItem(d.key);if(b){if(!d.storage.autoExpires){c=new Date(a.getItem(d.key+"_expires"));if(new Date().getTime()<c.getTime()){return h}d.removeDraft()}else{return h}}}return false},removeDraft:function(){var d=this,a=d.storage,c=d.key,b;if(a){b=a.getItem(c);a.removeItem(c);a.removeItem(c+"_expires");if(b){d.onRemoveDraft.dispatch(d,{content:b})}}},"static":{_beforeUnloadHandler:function(b){var a;l.each(tinyMCE.editors,function(c){if(c.plugins.autosave){c.plugins.autosave.storeDraft()}if(c.getParam("fullscreen_is_enabled")){return}if(!a&&c.isDirty()&&c.getParam("autosave_ask_before_unload")){a=c.getLang("autosave.unload_msg")}});return a}}});l.PluginManager.add("autosave",l.plugins.AutoSave)})(tinymce);
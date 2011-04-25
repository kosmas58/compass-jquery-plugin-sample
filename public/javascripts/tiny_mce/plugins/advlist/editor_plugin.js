(function(){var b=tinymce.each;tinymce.create("tinymce.plugins.AdvListPlugin",{init:function(a,h){var g=this;g.editor=a;function f(c){var d=[];b(c.split(/,/),function(e){d.push({title:"advlist."+(e=="default"?"def":e.replace(/-/g,"_")),styles:{listStyleType:e=="default"?"":e}})});return d}g.numlist=a.getParam("advlist_number_styles")||f("default,lower-alpha,lower-greek,lower-roman,upper-alpha,upper-roman");g.bullist=a.getParam("advlist_bullet_styles")||f("default,circle,disc,square");if(tinymce.isIE&&/MSIE [2-7]/.test(navigator.userAgent)){g.isIE7=true}},createControl:function(m,a){var k=this,l,i;if(m=="numlist"||m=="bullist"){if(k[m][0].title=="advlist.def"){i=k[m][0]}function n(e,c){var d=true;b(c.styles,function(f,g){if(k.editor.dom.getStyle(e,g)!=f){d=false;return false}});return d}function j(){var d,f=k.editor,c=f.dom,e=f.selection;d=c.getParent(e.getNode(),"ol,ul");if(!d||d.nodeName==(m=="bullist"?"OL":"UL")||n(d,i)){f.execCommand(m=="bullist"?"InsertUnorderedList":"InsertOrderedList")}if(i){d=c.getParent(e.getNode(),"ol,ul");if(d){c.setStyles(d,i.styles);d.removeAttribute("data-mce-style")}}f.focus()}l=a.createSplitButton(m,{title:"advanced."+m+"_desc","class":"mce_"+m,onclick:function(){j()}});l.onRenderMenu.add(function(d,c){c.onShowMenu.add(function(){var e=k.editor.dom,f=e.getParent(k.editor.selection.getNode(),"ol,ul"),g;if(f||i){g=k[m];b(c.items,function(p){var h=true;p.setSelected(0);if(f&&!p.isDisabled()){b(g,function(o){if(o.id==p.id){if(!n(f,o)){h=false;return false}}});if(h){p.setSelected(1)}}});if(!f){c.items[i.id].setSelected(1)}}});c.add({id:k.editor.dom.uniqueId(),title:"advlist.types","class":"mceMenuItemTitle",titleItem:true}).setDisabled(1);b(k[m],function(e){if(k.isIE7&&e.styles.listStyleType=="lower-greek"){return}e.id=k.editor.dom.uniqueId();c.add({id:e.id,title:e.title,onclick:function(){i=e;j()}})})});return l}},getInfo:function(){return{longname:"Advanced lists",author:"Moxiecode Systems AB",authorurl:"http://tinymce.moxiecode.com",infourl:"http://wiki.moxiecode.com/index.php/TinyMCE:Plugins/advlist",version:tinymce.majorVersion+"."+tinymce.minorVersion}}});tinymce.PluginManager.add("advlist",tinymce.plugins.AdvListPlugin)})();
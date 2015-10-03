/*!
 * froala_editor v1.2.8 (https://www.froala.com/wysiwyg-editor)
 * License https://www.froala.com/wysiwyg-editor/terms
 * Copyright 2014-2015 Froala Labs
 */
!function(t){t.Editable.prototype.refreshBlockStyles=function(){var e=this.getSelectionElements()[0],l=e.tagName.toLowerCase();this.$bttn_wrapper.find(".fr-block-style").empty();var a=this.options.blockStyles[l];if(void 0===a&&(a=this.options.defaultBlockStyle),void 0!==a){this.$bttn_wrapper.find('.fr-dropdown > button[data-name="blockStyle"].fr-trigger').removeAttr("disabled");for(var o in a){var r=a[o],s="";t(e).hasClass(o)&&(s=' class="active"'),this.$bttn_wrapper.find(".fr-block-style").append(t("<li"+s+">").append(t('<a href="#" data-text="true">').text(r).addClass(o)).attr("data-cmd","blockStyle").attr("data-val",o))}}},t.Editable.commands=t.extend(t.Editable.commands,{blockStyle:{title:"Block Style",icon:"fa fa-magic",refreshOnShow:t.Editable.prototype.refreshBlockStyles,callback:function(t,e,l){this.blockStyle(e,l)},undo:!0}}),t.Editable.DEFAULTS=t.extend(t.Editable.DEFAULTS,{defaultBlockStyle:{"f-italic":"Italic","f-typewriter":"Typewriter","f-spaced":"Spaced","f-uppercase":"Uppercase"},blockStylesToggle:!0,blockStyles:{}}),t.Editable.prototype.command_dispatcher=t.extend(t.Editable.prototype.command_dispatcher,{blockStyle:function(t){var e=this.buildDropdownBlockStyle(t),l=this.buildDropdownButton(t,e);return l}}),t.Editable.prototype.buildDropdownBlockStyle=function(){var t='<ul class="fr-dropdown-menu fr-block-style">';return t+="</ul>"},t.Editable.prototype.blockStyle=function(e){this.saveSelectionByMarkers(),this.wrapText(),this.restoreSelectionByMarkers();var l=this.getSelectionElements()[0].tagName;this.saveSelectionByMarkers();for(var a=this.getSelectionElements(),o=0;o<a.length;o++){var r=a[o];r!=this.$element.get(0)&&r.tagName==l&&(t(r).find(a).length>0||(t(r).hasClass(e)?(t(r).removeClass(e),""===t(r).attr("class")&&t(r).removeAttr("class")):(this.options.blockStylesToggle&&t(r).removeAttr("class"),t(r).addClass(e))))}this.cleanupLists(),this.restoreSelectionByMarkers(),this.triggerEvent("blockStyle")}}(jQuery);
/*!
 * froala_editor v1.2.8 (https://www.froala.com/wysiwyg-editor)
 * License https://www.froala.com/wysiwyg-editor/terms
 * Copyright 2014-2015 Froala Labs
 */
!function(e){e.Editable.URLRegEx=/(\s|^|>)((http|https|ftp|ftps)\:\/\/[a-zA-Z0-9\-\.]+(\.[a-zA-Z]{2,3})?(:\d*)?(\/[^\s<]*)?)(\s|$|<)/gi,e.Editable.prototype.convertURLs=function(t){var a=this;t.each(function(){if("IFRAME"!=this.tagName)if(3==this.nodeType){var t=this.textContent.replace(/&nbsp;/gi,"");e.Editable.URLRegEx.test(t)&&(e(this).before(t.replace(e.Editable.URLRegEx,'$1<a href="$2">$2</a>$7')),e(this).remove())}else 1==this.nodeType&&["A","BUTTON","TEXTAREA"].indexOf(this.tagName)<0&&a.convertURLs(e(this).contents())})},e.Editable.prototype.processURLs=function(){this.$original_element.on("editable.afterPasteCleanup",function(t,a,i){return e.Editable.URLRegEx.test(i)?i.replace(e.Editable.URLRegEx,'$1<a href="$2">$2</a>$7'):void 0}),this.$original_element.on("editable.keyup",function(e,t,a){var i=a.which;(32==i||13==i)&&t.convertURLs(t.$element.contents())}),this.$original_element.on("editable.keydown",function(t,a,i){var n=i.which;if(32==n){var s=a.getSelectionElement();if(("A"==s.tagName||e(s).parents("a").length)&&a.getSelectionTextInfo(s).atEnd)return t.stopImmediatePropagation(),"A"!==s.tagName&&(s=e(s).parents("a")[0]),e(s).after('&nbsp;<span class="f-marker" data-type="false" data-id="0" data-fr-verified="true"></span><span class="f-marker" data-type="true" data-id="0" data-fr-verified="true"></span>'),a.restoreSelectionByMarkers(),!1}})},e.Editable.initializers.push(e.Editable.prototype.processURLs)}(jQuery);
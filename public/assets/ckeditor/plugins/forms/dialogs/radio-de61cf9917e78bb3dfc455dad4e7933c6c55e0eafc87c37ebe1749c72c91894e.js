/*
 Copyright (c) 2003-2016, CKSource - Frederico Knabben. All rights reserved.
 For licensing, see LICENSE.md or http://ckeditor.com/license
*/
CKEDITOR.dialog.add("radio",function(e){return{title:e.lang.forms.checkboxAndRadio.radioTitle,minWidth:350,minHeight:140,onShow:function(){delete this.radioButton;var e=this.getParentEditor().getSelection().getSelectedElement();e&&"input"==e.getName()&&"radio"==e.getAttribute("type")&&(this.radioButton=e,this.setupContent(e))},onOk:function(){var e,t=this.radioButton,i=!t;i&&(e=this.getParentEditor(),t=e.document.createElement("input"),t.setAttribute("type","radio")),i&&e.insertElement(t),this.commitContent({element:t})},contents:[{id:"info",label:e.lang.forms.checkboxAndRadio.radioTitle,title:e.lang.forms.checkboxAndRadio.radioTitle,elements:[{id:"name",type:"text",label:e.lang.common.name,"default":"",accessKey:"N",setup:function(e){this.setValue(e.data("cke-saved-name")||e.getAttribute("name")||"")},commit:function(e){e=e.element,this.getValue()?e.data("cke-saved-name",this.getValue()):(e.data("cke-saved-name",!1),e.removeAttribute("name"))}},{id:"value",type:"text",label:e.lang.forms.checkboxAndRadio.value,"default":"",accessKey:"V",setup:function(e){this.setValue(e.getAttribute("value")||"")},commit:function(e){e=e.element,this.getValue()?e.setAttribute("value",this.getValue()):e.removeAttribute("value")}},{id:"checked",type:"checkbox",label:e.lang.forms.checkboxAndRadio.selected,"default":"",accessKey:"S",value:"checked",setup:function(e){this.setValue(e.getAttribute("checked"))},commit:function(t){var i=t.element;if(CKEDITOR.env.ie){var a=i.getAttribute("checked"),n=!!this.getValue();a!=n&&(a=CKEDITOR.dom.element.createFromHtml('<input type="radio"'+(n?' checked="checked"':"")+"></input>",e.document),i.copyAttributes(a,{type:1,checked:1}),a.replace(i),e.getSelection().selectElement(a),t.element=a)}else this.getValue()?i.setAttribute("checked","checked"):i.removeAttribute("checked")}},{id:"required",type:"checkbox",label:e.lang.forms.checkboxAndRadio.required,"default":"",accessKey:"Q",value:"required",setup:function(e){this.setValue(e.getAttribute("required"))},commit:function(e){e=e.element,this.getValue()?e.setAttribute("required","required"):e.removeAttribute("required")}}]}]}});
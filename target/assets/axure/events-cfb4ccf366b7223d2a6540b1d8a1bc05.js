$axure.internal(function(e){var t=e.features={};var n=t.supports={};n.touchstart=typeof window.ontouchstart!=="undefined";n.touchmove=typeof window.ontouchmove!=="undefined";n.touchend=typeof window.ontouchend!=="undefined";n.mobile=n.touchstart&&n.touchend&&n.touchmove;var r=navigator.userAgent.match(/Android/i)||navigator.userAgent.match(/webOS/i)||navigator.userAgent.match(/iPhone/i)||navigator.userAgent.match(/iPad/i)||navigator.userAgent.match(/iPod/i)||navigator.userAgent.match(/BlackBerry/i)||navigator.userAgent.match(/Tablet PC/i)||navigator.userAgent.match(/Windows Phone/i);n.windowsMobile=navigator.userAgent.match(/Tablet PC/i)||navigator.userAgent.match(/Windows Phone/i);if(!r&&n.mobile){n.touchstart=false;n.touchmove=false;n.touchend=false;n.mobile=false}var i=t.eventNames={};i.mouseDownName=n.touchstart?"touchstart":"mousedown";i.mouseUpName=n.touchend?"touchend":"mouseup";i.mouseMoveName=n.touchmove?"touchmove":"mousemove"});$axure.internal(function(e){var t={};var n=undefined;e.setjBrowserEvent=function(e){n=e};e.getjBrowserEvent=function(){return n};var r={};e.event=r;r.mouseOverObjectId="";r.mouseDownObjectId="";r.mouseOverIds=[];var i=["mouseenter","mouseleave","contextmenu","change","focus","blur"];if(!e.features.supports.mobile){i[i.length]="click";i[i.length]="dblclick";i[i.length]="mousemove"}i[i.length]=e.features.eventNames.mouseDownName;i[i.length]=e.features.eventNames.mouseUpName;for(var s=0;s<i.length;s++){var o=i[s];r[o]=function(t){return function(n,r){var i=$jobj(n);var s=e.getTypeFromElementId(n);if(i.is("a"))T(n,t,r);else if(e.IsTreeNodeObject(s))S(n,t,r);else if(e.IsImageFocusable(s)&&(t=="focus"||t=="blur")){x($jobj(e.repeater.applySuffixToElementId(n,"_img")),n,t,r)}else{var o=e.INPUT(n);var u=$jobj(o).length!=0;var a=u&&(t=="focus"||t=="blur")?o:n;x($jobj(a),n,t,r)}}}(o)}var u={onMouseOver:"mouseenter",onMouseOut:"mouseleave",onContextMenu:"contextmenu",onChange:"change",onFocus:"focus",onLostFocus:"blur"};if(!e.features.supports.mobile){u.onClick="click";u.onDoubleClick="dblclick";u.onMouseMove="mousemove"}u.onMouseDown=e.features.eventNames.mouseDownName;u.onMouseUp=e.features.eventNames.mouseUpName;var a=function(t,n){var i=e.repeater.applySuffixToElementId(n,"_input");var s=$jobj(i).length?i:n;for(var o in t.interactionMap){var a=u[o];if(!a)continue;r[a](s,function(t){return function(r){e.setjBrowserEvent(r);v(n,e.getEventInfoFromEvent(e.getjBrowserEvent(),false,n),t)}}(t.interactionMap[o]))}};var f=["OnContextMenu","OnKeyUp","OnKeyDown"];var l=["OnFocus","OnResize","OnMouseOut","OnMouseOver"];var c=true;var h=[];var p=function(e){c=e;if(c)h=[$(window).scrollLeft(),$(window).scrollTop()]};var d=function(){if(!e.features.supports.mobile)return true;var t=[$(window).scrollLeft(),$(window).scrollTop()];return c&&h[0]==t[0]&&h[1]==t[1]};var v=e.event.handleEvent=function(t,n,r,i,s){var o=r.description;if(!d()&&o=="OnClick")return;if(L[o]){return}var u=e.getjBrowserEvent();if(!s&&u&&u.originalEvent&&u.originalEvent.handled&&!n.isMasterEvent)return;if(!s&&t&&!e.style.getObjVisible(t)&&e.getTypeFromElementId(t)!="referenceDiagramObject")return;var a=true;if(i||!y(r)){var c=[];var h=[];c[0]=h;var p={};var v=0;for(var g=0;g<r.cases.length;g++){var b=r.cases[g];if(b.isNewIfGroup&&g!=0){v++;h=[];c[c.length]=h}h[h.length]=b;for(var E=0;E<b.actions.length;E++){var S=b.actions[E];if(S.action=="wait")break;if(S.action!="refreshRepeater")continue;for(var x=0;x<S.repeatersToRefresh.length;x++){var T=e.getElementIdsFromPath(S.repeatersToRefresh[x],n)[0];p[T]=v}}}for(var g=0;g<c.length;g++){var N=[];for(var k in p){if(p[k]==g)N[N.length]=k}a=w(n,c[g],N)&&a}}else{m(t,n,r,s);a=false}if(!a&&C[o]){L[C[o]]=true}var A=e.deepCopy(e.action.repeatersToRefresh);while(e.action.repeatersToRefresh.length)e.action.repeatersToRefresh.pop();for(g=0;g<A.length;g++)e.repeater.refreshRepeater(A[g],n);if(u&&u.originalEvent){u.originalEvent.handled=!s&&!a&&l.indexOf(o)==-1;if(u.originalEvent.handled&&f.indexOf(o)!=-1){u.preventDefault()}}};var m=function(t,n,r,i){if(r.cases.length==0)return true;var s=t+"linkBox";$("#"+s).remove();var o=$("<div class='intcases' id='"+s+"'></div>");if(!b(r)){var u=e.eventCopy(n);for(var a=0;a<r.cases.length;a++){var f=$("<div class='intcaselink'>"+r.cases[a].description+"</div>");f.click(function(t){return function(){var n=e.action.dispatchAction(u,r.cases[t].actions);$("#"+s).remove();return n}}(a));o.append(f)}}else{var l=r.description+":<br>";for(var a=0;a<r.cases.length;a++){var c=r.cases[a];l+="&nbsp;&nbsp;"+c.description.replace(/<br>/g,"<br>&nbsp;&nbsp;")+":<br>";for(var h=0;h<c.actions.length;h++){l+="&nbsp;&nbsp;&nbsp;&nbsp;"+c.actions[h].description.replace(/<br>/g,"<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")+"<br>"}}l=l.substring(0,l.length-4);var f=$("<div class='intcaselink'>"+l+"</div>");f.click(function(){v(t,n,r,true,i);$("#"+s).remove();return});o.append(f)}o.mouseleave(function(t){e.legacy.SuppressBubble(t)});$("body").append(o);g(n,s)};var g=function(t,n){var r=window.document.getElementById(n);r.style.top=t.pageY;var i=t.pageX;r.style.left=i;e.visibility.SetVisible(r,true);e.legacy.BringToFront(n,true);e.legacy.RefreshScreen()};var y=function(t){if(e.document.configuration.linkStyle=="alwaysDisplayTargets")return true;if(e.document.configuration.linkStyle=="neverDisplayTargets")return false;if(t.cases.length==0)return false;if(b(t))return false;if(t.cases.length>=2)return true;return false};var b=function(e){for(var t=0;t<e.cases.length;t++){if(e.cases[t].condition)return true}return false};var w=function(t,n,r){for(var i=0;i<n.length;i++){var s=n[i];if(!s.condition||E(s.condition,t)){for(var o=0;o<s.actions.length;o++){var u=s.actions[o];if(u.action=="wait")break;if(u.action!="refreshRepeater")continue;for(var a=0;a<u.repeatersToRefresh.length;a++){var f=e.getElementIdsFromPath(u.repeatersToRefresh[i],t)[i];var l=r.indexOf(f);if(l!=-1)e.splice(r,l)}}e.action.tryRefreshRepeaters(r,t);e.action.dispatchAction(t,s.actions);return false}}e.action.tryRefreshRepeaters(r,t);return true};var E=function(t,n){return e.expr.evaluateExpr(t,n)};var S=function(e,t,n){if(t=="click")window.document.getElementById(e).style.cursor="pointer";T(e,t,n)};var x=function(t,n,r,i){var s=function(){if(!e.style.IsWidgetDisabled(n))return i.apply(this,arguments);return true};var o=!t[r];if(o)t.bind(r,s);else t[r](s)};var T=function(e,n,r){var i=t[e];if(!i)t[e]=i={};var s=i[n];if(!s)i[n]=s=[];s[s.length]=r};var N=function(e,n,r){var i=window.document.getElementById(e);var s=t[e]&&t[e][n];if(s){for(var o=0;o<s.length;o++)s[o].apply(i,r)}};e.event.getFocusableWidgetOrChildId=function(t){var n=e.repeater.applySuffixToElementId(t,"_img");var r=$jobj(n);var i=e.repeater.applySuffixToElementId(t,"_input");var s=$jobj(i);return s.length>0?i:r.length>0?n:t};var C={};var k={};var L={};var A=function(e){C["OnLongClick"]="OnClick";k["onMouseDown"]="OnClick";for(var t in k){var n=u[t];if(!n)continue;(function(t,n){e.bind(t,function(){L[n]=false})})(n,k[t])}};var O=function(t){A(t);t.each(function(t,n){var i=$jobj(n);if(t.type=="textArea"||t.type=="textBox"||t.type=="checkBox"||t.type=="radioButton"||t.type=="listBox"||t.type=="comboBox"||t.type=="button"||t.type=="imageBox"||t.type=="buttonShape"||t.type=="flowShape"||t.type=="treeNodeObject"||t.type=="tableCell"){var s=$jobj(e.event.getFocusableWidgetOrChildId(n));s.focus(function(){window.lastFocusedControl=n})}if(t.interactionMap){a(t,n)}var o=t.type!="hyperlink"&&t.type!="dynamicPanel"&&t.type!="richTextPanel"&&t.type!="repeater"&&t.type!="checkbox"&&t.type!="radioButton"&&t.type!="treeNodeObject";if(o){i.mouseenter(function(){var t=this.id;var n=e.dynamicPanelManager.parentHandlesStyles(t);if(n&&n.direct)return;if($.inArray(t,r.mouseOverIds)!=-1)return;r.mouseOverIds[r.mouseOverIds.length]=t;if(t==r.mouseOverObjectId)return;r.mouseOverObjectId=t;e.style.SetWidgetHover(t,true);var i=e.style.GetTextIdFromShape(t);if(i)e.annotation.updateLinkLocations(i)}).mouseleave(function(){var t=this.id;var n=e.dynamicPanelManager.parentHandlesStyles(t);if(n&&n.direct)return;e.splice(r.mouseOverIds,$.inArray(t,r.mouseOverIds),1);if(t==r.mouseOverObjectId){r.mouseOverObjectId=""}e.style.SetWidgetHover(t,false);var i=e.style.GetTextIdFromShape(t);if(i)e.annotation.updateLinkLocations(i)});i.bind(e.features.eventNames.mouseDownName,function(){var t=this.id;var n=e.dynamicPanelManager.parentHandlesStyles(t);if(n){b(n.id);if(n.direct)return}r.mouseDownObjectId=t;e.style.SetWidgetMouseDown(this.id,true);e.annotation.updateLinkLocations(e.style.GetTextIdFromShape(t))}).bind(e.features.eventNames.mouseUpName,function(){var t=this.id;var n=e.dynamicPanelManager.parentHandlesStyles(t);if(n){w(n.id);if(n.direct)return}var i=r.mouseDownObjectId;r.mouseDownObjectId="";if(!e.style.ObjHasMouseDown(t))return;e.style.SetWidgetMouseDown(t,false);e.annotation.updateLinkLocations(e.style.GetTextIdFromShape(t))})}var u=undefined;if((t.type=="flowShape"||t.type=="buttonShape"||t.type=="imageBox"||t.type=="dynamicPanel")&&t.selected){if(!u)u=e("#"+n);u.selected(true)}if((t.type=="flowShape"||t.type=="buttonShape"||t.type=="imageBox"||t.type=="dynamicPanel")&&t.disabled){if(!u)u=e("#"+n);u.enabled(false)}if(OS_MAC&&WEBKIT){if(t.type=="comboBox"&&t.disabled){$jobj(e.INPUT(n)).css("color","grayText")}}var f=t.placeholderText==""?true:Boolean(t.placeholderText);if((t.type=="textArea"||t.type=="textBox")&&f){$jobj(e.INPUT(n)).bind("keydown",function(){var t=this.id;var n=t.indexOf("_input");if(n==-1)return;var r=t.substring(0,n);if(!e.placeholderManager.isActive(r))return;e.placeholderManager.updatePlaceholder(r,false,true)}).bind("keyup",function(){var t=this.id;var n=t.indexOf("_input");if(n==-1)return;var r=t.substring(0,n);if(e.placeholderManager.isActive(r))return;if(!$jobj(t).val()){e.placeholderManager.updatePlaceholder(r,true);e.placeholderManager.moveCaret(t,0)}}).bind("focus",function(){e.placeholderManager.moveCaret(this.id)}).bind("mousedown",function(){e.placeholderManager.moveCaret(this.id)}).bind("mouseup",function(){e.placeholderManager.moveCaret(this.id)}).bind("blur",function(){var t=this.id;var n=t.indexOf("_input");if(n==-1)return;var r=t.substring(0,n);if($jobj(t).val())return;e.placeholderManager.updatePlaceholder(r,true)});e.placeholderManager.registerPlaceholder(n,t.placeholderText,$jobj(e.INPUT(n)).attr("type")=="password");e.placeholderManager.updatePlaceholder(n,!$jobj(e.repeater.applySuffixToElementId(n,"_input")).val())}if(t.submitButton){i.keyup(function(r){if(r.keyCode=="13"){var i=e.repeater.getScriptIdFromElementId(n);var s=e.deepCopy(t.submitButton.path);s[s.length]=t.submitButton.id;var o=e.repeater.getItemIdFromElementId(n);var u=e.getScriptIdFromPath(s,i);if(o&&e.getParentRepeaterFromScriptId(u)==e.getParentRepeaterFromScriptId(i)){u=e.repeater.createElementId(u,o)}var a=e.INPUT(u);if($jobj(a).length)u=a;e.setjBrowserEvent(r);e.event.fireClick(u)}}).keydown(function(e){if(e.keyCode=="13"){e.preventDefault()}})}if(t.type=="textArea"||t.type=="textBox"||t.type=="listBox"||t.type=="comboBox"||t.type=="checkBox"||t.type=="radioButton"){i.bind(e.features.eventNames.mouseDownName,function(e){e.originalEvent.donotdrag=true})}if(e.features.supports.mobile){i.bind(e.features.eventNames.mouseDownName,function(){p(true)});if(t.type=="dynamicPanel"){i.scroll(function(){p(false)})}}if(t.type=="treeNodeObject"&&!(t.interactionMap&&t.interactionMap.onClick)){i.css("cursor","default")}if(t.interactionMap&&t.interactionMap.onClick){if(i)i.css("cursor","pointer")}if(t.type=="dynamicPanel"){i.children().each(function(){var t=this.id.split("_");var n=t[t.length-1].substring(5);if(n!=0)e.visibility.SetVisible(this,false)})}if(t.type=="treeNodeObject"){if(i.hasClass("treeroot"))return;var l=n+"_children";var c=i.children('[id="'+l+'"]:first');if(c.length>0){var h="u"+(parseInt(e.repeater.getScriptIdFromElementId(n).substring(1))+1);var d=e.repeater.getItemIdFromElementId(n);if(d)h=e.repeater.createElementId(h,d);if(!$jobj(h).hasClass("ax_image"))h="";e.tree.InitializeTreeNode(n,h,l)}i.click(function(){e.tree.SelectTreeNode(n,true)})}if(t.type=="menuObject"){if(i.hasClass("sub_menu")){var m=e.getElementIdFromPath([t.parentCellId],{relativeTo:n});e.menu.InitializeSubmenu(n,m)}}if(t.type=="dynamicPanel"&&t.propagate){i.mouseenter(function(){var e=this.id;g(e)}).mouseleave(function(){var e=this.id;y(e)}).bind(e.features.eventNames.mouseDownName,function(){var e=this.id;b(e)}).bind(e.features.eventNames.mouseUpName,function(){var e=this.id;w(e)})}var g=function(t,n){var i=e.dynamicPanelManager.parentHandlesStyles(t);if(i){g(i.id,true);if(i.direct)return}if($.inArray(t,r.mouseOverIds)!=-1)return;if(!n)r.mouseOverIds[r.mouseOverIds.length]=t;if(t==r.mouseOverObjectId)return;r.mouseOverObjectId=t;e.dynamicPanelManager.propagateMouseOver(t,true)};var y=function(t,n){var i=e.dynamicPanelManager.parentHandlesStyles(t);if(i){y(i.id,true);if(i.direct)return}var s=$.inArray(t,r.mouseOverIds);if(s!=-1&&n)return;e.splice(r.mouseOverIds,s,1);if(t==r.mouseOverObjectId){r.mouseOverObjectId=""}e.dynamicPanelManager.propagateMouseOver(t,false)};var b=function(t){var n=e.dynamicPanelManager.parentHandlesStyles(t);if(n){b(n.id);if(n.direct)return}r.mouseDownObjectId=t;e.dynamicPanelManager.propagateMouseDown(t,true)};var w=function(t){var n=e.dynamicPanelManager.parentHandlesStyles(t);if(n){w(n.id);if(n.direct)return}r.mouseDownObjectId="";e.dynamicPanelManager.propagateMouseDown(t,false)};if(t.type=="treeNodeObject"){i.click(function(){N(this.id,"click",arguments);return false}).each(function(){if(!this.style.cursor){this.style.cursor="default"}})}var E=t.interactionMap;if(t.type=="dynamicPanel"&&E&&(E.onDragStart||E.onDrag||E.onDragDrop||E.onSwipeLeft||E.onSwipeRight||E.onSwipeUp||E.onSwipeDown)){i.bind(e.features.eventNames.mouseDownName,function(t){e.drag.StartDragWidget(t.originalEvent,n)})}if(t.type=="dynamicPanel"&&E&&E.onScroll){var S=t.diagrams;for(var T=0;T<S.length;T++){var C=e.repeater.applySuffixToElementId(n,"_state"+T);(function(t){x($("#"+t),n,"scroll",function(t){e.setjBrowserEvent(t);v(n,e.getEventInfoFromEvent(e.getjBrowserEvent(),false,n),E.onScroll)})})(C)}}if(E&&E.onMouseHover){var k=1e3;var L=0;var A;i.mouseenter(function(t){e.setjBrowserEvent(t);A=e.getEventInfoFromEvent(e.getjBrowserEvent(),false,n);(function(e){window.setTimeout(function(){if(e==L)H(n,"onMouseHover",false,A,true)},k)})(L)}).mouseleave(function(t){e.setjBrowserEvent(t);L++}).mousemove(function(t){e.setjBrowserEvent(t);A=e.getEventInfoFromEvent(e.getjBrowserEvent(),false,n)})}if(E&&E.onLongClick){var O=750;var M=0;i.bind(e.features.eventNames.mouseDownName,function(t){(function(r){e.setjBrowserEvent(t);var i=e.getEventInfoFromEvent(e.getjBrowserEvent(),false,n);window.setTimeout(function(){if(r==M)H(n,"onLongClick",false,i,true)},O);if(t.preventDefault)t.preventDefault()})(M)}).bind(e.features.eventNames.mouseUpName,function(t){e.setjBrowserEvent(t);M++})}if(e.event.HasSelectionChanged(t)){i.bind("change",function(t){e.setjBrowserEvent(t);H(n,"onSelectionChange")})}r.initKeyEvents(i);if(e.event.HasTextChanged(t)){var _=$jobj(e.INPUT(n));e.updateElementText(n,_.val());_.bind("keydown",function(t){e.setjBrowserEvent(t);e.event.TryFireTextChanged(n)}).bind("keyup",function(t){e.setjBrowserEvent(t);e.event.TryFireTextChanged(n)})}if(t.type=="checkbox"||t.type=="radioButton"){var D=$jobj(e.INPUT(n));if(t.type=="radioButton"&&D.prop("checked")){e.updateRadioButtonSelected(D.attr("name"),n)}i.bind("change",function(t){e.setjBrowserEvent(t);F(n,true)})}var P=E&&(E.onClick||E.onDoubleClick);var B=E&&E.onMouseMove;r.initMobileEvents(P?i:$(),B?i:$(),n);if(t.type=="hyperlink"){i.mouseenter(function(){var t=this.id;if(r.mouseOverIds.indexOf(t)!=-1)return true;r.mouseOverIds[r.mouseOverIds.length]=t;var n=r.mouseOverObjectId;if(n&&e.style.IsWidgetDisabled(n))return true;e.style.SetLinkHover(t);var i=N(t,"mouseenter",arguments);e.annotation.updateLinkLocations(e.style.GetTextIdFromLink(t));return i}).mouseleave(function(){var t=this.id;e.splice(r.mouseOverIds,r.mouseOverIds.indexOf(t),1);var n=r.mouseOverObjectId;if(n&&e.style.IsWidgetDisabled(n))return true;e.style.SetLinkNotHover(t);var i=N(t,"mouseleave",arguments);e.annotation.updateLinkLocations(e.style.GetTextIdFromLink(t));return i}).bind(e.features.eventNames.mouseDownName,function(){var t=this.id;var n=r.mouseOverObjectId;if(e.style.IsWidgetDisabled(n))return undefined;if(n)e.style.SetWidgetMouseDown(n,true);e.style.SetLinkMouseDown(t);e.annotation.updateLinkLocations(e.style.GetTextIdFromLink(t));return false}).bind(e.features.eventNames.mouseUpName,function(){var t=this.id;var n=r.mouseOverObjectId;if(n&&e.style.IsWidgetDisabled(n))return;if(n)e.style.SetWidgetMouseDown(n,false);e.style.SetLinkNotMouseDown(t);e.annotation.updateLinkLocations(e.style.GetTextIdFromLink(t))}).click(function(){var t=this.id;var n=r.mouseOverObjectId;if(n&&e.style.IsWidgetDisabled(n))return undefined;return N(t,"click",arguments)})}if(t.type=="inlineFrame"){var j=t.target;var I="";if(j.includeVariables&&j.url){var q=j.url;I=q.toLowerCase().indexOf("http://")==-1?e.globalVariableProvider.getLinkUrl(q):q}else if(j.urlLiteral){I=e.expr.evaluateExpr(j.urlLiteral,e.getEventInfoFromEvent(undefined,true,n),true)}if(I)$jobj(e.INPUT(n)).attr("src",I)}})};e.initializeObjectEvents=O;(function(){var t={};t.ctrl=false;t.alt=false;t.shift=false;t.keyCode=0;e.event.keyState=function(){return e.deepCopy(t)};var n=[16,17,18];e.event.initKeyEvents=function(r){r.keydown(function(r){var i=this.id;t.ctrl=r.ctrlKey;t.alt=r.altKey;t.shift=r.shiftKey;if(n.indexOf(r.keyCode)==-1)t.keyCode=r.keyCode;e.setjBrowserEvent(r);if(!i)z("onKeyDown",undefined,false,["page","referenceDiagramObject","dynamicPanel","repeater"],["page","referenceDiagramObject"]);else H(i,"onKeyDown",false,undefined,true)});r.keyup(function(r){var i=this.id;e.setjBrowserEvent(r);if(!i)z("onKeyUp",undefined,false,["page","referenceDiagramObject","dynamicPanel","repeater"],["page","referenceDiagramObject"]);else H(i,"onKeyUp",false,undefined,true);t.ctrl=r.ctrlKey;t.alt=r.altKey;t.shift=r.shiftKey;if(n.indexOf(r.keyCode)==-1)t.keyCode=0})}})();(function(){var t=25;var n=t*t;var i=500;var s;var o;r.initMobileEvents=function(t,r,u){if(!e.features.supports.mobile)return;t.bind("touchstart",function(t){var n=t.originalEvent&&t.originalEvent.changedTouches&&t.originalEvent.changedTouches[0];if(!n)return;s=[n.pageX,n.pageY];var r=(new Date).getTime();if(r-o<i){var a=u===""?e.pageData.page:e.getObjectFromElementId(u);var f=a&&a.interactionMap&&a.interactionMap["onDoubleClick"];if(f)t.preventDefault()}}).bind("touchend",function(t){var r=t.originalEvent&&t.originalEvent.changedTouches&&t.originalEvent.changedTouches[0];if(!r||!s)return;var a=[r.pageX,r.pageY];var f=a[0]-s[0];var l=a[1]-s[1];if(f*f+l*l<n){e.setjBrowserEvent(t);H(u,"onClick",false,undefined,true);var c=(new Date).getTime();if(c-o<i){H(u,"onDoubleClick",false,undefined,true);if(t.originalEvent&&t.originalEvent.handled)t.preventDefault()}o=c}});r.bind("touchmove",function(t){e.setjBrowserEvent(t);H(u,"onMouseMove",false,undefined,true);if(t.originalEvent&&t.originalEvent.handled)t.preventDefault()})}})();(function(){var t=25;var n=t*t;var i;r.attachClick=function(t,r){if(!e.features.supports.mobile){t.click(r);return}$(t).bind("touchstart",function(e){var t=e.originalEvent&&e.originalEvent.changedTouches&&e.originalEvent.changedTouches[0];if(!t)return;i=[t.pageX,t.pageY]});$(t).bind("touchend",function(e){var t=e.originalEvent&&e.originalEvent.changedTouches&&e.originalEvent.changedTouches[0];if(!t)return;var s=[t.pageX,t.pageY];var o=s[0]-i[0];var u=s[1]-i[1];if(o*o+u*u<n){r()}})}})();(function(){r.fireClick=function(t){if(!e.features.supports.mobile){$("#"+t).click();return}H(t,"onClick",false,undefined,true)}})();var M=e.mouseLocation={x:0,y:0};var _=e.lastMouseLocation={x:0,y:0};var D=function(t,n){if(!t)return;if(IE&&typeof t.type=="unknown")return;if(t.type!="mousemove"&&t.type!="touchstart"&&t.type!="touchmove"&&t.type!="touchend")return;var r;var i;if(IE){r=t.clientX+$("html").scrollLeft();i=t.clientY+$("html").scrollTop()}else{r=t.pageX;i=t.pageY}var s=$("body");if(s.css("position")=="relative")r=Math.round(r-Number(s.css("left").replace("px",""))-Math.max(0,($(window).width()-s.width())/2));if(M.x==r&&M.y==i)return;_.x=M.x;_.y=M.y;M.x=r;M.y=i;e.geometry.tick(M.x,M.y,n)};r.updateMouseLocation=D;var P=function(t){var n=r.mouseOverIds;if(n.length==0)return;var i=$jobj(t);for(var s=n.length-1;s>=0;s--){var o=n[s];if(i.find("#"+o).length){e.splice(n,$.inArray(o,n),1);e.style.SetWidgetMouseDown(o,false);e.style.SetWidgetHover(o,false)}}};r.leavingState=P;var H=function(t,n,r,i,s){var o=t===""?e.pageData.page:e.getObjectFromElementId(t);var u=o&&o.interactionMap&&o.interactionMap[n];if(!u)return;i=i||e.getEventInfoFromEvent(e.getjBrowserEvent(),r,t);v(t,i,u,false,!s)};e.event.raiseSyntheticEvent=H;var B=function(t,n){var r=e.getObjectFromScriptId(t);var i=r&&r.interactionMap&&r.interactionMap[n];return Boolean(i)};e.event.hasSyntheticEvent=B;var j=function(){e.repeater.load();r.initKeyEvents($(window));O(e("*"));W();$(".basiclink").click(function(){return false})};r.initialize=j;e.event.HasTextChanged=function(e){if(e.type!="textBox"&&e.type!="textArea")return false;var t=e.interactionMap;return t&&t.onTextChange};e.event.TryFireTextChanged=function(t){var n=$jobj(e.repeater.applySuffixToElementId(t,"_input"));if(!e.hasElementTextChanged(t,n.val()))return;e.updateElementText(t,n.val());e.event.raiseSyntheticEvent(t,"onTextChange")};e.event.HasSelectionChanged=function(e){if(e.type!="listBox"&&e.type!="comboBox")return false;var t=e.interactionMap;return t&&t.onSelectionChange};e.event.HasCheckedChanged=function(e){if(e.type!="checkbox"&&e.type!="radioButton")return false;var t=e.interactionMap;return t&&t.onCheckedChange};var F=e.event.TryFireCheckChanged=function(t,n){var r=$obj(t).type=="radioButton";if(r){if(!n){e.updateRadioButtonSelected($jobj(e.INPUT(t)).attr("name"),undefined)}else{var i=e.updateRadioButtonSelected($jobj(e.INPUT(t)).attr("name"),t);if(i==t)return;if(i)e.event.raiseSyntheticEvent(i,"onCheckedChange")}}e.event.raiseSyntheticEvent(t,"onCheckedChange")};var I=function(e,t,n){z("onLoad",e,true,["page","referenceDiagramObject","dynamicPanel"],["page","referenceDiagramObject","dynamicPanel","repeater"],t,n)};e.loadDynamicPanelsAndMasters=I;var q=function(){z("onAdaptiveViewChange",undefined,true,["page","referenceDiagramObject","dynamicPanel"],["page","referenceDiagramObject"]);R()};e.viewChangePageAndMasters=q;var R=function(){try{if(window.name=="mainFrame"||!CHROME_5_LOCAL&&window.parent.$&&window.parent.$("#mainFrame").length>0){$axure.messageCenter.postMessage("adaptiveViewChange",e.adaptive.currentViewId)}}catch(t){}};e.postAdaptiveViewChanged=R;var U=e.postResize=function(t){e.setjBrowserEvent(t);return z("onResize",undefined,false,["page","referenceDiagramObject","dynamicPanel","repeater"],["page","referenceDiagramObject"])};var z=function(t,n,r,i,s,o,u){var a=t=="onLoad";if(!n){if(s.indexOf("page")!=-1){var f=e.pageData.page.interactionMap;var l=e.getEventInfoFromEvent(e.getjBrowserEvent(),a,"");var c=f&&f[t];if(c)v("",l,c,a,r)}if(i.indexOf("page")!=-1)z(t,e.pageData.page.diagram.objects,r,i,s);return}if(!o)o=[];var h=[];for(var p=0;p<o.length;p++)h[p]=o[p];for(var d=0;d<n.length;d++){var m=n[d];if(m.type!="referenceDiagramObject"&&m.type!="dynamicPanel"&&m.type!="repeater")continue;h[o.length]=m.id;var g=e.getScriptIdFromPath(h);g=e.repeater.createElementId(g,u);if(m.type=="referenceDiagramObject"){if(s.indexOf("referenceDiagramObject")!=-1){var y=e.pageData.masters[m.masterId].interactionMap[t];if(y){var b=e.getEventInfoFromEvent(e.getjBrowserEvent(),a,g);b.isMasterEvent=true;v(g,b,y,a,r)}}if(i.indexOf("referenceDiagramObject")!=-1)z(t,e.pageData.masters[m.masterId].diagram.objects,r,i,s,h,u)}else if(m.type=="dynamicPanel"){if(s.indexOf("dynamicPanel")!=-1)e.event.raiseSyntheticEvent(g,t,a,undefined,!r);if(i.indexOf("dynamicPanel")!=-1){var w=m.diagrams;for(var p=0;p<w.length;p++){z(t,w[p].objects,r,i,s,o,u)}}}else if(m.type=="repeater"){if(s.indexOf("repeater")!=-1)e.event.raiseSyntheticEvent(g,t,a,undefined,!r);if(i.indexOf("repeater")!=-1){var E=e.getItemIdsForRepeater(g);for(var p=0;p<E.length;p++){z(t,m.objects,r,i,s,o,E[p])}}}}};(function(){})();var W=function(){var t={onScroll:[window,"scroll"],onContextMenu:[window,"contextmenu"]};var n=$(window);if(!e.features.supports.mobile){t.onClick=["html","click"];t.onDoubleClick=["html","dblclick"];t.onMouseMove=["html","mousemove"]}else{r.initMobileEvents(n,n,"");n.bind(e.features.eventNames.mouseDownName,D);n.bind(e.features.eventNames.mouseUpName,function(e){D(e,true)});n.scroll(function(){p(false)});n.bind(e.features.eventNames.mouseDownName,function(){p(true)})}n.bind(e.features.eventNames.mouseMoveName,D);n.scroll(e.flyoutManager.reregisterAllFlyouts);for(key in t){if(!t.hasOwnProperty(key))continue;(function(n){var r=t[n];$(r[0])[r[1]](function(t){e.setjBrowserEvent(t);return z(n,undefined,false,["page","referenceDiagramObject","dynamicPanel","repeater"],["page","referenceDiagramObject"])})})(key)}};r.pageLoad=W})
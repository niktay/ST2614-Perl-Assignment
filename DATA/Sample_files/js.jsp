 
 
 
 

 
// Copyright IBM Corp. 2002, 2010  All Rights Reserved.
var asynchContextMenuDebug=-1;var asynchContextMenuMouseOverIndicator="";var portletIdMap=new Object();function asynchContextMenuOnMouseClickHandler(uniqueID, isLTR, urlToMenuContents, menuBorderStyle, menuTableStyle, menuItemStyle, menuItemSelectedStyle, emptyMenuText, loadingImage)
{
var menuID="contextMenu_" + uniqueID;var menu=getContextMenu(menuID);if (menu == null)
{
asynchContextMenu_menuCurrentlyLoading=uniqueID;if (loadingImage)
{
setLoadingImage(loadingImage);}menu=createContextMenu(menuID, isLTR, null, menuBorderStyle, menuTableStyle, emptyMenuText);loadAsynchContextMenu(uniqueID, urlToMenuContents, isLTR, menuItemStyle, menuItemSelectedStyle, '', true);}else
{
if (asynchContextMenu_menuCurrentlyLoading == uniqueID)
{
return;}showContextMenu(menuID, document.getElementById(uniqueID));};};var asynchContextMenu_originalMenuImgElementSrc;function setLoadingImage(img)
{
asynchContextMenu_originalMenuImgElementSrc=document.getElementById(asynchContextMenu_menuCurrentlyLoading + "_img").src;document.getElementById(asynchContextMenu_menuCurrentlyLoading + "_img").src=img;};function clearLoadingImage()
{
document.getElementById(asynchContextMenu_menuCurrentlyLoading + "_img").src=asynchContextMenu_originalMenuImgElementSrc;};function loadAsynchContextMenu(uniqueID, url, isLTR, menuItemStyle, menuItemSelectedStyle, emptyMenuText, showMenu, onMenuAffordanceShowHandler)
{
asynchDebug('ENTRY loadAsynchContextMenu p1=' + uniqueID + '; p2=' + url + '; p3=' + isLTR + '; p4=' + isLTR);var menuID="contextMenu_" + uniqueID;var dialogTag=null;var ID=uniqueID + '_DIV';if (document.getElementById(ID) != null)
{
closeMenu(ID);return;}dialogTag=document.createElement("DIV");dialogTag.style.position="absolute";if (asynchContextMenuDebug < 2)
{
dialogTag.style.left="0px";dialogTag.style.top="-100px";dialogTag.style.visibility="hidden";}if (asynchContextMenuDebug >= 2 || asynchContextMenuDebug == 999)
{
dialogTag.style.left="100px";dialogTag.style.top="100px";dialogTag.style.visibility="visible";}dialogTag.id=ID;var styleString='null';if (menuItemStyle != null)
{
styleString="'" + menuItemStyle + "'";}if (menuItemSelectedStyle != null)
{
styleString=styleString + ", '" + menuItemSelectedStyle + "'";}else
{
styleString=styleString + ", null";}dialogTag.innerHTML='<iframe id="' + menuID + '" name="' + ID + '_IFRAME" src="' + url + '" onload="buildAndDisplayMenu(this.id, this.name, ' + styleString + ', ' + showMenu + ' , \''+ onMenuAffordanceShowHandler + '\'); return false;" ></iframe>';document.body.appendChild(dialogTag);asynchDebug('EXIT createDynamicElements');};function buildAndDisplayMenu(menuID, iframeID, menuItemStyle, menuItemSelectedStyle, showMenu, onMenuAffordanceShowHandler)
{
asynchDebug('ENTRY buildAndDisplayMenu p1=' + menuID + '; p2=' + iframeID + '; p3=' + showMenu + '; p4=' + onMenuAffordanceShowHandler);var menu=getContextMenu(menuID);clearLoadingImage();asynchContextMenu_menuCurrentlyLoading=null;if (menu == null)
{
return false;}index=iframeID.indexOf("_IFRAME");var divID=iframeID.substring(0, index);index2=divID.indexOf("_DIV");var uniqueID=divID.substring(0, index2);asynchDebug('divID=' + divID);asynchDebug('uniqueID=' + uniqueID);var frame, c=-1, done=false;while ((c + 1) < window.frames.length && !done)
{
c=c+1;try
{
done=(window.frames[c].name == iframeID);}catch (e)
{
};};if (window.frames[c].getMenuContents)
{
contents=window.frames[c].getMenuContents();}else
{
return false;};for (i=0; i < contents.length; i=i+3)
{
asynchDebug2('Adding item: ' + contents[i+1]);asynchDebug2('URL: ' + contents[i]);if (contents[i])
{
asynchDebug2('url length: ' + contents[i].length);}asynchDebug2('icon: ' + contents[i+2]);if (contents[i] && contents[i].length != 0)
{
var icon=null;if (contents[i+2] && contents[i+2].length != 0)
{
icon=contents[i+2];}menu.add(new UilMenuItem(contents[i+1], true, '', contents[i], null, icon, null, menuItemStyle, menuItemSelectedStyle));}};var target=document.getElementById(uniqueID);asynchDebug('EXIT buildAndDisplayMenu');if (showMenu == null || showMenu == true)
{
showContextMenu(menuID, target);if (menuID.substring(0, 17)=="contextMenu_menu_") {menu.menuTag.style.zIndex=999;}return;}};function createDynamicElements(uniqueID, url, menuID, menuItemStyle, menuItemSelectedStyle)
{
asynchDebug('ENTRY createDynamicElements p1=' + uniqueID + '; p2=' + url + '; p3=' + menuID);var dialogTag=null;var ID=uniqueID + '_DIV';if (document.getElementById(ID) != null)
{
closeMenu(ID);return;}dialogTag=document.createElement("DIV");dialogTag.style.position="absolute";if (asynchContextMenuDebug < 2)
{
dialogTag.style.left="0px";dialogTag.style.top="-100px";dialogTag.style.visibility="hidden";}if (asynchContextMenuDebug >= 2 || asynchContextMenuDebug == 999)
{
dialogTag.style.left="100px";dialogTag.style.top="100px";dialogTag.style.visibility="visible";}dialogTag.id=ID;var styleString='null, null';if (menuItemStyle != null)
{
styleString="'" + menuItemStyle + "'";}if (menuItemSelectedStyle != null)
{
styleString=styleString + ", '" + menuItemSelectedStyle + "'";}else
{
styleString=styleString + ", null";}dialogTag.innerHTML='<iframe id="' + menuID + '" name="' + ID + '_IFRAME" src="' + url + '" onload="buildAndDisplayMenu(this.id, this.name, ' + styleString + '); return false;" ></iframe>';document.body.appendChild(dialogTag);asynchDebug('EXIT createDynamicElements');};function asynchDebug(str)
{
if (asynchContextMenuDebug >= 1 && asynchContextMenuDebug != 999)
{
alert(str);}};function asynchDebug2(str)
{
if (asynchContextMenuDebug >= 0 && asynchContextMenuDebug != 999)
{
alert(str) ;}};function asynchDoFormSubmit(url){
var formElem=document.createElement("form");document.body.appendChild(formElem);formElem.setAttribute("method", "GET");var delimLocation=url.indexOf("?");if (delimLocation >= 0) {
var params=url.substring(delimLocation + 1, url.length);url=url.substring(0, delimLocation);var paramArray=params.split("&");for (var i=0; i < paramArray.length; i++) {
var name=paramArray[i].substring(0, paramArray[i].indexOf("="));var value=paramArray[i].substring(paramArray[i].indexOf("=") + 1, paramArray[i].length);var inputElem=document.createElement("input");inputElem.setAttribute("type", "hidden");inputElem.setAttribute("name", name);inputElem.setAttribute("value", value);formElem.appendChild(inputElem);};}formElem.setAttribute("action", url);formElem.submit();};var asynchContextMenu_menuCurrentlyLoading=null;function menuMouseOver(id, selectedImage)
{
if (asynchContextMenu_menuCurrentlyLoading != null)
return;portletIdMap[id]='menu_'+id+'_img';showAffordance(id, selectedImage);};function menuMouseOut(id, disabledImage)
{
if (asynchContextMenu_menuCurrentlyLoading != null)
return;hideAffordance(id , disabledImage);portletIdMap[id]="";};function showAffordance(id, selectedImage)
{
document.getElementById('menu_'+id).style.cursor='pointer';document.getElementById('menu_'+id+'_img').src=selectedImage;};function hideAffordance(id, disabledImage)
{
document.getElementById('menu_'+id).style.cursor='default';document.getElementById('menu_'+id+'_img').src=disabledImage;};function menuMouseOverThinSkin(id, selectedImage, minimized)
{
if (asynchContextMenu_menuCurrentlyLoading != null)
return;portletIdMap[id]='menu_'+id+'_img';showAffordanceThinSkin(id, selectedImage, minimized);};function menuMouseOutThinSkin(id, disabledImage, minimized)
{
if (asynchContextMenu_menuCurrentlyLoading != null)
return;hideAffordanceThinSkin(id , disabledImage, minimized);portletIdMap[id]="";};function showAffordanceThinSkin(id, selectedImage, minimized)
{
document.getElementById('menu_'+id).style.cursor='pointer';document.getElementById('portletTitleBar_'+id).className='wpsThinSkinContainerBar wpsThinSkinContainerBarBorder';document.getElementById('title_'+id).className='wpsThinSkinDragZoneContainer wpsThinSkinVisible';document.getElementById('menu_'+id+'_img').src=selectedImage;};function hideAffordanceThinSkin(id, disabledImage, minimized)
{
document.getElementById('menu_'+id).style.cursor='default';if (minimized == null || minimized == false){
document.getElementById('portletTitleBar_'+id).className='wpsThinSkinContainerBar';}document.getElementById('title_'+id).className='wpsThinSkinDragZoneContainer wpsThinSkinInvisible';document.getElementById('menu_'+id+'_img').src=disabledImage;};var onmousedownold_;function closeMenu(id, disabledImage)
{
hideCurrentContextMenu();if (portletIdMap[id] == "")
{
hideAffordance(id, disabledImage);}document.onmousedown=onmousedownold_;};function showPortletMenu(id, portletNoActionsText, isRTL, menuPortletURL, disabledImage, loadingImage)
{
if (portletIdMap[id].indexOf(id) < 0)
return;asynchContextMenuOnMouseClickHandler('menu_'+id,!isRTL,menuPortletURL, null, null, null, null, portletNoActionsText, loadingImage);onmousedownold_=document.onmousedown;document.onmousedown=closeMenu;};function accessibleShowMenu(event , id , portletNoActionsText, isRTL, menuPortletURL, loadingImage)
{
if (event.which == 13)
{
asynchContextMenuOnMouseClickHandler('menu_'+id,!isRTL,menuPortletURL, null, null, null, null, portletNoActionsText, loadingImage);}else
{
return true;};};// Copyright IBM Corp. 2002, 2010  All Rights Reserved.
BrowserDimensions.prototype=new Object();BrowserDimensions.prototype.constructor=BrowserDimensions;BrowserDimensions.superclass=null;function BrowserDimensions(){
this.body=document.body;if (this.isStrictDoctype() && !this.isSafari()) {
this.body=document.documentElement;}};BrowserDimensions.prototype.getScrollFromLeft=function(){
return this.body.scrollLeft ;};BrowserDimensions.prototype.getScrollFromTop=function(){
return this.body.scrollTop ;};BrowserDimensions.prototype.getViewableAreaWidth=function(){
return this.body.clientWidth ;};BrowserDimensions.prototype.getViewableAreaHeight=function(){
return this.body.clientHeight ;};BrowserDimensions.prototype.getHTMLElementWidth=function(){
return this.body.scrollWidth ;};BrowserDimensions.prototype.getHTMLElementHeight=function(){
return this.body.scrollHeight ;};BrowserDimensions.prototype.isStrictDoctype=function(){
return (document.compatMode && document.compatMode != "BackCompat");};BrowserDimensions.prototype.isSafari=function(){
return (navigator.userAgent.toLowerCase().indexOf("safari") >= 0);};// Copyright IBM Corp. 2002, 2010  All Rights Reserved.
function ElementJavascriptEventController()
{
this.elements=new Array();this.arrayPosition=0;this.enableAll=enableRegisteredElementsInternal;this.disableAll=disableRegisteredElementsInternal;this.register=registerElementInternal;this.enable=enableRegisteredElementInternal;this.disable=disableRegisteredElementInternal;function enableRegisteredElementsInternal()
{
for (c=0; c < this.arrayPosition; c=c+1)
{
this.elements[c].enable();};};function enableRegisteredElementInternal(id)
{
for (c=0; c < this.arrayPosition; c=c+1)
{
if (this.elements[c].ID == id)
{
this.elements[c].enable();}};};function disableRegisteredElementsInternal()
{
for (c=0; c < this.arrayPosition; c=c+1)
{
this.elements[c].disable();};};function disableRegisteredElementInternal(id)
{
for (c=0; c < this.arrayPosition; c=c+1)
{
if (this.elements[c].ID == id)
{
this.elements[c].disable();}};};function registerElementInternal(HTMLElementID, doNotDisable, optionalOnEnableJavascriptAction)
{
this.elements[this.arrayPosition]=new RegisteredElement(HTMLElementID, doNotDisable, optionalOnEnableJavascriptAction);this.arrayPosition=this.arrayPosition + 1;};};function RegisteredElement(ElementID, doNotDisable, optionalOnEnableJavascriptAction)
{
this.ID=ElementID;this.oldCursor="normal";this.ItemOnMouseDown=null;this.ItemOnMouseUp=null;this.ItemOnMouseOver=null;this.ItemOnMouseOut=null;this.ItemOnMouseClick=null;this.ItemOnBlur=null;this.ItemOnFocus=null;this.ItemOnChange=null;this.onEnableJS=optionalOnEnableJavascriptAction;this.enable=enableInternal;this.disable=disableInternal;function enableInternal()
{
document.getElementById(this.ID).style.cursor=this.oldCursor;if (document.getElementById(this.ID).tagName == "BUTTON")
{
document.getElementById(this.ID).disabled=false;}else
{
document.getElementById(this.ID).onmousedown=this.ItemOnMouseDown;document.getElementById(this.ID).onmouseup=this.ItemOnMouseUp;document.getElementById(this.ID).onmouseover=this.ItemOnMouseOver;document.getElementById(this.ID).onmouseout=this.ItemOnMouseOut;document.getElementById(this.ID).onclick=this.ItemOnMouseClick;document.getElementById(this.ID).onblur=this.ItemOnBlur;document.getElementById(this.ID).onfocus=this.ItemOnFocus;document.getElementById(this.ID).onchange=this.ItemOnChange;};if (this.onEnableJS != null)
{
eval(this.onEnableJS);}};function disableInternal()
{
this.oldCursor=document.getElementById(this.ID).style.cursor;document.getElementById(this.ID).style.cursor="not-allowed";if (document.getElementById(this.ID).tagName == "BUTTON")
{
document.getElementById(this.ID).disabled=true;}else
{
this.ItemOnMouseDown=document.getElementById(this.ID).onmousedown;this.ItemOnMouseUp=document.getElementById(this.ID).onmouseup;this.ItemOnMouseOver=document.getElementById(this.ID).onmouseover;this.ItemOnMouseOut=document.getElementById(this.ID).onmouseout;this.ItemOnMouseClick=document.getElementById(this.ID).onclick;this.ItemOnBlur=document.getElementById(this.ID).onblur;this.ItemOnFocus=document.getElementById(this.ID).onfocus;this.ItemOnChange=document.getElementById(this.ID).onchange;document.getElementById(this.ID).onmousedown=function () { void(0); return false; };document.getElementById(this.ID).onmouseup=function () { void(0); return false; };document.getElementById(this.ID).onmouseover=function () { void(0); return false; };document.getElementById(this.ID).onmouseout=function () { void(0); return false; };document.getElementById(this.ID).onclick=function () { void(0); return false; };document.getElementById(this.ID).onblur=function () { void(0); return false; };document.getElementById(this.ID).onfocus=function () { void(0); return false; };document.getElementById(this.ID).onchange=function () { void(0); return false; };};};if (!doNotDisable)
{
this.disable();}};// Copyright IBM Corp. 2002, 2010  All Rights Reserved.
var wpsFLY_isIE=document.all?1:0;var wpsFLY_isNetscape=document.layers?1:0;var wpsFLY_isMoz=document.getElementById && !document.all;var wpsFLY_minFlyout=0;var wpsFLY_move=15;if (wpsFLY_isIE)
wpsFLY_move=12;var wpsFLY_scrollSpeed=1;var wpsFLY_timeoutID=1;var wpsFLY_fromTop=100;var wpsFLY_leftResize;var wpsFLY_browserDimensions=new BrowserDimensions();var wpsFLY_initFlyoutExpanded=wpsFLY_getInitialFlyoutState();var wpsFLY_state=true;var wpsFLY_currIndex=-1;function wpsFLY_initFlyout(showHidden)
{
wpsFLY_Flyout=new wpsFLY_makeFlyout('wpsFLYflyout');wpsFLY_Flyout.setWidth(wpsFLY_minFlyout);wpsFLY_Flyout.css.overflow='hidden';wpsFLY_Flyout.setLeft(wpsFLY_Flyout.pageWidth() - wpsFLY_minFlyout-1);if (wpsFLY_isNetscape||wpsFLY_isMoz)
scrolled="window.pageYOffset";else if (wpsFLY_isIE)
scrolled="document.body.scrollTop";if (wpsFLY_isNetscape||wpsFLY_isMoz)
wpsFLY_fromTop=wpsFLY_Flyout.css.top;else if (wpsFLY_isIE)
wpsFLY_fromTop=wpsFLY_Flyout.css.pixelTop;if (wpsFLY_isIE) {
window.onscroll=wpsFLY_internalScroll;window.onresize=wpsFLY_internalScroll;}else {
window.onscroll=wpsFLY_internalScroll();}if (showHidden)
wpsFLY_Flyout.css.visibility="hidden";else
wpsFLY_Flyout.css.visibility="visible";if (wpsFLY_initFlyoutExpanded != null)
{
wpsFLY_toggleFlyout(wpsFLY_initFlyoutExpanded, true);}return;};function wpsFLY_initFlyoutLeft(showHidden)
{
wpsFLY_FlyoutLeft=new wpsFLY_makeFlyoutLeft('wpsFLYflyout');if (wpsFLY_isIE) {
wpsFLY_FlyoutLeft.setWidth(wpsFLY_minFlyout);wpsFLY_FlyoutLeft.css.overflow='hidden';wpsFLY_FlyoutLeft.setLeft(0);} else {
wpsFLY_FlyoutLeft.setLeft(wpsFLY_minFlyout - wpsFLY_FlyoutLeft.getWidth()- 4);};if (wpsFLY_isNetscape||wpsFLY_isMoz)
scrolled="window.pageYOffset";else if (wpsFLY_isIE)
scrolled="document.body.scrollTop";if (wpsFLY_isNetscape||wpsFLY_isMoz)
wpsFLY_fromTop=wpsFLY_FlyoutLeft.css.top;else if (wpsFLY_isIE)
wpsFLY_fromTop=wpsFLY_FlyoutLeft.css.pixelTop;if (wpsFLY_isIE) {
window.onscroll=wpsFLY_internalScrollLeft;window.onresize=wpsFLY_internalResizeLeft;} else
window.onscroll=wpsFLY_internalScrollLeft();if (showHidden)
wpsFLY_FlyoutLeft.css.visibility="hidden";else
wpsFLY_FlyoutLeft.css.visibility="visible";if (wpsFLY_initFlyoutExpanded != null)
{
wpsFLY_toggleFlyout(wpsFLY_initFlyoutExpanded, true);}};function wpsFLY_makeFlyout(obj)
{
this.origObject=document.getElementById(obj);if (wpsFLY_isNetscape)
this.css=eval('document.'+obj);else if (wpsFLY_isMoz)
this.css=document.getElementById(obj).style;else if (wpsFLY_isIE)
this.css=eval(obj+'.style');wpsFLY_state=1;this.go=0;if (wpsFLY_isNetscape)
this.width=this.css.document.width;else if (wpsFLY_isMoz)
this.width=document.getElementById(obj).offsetWidth;else if (wpsFLY_isIE)
this.width=eval(obj+'.offsetWidth');this.setWidth=wpsFLY_internalSetWidth;this.getWidth=wpsFLY_internalGetWidth;this.left=wpsFLY_internalGetLeft;this.pageWidth=wpsFLY_internalGetPageWidth;this.setLeft=wpsFLY_internalSetLeft;this.obj=obj + "Object";eval(this.obj + "=this");};function wpsFLY_makeFlyoutLeft(obj)
{
this.origObject=document.getElementById(obj);if (wpsFLY_isNetscape)
this.css=eval('document.'+obj);else if (wpsFLY_isMoz)
this.css=document.getElementById(obj).style;else if (wpsFLY_isIE)
this.css=eval(obj+'.style');wpsFLY_state=1;this.go=0;if (wpsFLY_isNetscape)
this.width=this.css.document.width;else if (wpsFLY_isMoz)
this.width=document.getElementById(obj).offsetWidth;else if (wpsFLY_isIE)
this.width=eval(obj+'.offsetWidth');this.setWidth=wpsFLY_internalSetWidthLeft;this.getWidth=wpsFLY_internalGetWidthLeft;this.left=wpsFLY_internalGetLeft;this.pageWidth=wpsFLY_internalGetPageWidth;this.setLeft=wpsFLY_internalSetLeft;this.obj=obj + "Object";eval(this.obj + "=this");};function wpsFLY_internalGetPageWidth()
{
return wpsFLY_browserDimensions.getViewableAreaWidth();};function wpsFLY_internalSetLeft(value)
{
this.css.left=value + "px";};function wpsFLY_internalSetWidth(value)
{
this.css.width=value + "px";if (navigator.userAgent.indexOf ("Opera") != -1) {
var operaIframe=document.getElementById('wpsFLY_flyoutIFrame');operaIframe.style.width=(value-wpsFLY_minFlyout) + "px" ;}};function wpsFLY_internalSetWidthLeft(value)
{
this.css.width=value + "px";if (navigator.userAgent.indexOf ("Opera") != -1) {
var operaIframe=document.getElementById('wpsFLY_flyoutIFrame');operaIframe.style.width=(value-wpsFLY_minFlyout) + "px" ;}};function wpsFLY_internalGetWidth()
{
if (wpsFLY_isNetscape)
return eval(this.css.document.width);else if (wpsFLY_isMoz||wpsFLY_isIE)
return eval(this.origObject.offsetWidth);};function wpsFLY_internalGetWidthLeft()
{
var width;if (wpsFLY_isNetscape)
width=eval(this.css.document.width);else if (wpsFLY_isMoz||wpsFLY_isIE)
width=eval(this.origObject.offsetWidth);return width;};function wpsFLY_internalGetLeft()
{
if (wpsFLY_isNetscape||wpsFLY_isMoz)
leftfunc=parseInt(this.css.left);else if (wpsFLY_isIE)
leftfunc=eval(this.css.pixelLeft);return leftfunc;};function wpsFLY_internalMoveOut()
{
document.getElementById('wpsFLYflyout').className="portalFlyoutExpanded";if (wpsFLY_Flyout.left() - wpsFLY_move > wpsFLY_Flyout.pageWidth()+ wpsFLY_browserDimensions.getScrollFromLeft() - wpsFLY_Flyout.width) {
var newwidth= wpsFLY_Flyout.getWidth()+wpsFLY_move;wpsFLY_Flyout.setWidth(newwidth);wpsFLY_Flyout.setLeft(wpsFLY_Flyout.left() - wpsFLY_move);wpsFLY_timeoutID=setTimeout("wpsFLY_internalMoveOut()",wpsFLY_scrollSpeed);wpsFLY_Flyout.go=1;} else {
wpsFLY_Flyout.setLeft(wpsFLY_Flyout.pageWidth() + wpsFLY_browserDimensions.getScrollFromLeft() - wpsFLY_Flyout.width);wpsFLY_Flyout.setWidth(wpsFLY_Flyout.width);wpsFLY_Flyout.go=0;wpsFLY_state=0;};};function wpsFLY_internalMoveOutLeft()
{
document.getElementById('wpsFLYflyout').className="portalFlyoutExpanded";if (wpsFLY_isIE) {
if (wpsFLY_FlyoutLeft.getWidth() + wpsFLY_move < wpsFLY_FlyoutLeft.width) {
var newwidth= wpsFLY_FlyoutLeft.getWidth()+wpsFLY_move;wpsFLY_FlyoutLeft.setWidth(newwidth);wpsFLY_timeoutID=setTimeout("wpsFLY_internalMoveOutLeft()",wpsFLY_scrollSpeed);wpsFLY_FlyoutLeft.go=1;} else {
wpsFLY_FlyoutLeft.setLeft(wpsFLY_FlyoutLeft.left());wpsFLY_FlyoutLeft.setWidth(wpsFLY_FlyoutLeft.width);wpsFLY_FlyoutLeft.go=0;wpsFLY_state=0;};} else {
if(wpsFLY_FlyoutLeft.left()+wpsFLY_move < wpsFLY_browserDimensions.getScrollFromLeft()) {
wpsFLY_FlyoutLeft.go=1;wpsFLY_FlyoutLeft.setLeft(wpsFLY_FlyoutLeft.left()+wpsFLY_move);wpsFLY_timeoutID=setTimeout("wpsFLY_internalMoveOutLeft()",wpsFLY_scrollSpeed);} else {
wpsFLY_FlyoutLeft.setLeft(wpsFLY_browserDimensions.getScrollFromLeft());wpsFLY_FlyoutLeft.go=0;wpsFLY_state=0;};};};function wpsFLY_internalMoveIn()
{
if (wpsFLY_Flyout.left() + wpsFLY_move < wpsFLY_Flyout.pageWidth() + wpsFLY_browserDimensions.getScrollFromLeft() - wpsFLY_minFlyout) {
wpsFLY_Flyout.go=1;var newwidth= wpsFLY_Flyout.getWidth()-wpsFLY_move;wpsFLY_Flyout.setWidth(newwidth);wpsFLY_Flyout.setLeft(wpsFLY_Flyout.left()+wpsFLY_move);wpsFLY_timeoutID=setTimeout("wpsFLY_internalMoveIn()",wpsFLY_scrollSpeed);} else {
wpsFLY_Flyout.setWidth(wpsFLY_minFlyout);wpsFLY_Flyout.setLeft(wpsFLY_Flyout.pageWidth() + wpsFLY_browserDimensions.getScrollFromLeft() - wpsFLY_minFlyout);wpsFLY_Flyout.go=0;wpsFLY_state=1;};};function wpsFLY_internalMoveInLeft()
{
if (wpsFLY_isIE) {
if (wpsFLY_FlyoutLeft.getWidth() - wpsFLY_move >  wpsFLY_minFlyout) {
var newwidth= wpsFLY_FlyoutLeft.getWidth() - wpsFLY_move;wpsFLY_FlyoutLeft.setWidth(newwidth);wpsFLY_timeoutID=setTimeout("wpsFLY_internalMoveInLeft()",wpsFLY_scrollSpeed);wpsFLY_FlyoutLeft.go=1;} else {
wpsFLY_FlyoutLeft.setWidth(wpsFLY_minFlyout);wpsFLY_FlyoutLeft.setLeft(wpsFLY_FlyoutLeft.left());wpsFLY_FlyoutLeft.go=0;wpsFLY_state=1;};} else {
if(wpsFLY_FlyoutLeft.left()>-wpsFLY_FlyoutLeft.width+wpsFLY_minFlyout) {
wpsFLY_FlyoutLeft.go=1;wpsFLY_FlyoutLeft.setLeft(wpsFLY_FlyoutLeft.left()-wpsFLY_move);wpsFLY_timeoutID=setTimeout("wpsFLY_internalMoveInLeft()",wpsFLY_scrollSpeed);} else {
wpsFLY_FlyoutLeft.setLeft(wpsFLY_minFlyout - wpsFLY_FlyoutLeft.getWidth()- 4);wpsFLY_FlyoutLeft.go=0;wpsFLY_state=1;};};};function wpsFLY_internalScroll() {
if (!wpsFLY_Flyout.go) {
if (wpsFLY_state==1) {
wpsFLY_Flyout.setLeft(wpsFLY_browserDimensions.getScrollFromLeft() + wpsFLY_browserDimensions.getViewableAreaWidth() - wpsFLY_minFlyout);} else {
wpsFLY_Flyout.setLeft(wpsFLY_browserDimensions.getScrollFromLeft() + wpsFLY_browserDimensions.getViewableAreaWidth() - wpsFLY_Flyout.width);};}if (wpsFLY_isNetscape||wpsFLY_isMoz)
setTimeout('wpsFLY_internalScroll()',20);};function wpsFLY_internalScrollLeft() {
if (!wpsFLY_FlyoutLeft.go) {
if (wpsFLY_state==1) {
if (wpsFLY_isIE) {
if (wpsFLY_leftResize == null) {
wpsFLY_leftResize=wpsFLY_browserDimensions.getScrollFromLeft();}wpsFLY_FlyoutLeft.setWidth(wpsFLY_minFlyout);wpsFLY_FlyoutLeft.css.overflow='hidden';wpsFLY_FlyoutLeft.setLeft(wpsFLY_browserDimensions.getScrollFromLeft() - wpsFLY_leftResize);} else {
wpsFLY_FlyoutLeft.setLeft(wpsFLY_minFlyout + wpsFLY_browserDimensions.getScrollFromLeft() - wpsFLY_FlyoutLeft.getWidth() - 4);};}}if (wpsFLY_isNetscape||wpsFLY_isMoz)
setTimeout('wpsFLY_internalScrollLeft()',20);};function wpsFLY_internalResizeLeft(){
if (wpsFLY_isIE) {
wpsFLY_leftResize=wpsFLY_browserDimensions.getScrollFromLeft(); - wpsFLY_browserDimensions.getViewableAreaWidth();}};function wpsFLY_moveOutFlyout(skipSlide)
{
if (this.wpsFLY_Flyout != null)
{
if (wpsFLY_state && !skipSlide) {
clearTimeout(wpsFLY_timeoutID);wpsFLY_internalMoveOut();}if (wpsFLY_state && skipSlide)
{
wpsFLY_Flyout.setLeft(wpsFLY_Flyout.pageWidth() + document.body.scrollLeft - wpsFLY_Flyout.width);wpsFLY_Flyout.setWidth(wpsFLY_Flyout.width);wpsFLY_Flyout.go=0;wpsFLY_state=0;document.getElementById('wpsFLYflyout').className="portalFlyoutExpanded";}}if (this.wpsFLY_FlyoutLeft != null)
{
if (wpsFLY_state && !skipSlide) {
clearTimeout(wpsFLY_timeoutID);wpsFLY_internalMoveOutLeft();}if (wpsFLY_state && skipSlide)
{
if (wpsFLY_isIE)
{
wpsFLY_FlyoutLeft.setLeft(wpsFLY_FlyoutLeft.left());wpsFLY_FlyoutLeft.setWidth(wpsFLY_FlyoutLeft.width);wpsFLY_FlyoutLeft.go=0;wpsFLY_state=0;}else
{
wpsFLY_FlyoutLeft.setLeft(document.body.scrollLeft);wpsFLY_FlyoutLeft.go=0;wpsFLY_state=0;};document.getElementById('wpsFLYflyout').className="portalFlyoutExpanded";}}};function wpsFLY_moveInFlyout()
{
if (this.wpsFLY_Flyout != null)
{
if (!wpsFLY_state) {
clearTimeout(wpsFLY_timeoutID);wpsFLY_internalMoveIn();}}if (this.wpsFLY_FlyoutLeft != null)
{
if (!wpsFLY_state) {
clearTimeout(wpsFLY_timeoutID);wpsFLY_internalMoveInLeft();}}document.getElementById('wpsFLYflyout').className="portalFlyoutCollapsed";};function wpsFLY_toggleFlyout(index, skipSlide)
{
if(flyOut[index] != null){
var checkIndex=index;var prevIndex=wpsFLY_getCurrIndex();if(checkIndex==prevIndex){
if(flyOut[index].active==true){
flyOut[index].active=false;document.getElementById("toolBarIcon"+prevIndex).src=flyOut[prevIndex].icon;document.getElementById("toolBarIcon"+prevIndex).alt=flyOut[prevIndex].altText;document.getElementById("toolBarIcon"+prevIndex).title=flyOut[prevIndex].altText;}else{
flyOut[index].active=true;document.getElementById("toolBarIcon"+index).src=flyOut[index].activeIcon;document.getElementById("toolBarIcon"+index).alt=flyOut[index].activeAltText;document.getElementById("toolBarIcon"+index).title=flyOut[index].activeAltText;};wpsFLY_clearStateCookie();wpsFLY_moveInFlyout();}else{
if(prevIndex > -1){
flyOut[prevIndex].active=false;document.getElementById("toolBarIcon"+prevIndex).src=flyOut[prevIndex].icon;document.getElementById("toolBarIcon"+prevIndex).alt=flyOut[prevIndex].altText;document.getElementById("toolBarIcon"+prevIndex).title=flyOut[prevIndex].altText;}flyOut[index].active=true;document.getElementById("toolBarIcon"+index).src=flyOut[index].activeIcon;document.getElementById("toolBarIcon"+index).alt=flyOut[index].activeAltText;document.getElementById("toolBarIcon"+index).title=flyOut[index].activeAltText;wpsFLY_setCurrIndex(index);document.getElementById("wpsFLY_flyoutIFrame").src=flyOut[index].url;};if(wpsFLY_state){
wpsFLY_setStateCookie(index);wpsFLY_moveOutFlyout(skipSlide);}}};function wpsFLY_getCurrIndex()
{
return wpsFLY_currIndex;};function wpsFLY_setCurrIndex(index)
{
wpsFLY_currIndex=index;};function wpsFLY_setStateCookie(index)
{
document.cookie='portalOpenFlyout=' + index + '; path=/;';};function wpsFLY_clearStateCookie()
{
document.cookie='portalOpenFlyout=null; expires=Wed, 1 Jan 2003 11:11:11 UTC; path=/;';};function wpsFLY_onloadShow(isRTL)
{
if (this.wpsFLY_minFlyout != null) {
var bodyObj=document.getElementById("FLYParent");if (bodyObj != null) {
var showHidden=false;if (isRTL) {
bodyObj.onload=wpsFLY_initFlyoutLeft(showHidden);} else {
bodyObj.onload=wpsFLY_initFlyout(showHidden);};}}};function wpsFLY_markupLoop(flyOut)
{
for(arrayIndex=0; arrayIndex < flyOut.length; arrayIndex++){
if(flyOut[arrayIndex].url != "" && flyOut[arrayIndex].url != null){
document.write('<a tabIndex="5" class="toolbarLink" id="toolBarLink'+arrayIndex+'" href="javascript:void(0);" onclick="wpsFLY_toggleFlyout('+arrayIndex+'); return false;" >');document.write('<img src="'+flyOut[arrayIndex].icon+'" id="toolBarIcon'+arrayIndex+'" title="'+flyOut[arrayIndex].altText+'" border="0" alt="'+flyOut[arrayIndex].altText+'" onmouseover="this.src=flyOut['+arrayIndex+'].hoverIcon;" onmouseout="if (flyOut['+arrayIndex+'].active) {this.src=flyOut['+arrayIndex+'].activeIcon;} else this.src=flyOut['+arrayIndex+'].icon;" />');document.write('</a>');if (javascriptEventController)
{
javascriptEventController.register("toolBarLink" + arrayIndex);javascriptEventController.register("toolBarIcon" + arrayIndex);}}};};function wpsFLY_checkForEmptyExpandedFlyout()
{
var index=wpsFLY_getInitialFlyoutState();if (index != null && flyOut[index] != null)
{
document.getElementById("wpsFLY_flyoutIFrame").src=flyOut[index].url;}};function wpsFLY_getInitialFlyoutState()
{
if (document.cookie.indexOf("portalOpenFlyout=") >= 0)
{
var cookies=document.cookie.split(";");var c=0;while (c < cookies.length && (cookies[c].indexOf("portalOpenFlyout=") == -1))
{
c=c+1;};initCookieValue=cookies[c].substring(18, cookies[c].length);if (initCookieValue != "null")
{
return initCookieValue;}else
{
return null;}}else
{
return null;}};



  
  	
  
        
 

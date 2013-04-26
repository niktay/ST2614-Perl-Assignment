// Copyright IBM Corp. 2002, 2008  All Rights Reserved.
var visibleMenu_=null;var padding_=10;var transImg_="transparent.gif";var arrowNorm_="contextArrowDefault.gif";var arrowSel_="contextArrowSelected.gif";var arrowDis_="contextArrowDisabled.gif";var launchNorm_="contextLauncherDefault.gif";var launchSel_="contextLauncherSelected.gif";var arrowNormRTL_="contextArrowDefault.gif";var arrowSelRTL_="contextArrowSelected.gif";var arrowDisRTL_="contextArrowDisabled.gif";var launchNormRTL_="contextLauncherDefault.gif";var launchSelRTL_="contextLauncherSelected.gif";var arrowWidth_="12";var arrowHeight_="12";var submenuAltText_="+";var noActionsText_="(0)";var hideCurrentMenuTimer_=null;function clearMenuTimer() {
if (null != hideCurrentMenuTimer_) {
clearTimeout(hideCurrentMenuTimer_);hideCurrentMenuTimer_=null;}};function setMenuTimer() {
clearMenuTimer();hideCurrentMenuTimer_=setTimeout('hideCurrentContextMenu()', 2000);};function debug(str) {
};function UilContextMenu(name, isLTR, width) {
this.name=name;this.items=new Array();this.isVisible=false;this.isDismissable=true;this.selectedItem=null;this.isDynamic=false;this.isCacheable=false;this.isEmpty=true;this.isLTR=isLTR;this.hiddenItems=new Array();this.isHyperlinkChild=true;this.launcher=null;this.menuTag=null;this.add=UilContextMenuAdd;this.addSeparator=UilContextMenuAddSeparator;this.show=UilContextMenuShow;this.hide=UilContextMenuHide;this.create=UilContextMenuCreate;this.getMenuItem=UilContextMenuGetMenuItem;this.getSelectedItem=UilContextMenuGetSelectedItem;if (this.name == null) {
this.name="UilContextMenu_" + allMenus_.length;}};function UilContextMenuAdd(item) {
this.items[this.items.length]=item;this.isEmpty=false;};function UilContextMenuAddSeparator() {
var sep=new UilMenuItem();sep.isSeparator=true;this.add(sep);};function UilContextMenuShow(launcher, launchItem) {
if (this.items.length == 0) {
debug('menu is empty!');this.add(new UilMenuItem(noActionsText_, false, "javascript:void(0);"));this.isEmpty=true;}if (this.menuTag == null) {
this.create();}if (this.menuTag != null) {
this.launcher=launcher;if (this.launcher.tagName == "IMG") {
this.isHyperlinkChild=false;this.launcher=this.launcher.parentNode;}var maxX=window.pageXOffset + window.innerWidth;var maxY=window.pageYOffset + window.innerHeight;debug('max: ' + maxX + ', ' + maxY);var menuWidth=getWidth(this.menuTag);var menuHeight=getHeight(this.menuTag);var posX=0;var posY=0;if (launchItem != null) {
var launchTag=launchItem.itemTag;var launchTagWidth=getWidth(launchTag);var parentTag=launchItem.parentMenu.menuTag;var launchOffsetX=getLeft(parentTag);var launchOffsetY=getTop(parentTag);posX=launchOffsetX + getLeft(launchTag) + launchTagWidth;posY=launchOffsetY + getTop(launchTag);if (!this.isLTR) {
posX -= launchTagWidth;posX -= menuWidth;}if (this.isLTR) {
if (posX + menuWidth > maxX) {
var posX1=launchOffsetX - menuWidth;var posX2=maxX - menuWidth;if (0 <= posX1) {
posX=posX1;}else {
posX=Math.max(0, posX2);}}}else {
if (posX < 0) {
var posX1=launchOffsetX + launchTagWidth;if (posX1 + menuWidth < maxX) {
posX=posX1;}else {
posX=Math.min(0, maxX - menuWidth);}}};if (posY + menuHeight > maxY) {
var posY1=maxY - menuHeight;posY=Math.max(0, posY1);}}else {
var launcherLeft=getLeft(this.launcher, true)
posX=launcherLeft + this.launcher.offsetWidth;posY=getTop(this.launcher, true);if (!this.isLTR) {
posX -= this.launcher.offsetWidth;posX -= menuWidth;}if (this.isLTR) {
if (posX + menuWidth > maxX) {
var posX1=launcherLeft - menuWidth;if (posX1 > 0) {
posX=posX1;}else {
posX=Math.max(0, maxX - menuWidth);}}}else {
if (posX < 0) {
var posX1=launcherLeft + this.launcher.offsetWidth;if (posX1 + menuWidth < maxX) {
posX=posX1;}else {
posX=Math.min(0, maxX - menuWidth);}}};if (posY + menuHeight > maxY) {
posY=Math.max(0, maxY - menuHeight);}};debug('show ' + this.name + ': ' + posX + ', ' + posY);this.menuTag.style.left=posX + "px";this.menuTag.style.top=posY + "px";this.menuTag.style.visibility="visible";this.isVisible=true;this.items[0].setSelected(true);this.items[0].anchorTag.focus();var coll=document.getElementsByTagName("SELECT");if (coll!=null)
{
for (i=0; i<coll.length; i++)
{
if (intersect(this.menuTag,coll[i]) == true) {
if (coll[i].style.visibility != "collapse") //@02C
{
coll[i].style.visibility="collapse"; //@02C
this.hiddenItems.push(coll[i]);}}};}coll=document.getElementsByTagName("IFRAME");if (coll!=null)
{
for (i=0; i<coll.length; i++)
{
if (intersect(this.menuTag,coll[i]) == true) {
if (coll[i].style.visibility != "hidden")
{
coll[i].style.visibility="hidden";this.hiddenItems.push(coll[i]);}}};}}};function intersect(obj1 , obj2)
{
var left1=parseInt(document.defaultView.getComputedStyle(obj1, '').getPropertyValue("left"));var right1=left1 + parseInt(document.defaultView.getComputedStyle(obj1, '').getPropertyValue("width"));var top1=parseInt(document.defaultView.getComputedStyle(obj1, '').getPropertyValue("top"));var bottom1=top1 + parseInt(document.defaultView.getComputedStyle(obj1, '').getPropertyValue("height"));var left2=parseInt(document.defaultView.getComputedStyle(obj2, '').getPropertyValue("left"));var right2=left2 + parseInt(document.defaultView.getComputedStyle(obj2, '').getPropertyValue("width"));var top2=parseInt(document.defaultView.getComputedStyle(obj2, '').getPropertyValue("top"));var bottom2=top2 + parseInt(document.defaultView.getComputedStyle(obj2, '').getPropertyValue("height"));if (lineIntersect(left1,right1, left2,right2)== true &&
lineIntersect(top1,bottom1,top2,bottom2) == true) {
return true;}return false;};function lineIntersect(a, b, c, d)
{
if ((a <= c  && c <= b) ||
(a <= d && d <= b) ||
(c <= a && d >= b))
{
return true;} else {
return false;}};function UilContextMenuHide() {
if (this.menuTag != null) {
debug('hide ' + this.name);for (var i=0; i<this.items.length; i++) {
if (this.items[i].submenu != null &&
this.items[i].submenu.isVisible) {
this.items[i].submenu.hide();}};if (this.selectedItem != null) {
this.selectedItem.setSelected(false);}this.menuTag.style.visibility="hidden";this.isVisible=false;this.isDismissable=true;var itemCount=this.hiddenItems.length;for (i=0; i<itemCount; i++)
{
var item=this.hiddenItems.pop();item.style.visibility="visible";};this.launcher=null;}};function UilContextMenuCreate(recurse) {
if (this.menuTag == null) {
this.menuTag=document.createElement("DIV");this.menuTag.style.position="absolute";this.menuTag.style.cursor="default";this.menuTag.style.visibility="hidden";this.menuTag.style.width="0px"; // this causes dynamic sizing
this.menuTag.onmouseover=contextMenuDismissDisable;this.menuTag.onmouseout=contextMenuDismissEnable;this.menuTag.oncontextmenu=contextMenuOnContextMenu;var numItems=this.items.length;var hasIcon=false;var hasSubmenu=false;for (var i=0; i<numItems; i++) {
if (!this.items[i].isSeparator) {
if (!hasSubmenu && this.items[i].submenu != null) {
hasSubmenu=true;}if (!hasIcon && this.items[i].icon != null) {
hasIcon=true;}if (hasSubmenu && hasIcon) {
break;}}};for (var i=0; i<numItems; i++) {
this.items[i].isFirst=(i == 0);this.items[i].isLast=(i+1 == numItems);this.items[i].parentMenu=this;this.items[i].create(hasIcon, hasSubmenu);};var border=document.createElement("TABLE");if (!this.isLTR) border.dir="RTL";border.rules="none";border.cellPadding=0;border.cellSpacing=0;border.border=0;var borderBody=document.createElement("TBODY");var borderRow=document.createElement("TR");var borderData=document.createElement("TD");var borderDiv=document.createElement("DIV"); //@04A
borderDiv.className="lwpShadowBorder";borderData.appendChild(borderDiv);borderRow.appendChild(borderData);borderBody.appendChild(borderRow);border.appendChild(borderBody);var table=document.createElement("TABLE");if (!this.isLTR) table.dir="RTL";table.rules="none";table.cellPadding=0;table.cellSpacing=0;table.width="100%";table.border=0;var tableBody=document.createElement("TBODY");table.appendChild(tableBody);var table2=document.createElement("TABLE");if (!this.isLTR) table2.dir="RTL";table2.rules="none";table2.cellPadding=0;table2.cellSpacing=0;table2.width="100%";table2.border=0;var tableRow=document.createElement("TR");var tableData=document.createElement("TD");var tableDiv=document.createElement("DIV");tableDiv.className="lwpBorderAll";     //@06C1
var tableBody2=document.createElement("TBODY");tableBody.appendChild(tableRow);tableRow.appendChild(tableData);tableData.appendChild(tableDiv);tableDiv.appendChild(table2);table2.appendChild(tableBody2);for (var i=0; i<numItems; i++) {
if (this.items[i].isSeparator) {
this.items[i].createSeparator(tableBody2, hasSubmenu);}else {
tableBody2.appendChild(this.items[i].itemTag);};};borderDiv.appendChild(table);this.menuTag.appendChild(border);document.body.appendChild(this.menuTag);}if (recurse) {
for (var i=0; i<this.items.length; i++) {
if (this.items[i].submenu != null) {
this.items[i].submenu.create(recurse);}};}};function UilContextMenuGetMenuItem(htmlElement) {
if (htmlElement != null) {
if (htmlElement.nodeType == 3) {
htmlElement=htmlElement.parentNode;}var tagName=htmlElement.tagName;var menuItemTag=null;if (tagName == "IMG" ||
tagName == "A") {
menuItemTag=htmlElement.parentNode.parentNode;}else if (tagName == "TD") {
menuItemTag=htmlElement.parentNode;}for (var i=0; i<this.items.length; i++) {
if (this.items[i].itemTag != null &&
this.items[i].itemTag == menuItemTag) {
return this.items[i];}else if (this.items[i].submenu != null &&
this.items[i].submenu.isVisible) {
var item=this.items[i].submenu.getMenuItem(htmlElement);if (item != null) {
return item;}}};}return null;};function UilContextMenuGetSelectedItem() {
var item=this.selectedItem;if (item != null && item.submenu != null && item.submenu.isVisible) {
return item.submenu.getSelectedItem();}return item;};function contextMenuDismissEnable() {
if (visibleMenu_ != null) {
visibleMenu_.isDismissable=true;if (visibleMenu_.isHyperlinkChild) {
setMenuTimer();}}};function contextMenuDismissDisable() {
if (visibleMenu_ != null) {
visibleMenu_.isDismissable=false;clearMenuTimer();}};function contextMenuOnContextMenu() {
return false;};function UilMenuItem(text, enabled, action, clientAction, submenu, icon, defItem,menuStyle, selectedMenuStyle) {
this.text=text;this.icon=icon;this.action=action;this.clientAction=clientAction;this.submenu=submenu;this.isSeparator=false;this.isSelected=false;this.isEnabled=(enabled != null) ? enabled : true;this.isDefault=(defItem != null) ? defItem : false;this.isFirst=false;this.isLast=false;this.parentMenu=null;this.menuStyle=(menuStyle != null) ? menuStyle : "lwpMenuItem";this.selectedMenuStyle=(selectedMenuStyle != null) ? selectedMenuStyle : "lwpSelectedMenuItem";this.itemTag=null;this.anchorTag=null;this.arrowTag=null;this.create=UilMenuItemCreate;this.createSeparator=UilMenuItemCreateSeparator;this.setSelected=UilMenuItemSetSelected;this.updateStyle=UilMenuItemUpdateStyle;this.getNextItem=UilMenuItemGetNextItem;this.getPrevItem=UilMenuItemGetPrevItem;if (this.submenu != null) {
this.action=null;}};function UilMenuItemCreate(menuHasIcon, menuHasSubmenu) {
if (!this.isSeparator) {
this.anchorTag=document.createElement("A");if (this.action != null) {
this.anchorTag.href="javascript:menuItemLaunchAction();";if (this.clientAction != null) {
this.anchorTag.onclick=this.clientAction;}}else if (this.submenu != null) {
this.anchorTag.href="javascript:void(0);";this.anchorTag.onclick=menuItemShowSubmenu;}else if (this.clientAction != null) {
this.anchorTag.href="javascript:menuItemLaunchAction();";this.anchorTag.onclick=this.clientAction;}this.anchorTag.onfocus=menuItemFocus;this.anchorTag.onblur=menuItemBlur;this.anchorTag.onkeydown=menuItemKeyDown;this.anchorTag.innerHTML=this.text;this.anchorTag.className=this.menuStyle;if (this.isDefault) {
this.anchorTag.style.fontWeight="bold";}var td=document.createElement("TD");td.noWrap=true;td.style.padding="3px";td.appendChild(this.anchorTag);var leftPad=document.createElement("TD");leftPad.noWrap=true;leftPad.innerHTML="&nbsp;";leftPad.style.padding="3px";if (this.icon != null) {
var imgTag=document.createElement("IMG");imgTag.src=this.icon;if (this.text != null) {
imgTag.alt=this.text;imgTag.title=this.text;}leftPad.appendChild(imgTag);}else {
leftPad.width=padding_;};var rightPad=document.createElement("TD");rightPad.noWrap=true;rightPad.width=padding_;rightPad.innerHTML="&nbsp;";rightPad.style.padding="3px";this.itemTag=document.createElement("TR");this.itemTag.onmousemove=menuItemMouseMove;this.itemTag.onmousedown=menuItemMouseDown;this.itemTag.className=this.menuStyle;this.itemTag.appendChild(leftPad);this.itemTag.appendChild(td);this.itemTag.appendChild(rightPad);if (menuHasSubmenu) {
var submenuArrow=document.createElement("TD");submenuArrow.noWrap=true;submenuArrow.style.padding="3px";if (this.submenu != null) {
var submenuImg=document.createElement("IMG");submenuImg.alt=submenuAltText_;submenuImg.title=submenuAltText_;submenuImg.width=arrowWidth_;submenuImg.height=arrowHeight_;if (this.parentMenu.isLTR) submenuImg.src=arrowNorm_;else submenuImg.src=arrowNormRTL_;submenuArrow.appendChild(submenuImg);this.arrowTag=submenuImg;}else {
submenuArrow.innerHTML="&nbsp;";};this.itemTag.appendChild(submenuArrow);}this.updateStyle(this.itemTag);}};function UilMenuItemCreateSeparator(tableBody, menuHasSubmenu) {
var numCols=(menuHasSubmenu) ? 4 : 3;for (var i=0; i<4; i++) {
var tr=document.createElement("TR");if (i == 1) {
tr.className="portlet-separator";   //@06C1
}else if (i == 2) {
tr.className="lwpMenuBackground";   //@06C1
}else {
tr.className="lwpMenuItem";   //@06C1
}var td=document.createElement("TD");td.noWrap=true;td.width="100%";td.height="1px";td.colSpan=numCols;var img=document.createElement("IMG");img.src=transImg_;img.width=1;img.height=1;img.style.display="block";td.appendChild(img);tr.appendChild(td);tableBody.appendChild(tr);};};function UilMenuItemSetSelected(isSelected) {
if (isSelected && !this.isSelected) {
debug('selected: ' + this.text);if (this.parentMenu != null &&
this.parentMenu.isVisible &&
this.parentMenu.selectedItem != null &&
this.parentMenu.selectedItem != this) {
if (this.parentMenu.selectedItem.submenu != null) {
this.parentMenu.selectedItem.submenu.hide();}this.parentMenu.selectedItem.setSelected(false);}this.isSelected=true;if (this.parentMenu != null && this.parentMenu.isVisible) {
this.parentMenu.selectedItem=this;}this.updateStyle(this.itemTag);}else if (!isSelected && this.isSelected) {
debug('deselected: ' + this.text);if (this.submenu == null || (this.submenu != null && !this.submenu.isVisible)) {
this.isSelected=false;if (this.parentmenu != null) {
this.parentmenu.selectedItem=null;}this.updateStyle(this.itemTag);}}};function UilMenuItemUpdateStyle(tag, styleID) {
if (tag != null) {
if (styleID == null) {
styleID=this.menuStyle;if (!this.isEnabled) {
styleID=this.menuStyle;}else if (this.isSelected) {
styleID=this.selectedMenuStyle;}if (this.arrowTag != null) {
if (this.isEnabled && this.isSelected) {
if (this.parentMenu.isLTR) this.arrowTag.src=arrowSel_;else this.arrowTag.src=arrowSelRTL_;}else if (!this.isEnabled) {
if (this.parentMenu.isLTR) this.arrowTag.src=arrowDis_;else this.arrowTag.src=arrowDisRTL_;}else {
if (this.parentMenu.isLTR) this.arrowTag.src=arrowNorm_;else this.arrowTag.src=arrowNormRTL_;}}}tag.className=styleID;if (tag.childNodes != null) {
for (var i=0; i<tag.childNodes.length; i++) {
this.updateStyle(tag.childNodes[i], styleID);};}}};function UilMenuItemGetNextItem() {
var menu=this.parentMenu;if (menu != null) {
for (var i=0; i<menu.items.length; i++) {
if (menu.items[i] == this) {
for (var j=i+1; j<menu.items.length; j++) {
if (!menu.items[j].isSeparator && menu.items[j].isEnabled) {
return menu.items[j];}};return null;}};}return null;};function UilMenuItemGetPrevItem() {
var menu=this.parentMenu;if (menu != null) {
for (var i=menu.items.length-1; i>=0; i--) {
if (menu.items[i] == this) {
for (var j=i-1; j>=0; j--) {
if (!menu.items[j].isSeparator && menu.items[j].isEnabled) {
return menu.items[j];}};return null;}};}return null;};function menuItemLaunchAction() {
if (visibleMenu_ != null) {
var item=visibleMenu_.getSelectedItem();if (item != null && item.isEnabled) {
hideCurrentContextMenu(true);if (item.clientAction != null) {
eval(item.clientAction);}if (item.action != null) {
if (item.action.indexOf("javascript:") == 0) {
eval(item.action);}else {
};}}}};function menuItemShowSubmenu(evt) {
if (visibleMenu_ != null) {
var item=visibleMenu_.getMenuItem(evt.target);if (item != null && item.isEnabled) {
var menu=item.submenu;if (menu != null) {
menu.show(item.anchorTag, item);}}}};function menuItemFocus(evt) {
if (visibleMenu_ != null) {
var item=visibleMenu_.getMenuItem(evt.target);if (item != null) {
item.setSelected(true);}}};function menuItemBlur(evt) {
if (visibleMenu_ != null) {
var item=visibleMenu_.getMenuItem(evt.target);if (item != null) {
}}};function menuItemKeyDown(evt) {
var item=null;if (visibleMenu_ != null) {
item=visibleMenu_.getMenuItem(evt.target);}if (item != null) {
var next=null;switch (evt.keyCode) {
case 38:
next=item.getPrevItem();if (next != null) {
next.anchorTag.focus();}else if (item.parentMenu != visibleMenu_) {
item.parentMenu.launcher.focus();item.parentMenu.hide();}else {
visibleMenu_.launcher.focus();hideCurrentContextMenu(true);};break;case 40:
next=item.getNextItem();if (next != null) {
next.anchorTag.focus();}else if (item.parentMenu != visibleMenu_) {
item.parentMenu.launcher.focus();item.parentMenu.hide();}else {
visibleMenu_.launcher.focus();hideCurrentContextMenu(true);};break;case 39:
if (visibleMenu_.isLTR) {
if (item.submenu != null) {
menuItemShowSubmenu(evt);item.submenu.items[0].anchorTag.focus();}}else {
if (item.parentMenu != visibleMenu_) {
item.parentMenu.launcher.focus();item.parentMenu.hide();}};break;case 37:
if (visibleMenu_.isLTR) {
if (item.parentMenu != visibleMenu_) {
item.parentMenu.launcher.focus();item.parentMenu.hide();}}else {
if (item.submenu != null) {
menuItemShowSubmenu(evt);item.submenu.items[0].anchorTag.focus();}};break;case 9:
visibleMenu_.launcher.focus();hideCurrentContextMenu(true);break;case 27:
visibleMenu_.launcher.focus();hideCurrentContextMenu(true);break;case 13:
break;default:
break;};}};function menuItemMouseMove(evt) {
if (visibleMenu_ != null) {
var item=visibleMenu_.getMenuItem(evt.target);if (item != null) {
if (!item.isSelected) {
item.anchorTag.focus();}if (item.submenu != null && !item.submenu.isVisible && item.isEnabled) {
item.submenu.show(item.anchorTag, item);}}}};function menuItemMouseDown(evt) {
menuItemLaunchAction();};document.onmousedown=hideCurrentContextMenu;var allMenus_=new Array();function createContextMenu(name, isLTR, width) {
var menu=new UilContextMenu(name, isLTR, width);allMenus_[allMenus_.length]=menu;return menu;};function getContextMenu(name) {
for (var i=0; i<allMenus_.length; i++) {
if (allMenus_[i].name == name) {
return allMenus_[i];}};return null;};function showContextMenu(name, isDynamic, isCacheable) {
contextMenuShow(name, isDynamic, isCacheable, event.target, true);};function showContextMenu(name, launcher) {
contextMenuShow(name, false, false, launcher, true);};function contextMenuShow(name, isDynamic, isCacheable, launcher, doLoad) {
debug("***** showContextMenu: " + name)
var oldLauncher=launcher;while ((null != launcher) && (null == launcher.tagName)) {
launcher=launcher.parentNode;};if (null == launcher) {
launcher=oldLauncher;}if (eval(isDynamic)) {
debug('showContextMenu: dynamic=true, load=' + eval(doLoad) + ', cache=' + eval(isCacheable));if (eval(doLoad)) {
loadDynamicMenu(name);}menu=getDynamicMenu(name, eval(isCacheable));if (menu == null && top.isContextMenuManager_ != null) {
debug('showContextMenu: ' + name + ' added to queue');top.contextMenuManagerRequest(name, window, launcher, isCacheable);}}else {
debug('showContextMenu: static context menu');menu=getContextMenu(name);if (menu == null) {
menu=createContextMenu(name, 150);}};if (menu != null) {
hideCurrentContextMenu(true);menu.show(launcher);visibleMenu_=menu;}else {
debug('showContextMenu: ' + name + ' unavailable');};clearMenuTimer();};function hideCurrentContextMenu(forceHide) {
if (visibleMenu_ != null && (forceHide == true || visibleMenu_.isDismissable)) {
contextMenuDismissEnable();if (visibleMenu_.isVisible) {
visibleMenu_.hide();}if (visibleMenu_.isDynamic && !visibleMenu_.isCacheable) {
uncacheContextMenu(visibleMenu_);}visibleMenu_=null;}};function uncacheContextMenu(menu) {
debug('uncache menu: ' + menu.name);for (var i=0; i<menu.items.length; i++) {
if (menu.items[i].submenu != null) {
uncacheContextMenu(menu.items[i].submenu);}};for (var i=0; i<allMenus_.length; i++) {
if (allMenus_[i] == menu) {
var temp=new Array();var index=0;for (var j=0; j<allMenus_.length; j++) {
if (j != i) {
temp[index]=allMenus_[j];index++;}};allMenus_=temp;break;}};};function contextMenuSetIcons(transparentImage,
arrowDefault, arrowSelected, arrowDisabled,
launcherDefault, launcherSelected,
arrowDefaultRTL, arrowSelectedRTL, arrowDisabledRTL,
launcherDefaultRTL, launcherSelectedRTL) {
transImg_=transparentImage;arrowNorm_=arrowDefault;arrowSel_=arrowSelected;arrowDis_=arrowDisabled;launchNorm_=launcherDefault;launchSel_=launcherSelected;arrowNormRTL_=arrowDefaultRTL;arrowSelRTL_=arrowSelectedRTL;arrowDisRTL_=arrowDisabledRTL;launchNormRTL_=launcherDefaultRTL;launchSelRTL_=launcherSelectedRTL;contextMenuPreloadImage(transImg_);contextMenuPreloadImage(arrowNorm_);contextMenuPreloadImage(arrowSel_);contextMenuPreloadImage(arrowDis_);contextMenuPreloadImage(launchNorm_);contextMenuPreloadImage(launchSel_);contextMenuPreloadImage(arrowNormRTL_);contextMenuPreloadImage(arrowSelRTL_);contextMenuPreloadImage(arrowDisRTL_);contextMenuPreloadImage(launchNormRTL_);contextMenuPreloadImage(launchSelRTL_);};function contextMenuSetArrowIconDimensions(width, height) {
arrowWidth_=width;arrowHeight_=height;};function contextMenuPreloadImage(imgsrc) {
var preload=new Image();preload.src=imgsrc;};function toggleLauncherIcon(popupID, selected, isLTR) {
if (selected) {
if (isLTR) {
document.images[popupID].src=launchSel_;}else {
document.images[popupID].src=launchSelRTL_;}}else {
if (isLTR) {
document.images[popupID].src=launchNorm_;}else {
document.images[popupID].src=launchNormRTL_;}}return true;};function contextMenuSetNoActionsText(noActionsText, submenuAltText) {
noActionsText_=noActionsText;submenuAltText_=submenuAltText;};function contextMenuGetNoActionsText() {
return noActionsText_;};function getWidth(tag) {
return tag.offsetWidth;};function getHeight(tag) {
return tag.offsetHeight;};function getLeft(tag, recurse) {
var size=0;if (tag != null) {
if (recurse && tag.offsetParent != null) {
size+=getLeft(tag.offsetParent, recurse);}if (tag != null) {
size+=tag.offsetLeft;}}return size;};function getTop(tag, recurse) {
var size=0;if (tag != null) {
if (recurse && tag.offsetParent != null) {
size+=getTop(tag.offsetParent, recurse);}if (tag != null) {
size+=tag.offsetTop;}}return size;};function loadDynamicMenu(menuURL) {
debug('* loadDynamicMenu: ' + menuURL);var menu=getContextMenu(menuURL);if (menu != null) {
if (menu.isVisible) {
menu.hide();}if (!menu.isCacheable) {
uncacheContextMenu(menu);}}if (getContextMenu(menuURL) == null) {
if (top.isContextMenuManager_ != null) {
debug('loadDynamicMenu: loading');top.contextMenuManagerLoadDynamicMenu(menuURL);}}};function getDynamicMenu(menuURL, cache) {
debug('* getDynamicMenu: ' + menuURL);var clone=getContextMenu(menuURL);if (clone == null) {
if (top.isContextMenuManager_ != null) {
if (top.contextMenuManagerIsDynamicMenuLoaded()) {
var menu=top.contextMenuManagerGetDynamicMenu();debug('getDynamicMenu: fetched menu from other frame');clone=cloneMenu(menu, menuURL, cache);if (clone.items.length == 0) {
contextMenuSetNoActionsText(top.contextMenuManagerGetNoActionsText());}}else {
debug('getDynamicMenu: menu not loaded');};}else {
debug('getDynamicMenu: menu manager not present');};}else {
debug('getDynamicMenu: menu previously loaded');};return clone;};function cloneMenu(menu, name, cache) {
var clone=getContextMenu(name);if (clone == null) {
if (menu != null) {
clone=createContextMenu(name, menu.width);}else {
clone=createContextMenu(name, 150);};clone.isDynamic=true;clone.isCacheable=cache;if (menu != null) {
for (var i=0; i<menu.items.length; i++) {
clone.add(cloneMenuItem(menu.items[i], name + "_sub" + i, cache));};}}return clone;};function cloneMenuItem(item, submenuName, cache) {
var submenu=null;if (item.submenu != null) {
submenu=cloneMenu(item.submenu, submenuName, cache);}var clone=new UilMenuItem(item.text, item.isEnabled, item.action, item.clientAction, submenu, item.icon,null,'lwpMenuItem','lwpSelectedMenuItem');clone.isEnabled=item.isEnabled;clone.isSelected=item.isSelected;clone.isSeparator=item.isSeparator;return clone;};if (typeof wps_loggedInFuncs == "undefined")
wps_loggedInFuncs=new Object();if (typeof wps_loggedOutFuncs == "undefined")
wps_loggedOutFuncs=new Object();if (typeof wps_userStatusFuncs == "undefined")
wps_userStatusFuncs=new Object();if (typeof wps_userEnteredFuncs == "undefined")
wps_userEnteredFuncs=new Object();if (typeof wps_userLeftFuncs == "undefined")
wps_userLeftFuncs=new Object();var pa_addtostlist_window_opener=null;var stLinksAddToContactListFailedErrorMsg=null;var linkId=null;var defaultDynamicPersonTagURL=null;var registeredInstantMessagingEvents=false;var personjsSTLinksWatchNames_true="";var personjsSTLinksWatchNames_false="";var persontag_isLoggedIn=false;var persontag_awarenessversion=""; // indicates whether we are using classic ST or SIP IM
var persontag_resolveNames=null;function setDefaultDynamicPersonTagUrl(url) {
defaultDynamicPersonTagURL=url;};var MS_XMLHTTP_TYPES=new Array(
"MSXML2.XMLHTTP.4.0",
"MSXML2.XMLHTTP.3.0",
"MSXML2.XMLHTTP",
"Microsoft.XMLHTTP"
);function getDataFromServerIFrame(url, iframeid, callback)
{
var iframe=document.getElementById(iframeid);if (iframe != null)
{
var myurl=document.location.protocol + "//" + document.location.host + url;
iframe.src=myurl;if (isGecko())
{
iframe.onload=function()
{
var data=iframe.contentWindow.document.body.childNodes[0].nodeValue;data=data.replace(/'/g, "\'");data=data.replace(/"/g, '\"');eval(callback + "(data);");};}else
{
waitForIFrameCallback(iframeid, callback);};}};function waitForIFrameCallback(iframeid, callback)
{
var iframe=document.frames[iframeid];if (!isGecko() &&
iframe.document.readyState != "complete")
{
setTimeout("waitForIFrameCallback('" + iframeid + "','" + callback + "');", 500);}else
{
var data=iframe.document.body.innerHTML
data=data.replace(/'/g, "\\'");data=data.replace(/"/g, '\\"');eval(callback + "(\'" + data + "\');");};};function getDataFromServer(url)
{
var maindata="";var myurl=document.location.protocol + "//" + document.location.host + url;
var xmlhttp=null;if (window.XMLHttpRequest != null) {
xmlhttp=new XMLHttpRequest();}else if (window.ActiveXObject != null)
{
var success=false;for (var i=0; i < MS_XMLHTTP_TYPES.length && !success; i++) {
try {
xmlhttp=new ActiveXObject(MS_XMLHTTP_TYPES[i]);success=true;}catch (ex) {};};if (!success)
throw "Error in dynamic person tag.  Unable to create an XMLHTTP object.";}var spliturl=myurl.split("?");xmlhttp.open("POST", spliturl[0], false);xmlhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8");xmlhttp.send(spliturl[1]);if (xmlhttp.status == 200)
{
maindata=xmlhttp.responseText;}else if (xmlhttp.status == 304)
{
}else
{
throw "HTTP request for \"" + spliturl[0] + "\" failed with status \"" +
xmlhttp.status + " " + xmlhttp.statusText + "\"";}return maindata;};function invokePersonTagMenu(counter, target, isSubMenu)
{
var menuDataTagObject=awarenessController.getMenuDataTagObject(counter);var menuData=menuDataTagObject.getMenuData();var displayName=menuDataTagObject.getDisplayName();if (menuData == null)
{
var userId=menuDataTagObject.getUserId();var userIdType=menuDataTagObject.getUserIdType();var contextArray=menuDataTagObject.getContextArray();var theHTML="";var index;var url=defaultDynamicPersonTagURL;if (typeof userId == "undefined" || userId == null || userId == "") {
return;}if (typeof userIdType == "undefined" || userIdType == null || userIdType == "") {
index=userId.indexOf("@");if (index >= 0)
userIdType="EMAIL";else
userIdType="LDAPDN";}var params="value=" + URLEncoder(userId) + "&valueType=" + userIdType +
"&displayName=" + URLEncoder(displayName);params+="&getMenuData=TRUE";if (typeof contextArray != "undefined" && contextArray != null && contextArray != "") {
var contextValue="";for (var item in contextArray) {
if (contextArray[item] != "undefined" && contextArray[item] != null && contextArray[item] != "") {
contextValue+=URLEncoder(item) + URLEncoder(",") + URLEncoder(contextArray[item]) + URLEncoder(";");}};params+="&contextArray=" + contextValue;}index=url.lastIndexOf("#");if (index >= 0) {
url=url.substr(0, index);}if (url.indexOf("markerstart") >= 0) {
url=url.replace(/markerstart=markerend/g, params);}else {
url+="?" + params;};var maindata=getDataFromServer(url);index=maindata.indexOf("<dynamicpersontagdata>");var start=index + "<dynamicpersontagdata>".length;maindata=maindata.substr(start, maindata.indexOf("</dynamicpersontagdata>")-start);menuData=maindata;menuDataTagObject.setMenuData(menuData);}eval(menuData);var IMLogin=menuDataTagObject.getIMLogin();var businessCard=new BusinessCard();businessCard.setVariables(displayName,cardData);var menu=buildMenu(IMLogin,menuList,businessCard, target, isSubMenu);return menu;};function invokeDynamicPersonTag (userId, userIdType, displayName, IMLogin, contextArray) {
if (typeof userId == "undefined" || userId == null || userId == "") {
return;}if (typeof userIdType == "undefined" || userIdType == null || userIdType == "") {
index=userId.indexOf("@");if (index >= 0)
userIdType="EMAIL";else
userIdType="LDAPDN";}return(awarenessController.writeOutLink(userId,userIdType,displayName,IMLogin,false,contextArray));};function invokeArrayOfDynamicPersonTags(userIds, userIdTypes, displayNames, IMLogins, contextArray) {
if (typeof userIds != "object" || userIds == null || userIds == "") {
return;}var writeOutPersonCallArray=new Array();for (var x=0; x < userIds.length; x++) {
writeOutPersonCallArray[x]=awarenessController.writeOutLink(userIds[x],userIdTypes[x],displayNames[x],IMLogins[x],false,contextArray);};return(writeOutPersonCallArray);};function addPeopleMenuMoreMenuItems(menu) {
if (typeof peoplemenu_more != "undefined") {
var items=peoplemenu_more.items;var actions=peoplemenu_more.actions;for (i=0; i < items.length; i++) {
if (actions[i].toLowerCase().indexOf("javascript:") == -1) {
menu.add(new UilMenuItem(items[i], true, '', "javascript:" + actions[i], null, null, false,'lwpMenuItem', 'lwpSelectedMenuItem'));}else {
menu.add(new UilMenuItem(items[i], true, '', actions[i], null, null, false,'lwpMenuItem', 'lwpSelectedMenuItem'));};};}};function registerInstantMessagingEvents() {
if (persontag_awarenessversion == "classic") {
if (typeof STLinksAddListener == "function") {
STLinksAddListener("STLinksLoggedIn", "STLinksLoggedIn_PersonJS");STLinksAddListener("STLinksLoggedOut", "STLinksLoggedOut_PersonJS");STLinksAddListener("STLinksUserStatusChanged", "STLinksUserStatusChanged_PersonJS");}else
{
wps_loggedInFuncs["STLinksLoggedIn_PersonJS"]=0;wps_loggedOutFuncs["STLinksLoggedOut_PersonJS"]=0;wps_userStatusFuncs["STLinksUserStatusChanged_PersonJS"]=0;};}else {
if (typeof PeopleLinksAddListener == "function") {
PeopleLinksAddListener("PeopleLinksLoggedIn", "PeopleLinksLoggedIn_PersonJS");PeopleLinksAddListener("PeopleLinksLoggedOut", "PeopleLinksLoggedOut_PersonJS");PeopleLinksAddListener("PeopleLinksUserStatusChanged", "PeopleLinksUserStatusChanged_PersonJS");PeopleLinksAddListener("PeopleLinksUsersStatusChanged", "PeopleLinksUsersStatusChanged_PersonJS");}};registeredInstantMessagingEvents=true;};function STLinksLoggedIn(userId,displayName)
{
for (var funcName in wps_loggedInFuncs)
eval(funcName + '("' + userId + '","' + displayName + '")');};function STLinksLoggedOut(reason)
{
for (var funcName in wps_loggedOutFuncs)
eval(funcName + '("' + reason + '")');};function STLinksUserStatusChanged(userId,displayName,status,statusMsg,groupName)
{
for (var funcName in wps_userStatusFuncs) {
if (funcName == "STLinksUserStatusChanged_PersonJS")
eval(funcName + '("' + userId + '","' + displayName + '",' + status + ',"' + statusMsg + '","' + groupName + '")');else
eval(funcName + '("' + escapeForJavaScript(userId) + '","' + displayName + '",' + status + ',"' + statusMsg + '","' + groupName + '")');};};function STLinksUserEnteredPlace(id,name,placeId)
{
for (var funcName in wps_userEnteredFuncs)
eval(funcName + '("' + id + '","' + name + '","' + placeId + '")');};function STLinksUserLeftPlace(id,name,placeId)
{
for (var funcName in wps_userLeftFuncs)
eval(funcName + '("' + id + '","' + name + '","' + placeId + '")');};function PeopleLinksUsersStatusChanged_PersonJS(usersInfo, groupId) {
if (typeof (usersInfo) == "object")
{
if (typeof (groupId) == "undefined")
groupId="";for (var i=0 ; i < usersInfo.length ; i++)
{
PeopleLinksUserStatusChanged_PersonJS (usersInfo[i].usermail,
usersInfo[i].usermail,
usersInfo[i].userstatustype,
usersInfo[i].userstatusdescr,
groupId);};}};function PeopleLinksUserStatusChanged_PersonJS(userid, displayName,status, statusmessage, groupId) {
status=status + "";awarenessController.updatePersonStatus(userid,status,statusmessage);};function STLinksUserStatusChanged_PersonJS(userid, displayname, status, statusmessage, groupName){
status=status + "";	//convert to a string, in case we are passed a number rather than a string
awarenessController.updatePersonStatus(userid,status,statusmessage);};function STLinksLoggedOut_PersonJS(reason)
{
persontag_isLoggedIn=false;if (typeof awarenessController != "undefined" && awarenessController != null) {
awarenessController.loggedOut();}};function PeopleLinksLoggedOut_PersonJS(userEmail, reason)
{
persontag_isLoggedIn=false;if (typeof awarenessController != "undefined" && awarenessController != null) {
awarenessController.loggedOut();}};function STLinksLoggedIn_PersonJS(myUserId, myUserName)
{
if (persontag_isLoggedIn == true)
return;persontag_isLoggedIn=true;sendNamesToInstantMessaging(personjsSTLinksWatchNames_true, true, true);sendNamesToInstantMessaging(personjsSTLinksWatchNames_false, true, false);};function PeopleLinksLoggedIn_PersonJS(myUserEmail)
{
if (persontag_isLoggedIn == true)
return;persontag_isLoggedIn=true;sendNamesToInstantMessaging(personjsSTLinksWatchNames_true, true, true);sendNamesToInstantMessaging(personjsSTLinksWatchNames_false, true, false);};function sendNamesToInstantMessaging(names, force, resolveNames) {
if (names == null || names.length < 1)
return;if (persontag_awarenessversion == "classic") {
if (force || (typeof ll_loggedIn != "undefined" && ll_loggedIn == true)) {
if (typeof STLinksWatchUsers != "undefined") {
STLinksWatchUsers(names, resolveNames);}}}else {
if (force || (typeof g_fIsLoggedIn != "undefined" && g_fIsLoggedIn == true)) {
if (typeof PeopleLinksWatchUsers != "undefined") {
PeopleLinksWatchUsers(names);}}};};function hexString (num, wid)
{
var str="";var digit=0;var hexDigits="0123456789ABCDEF";while (num > 0)
{
digit=num % 16;str=hexDigits.charAt(digit) + str;num >>= 4;};while (str.length < wid)
str="0" + str;return str;};function convToUtf8 (unival)
{
var utf8="";if (unival <= 0x7f)
{
if(unival == 0x20) {
utf8="+";}else if((unival >=0x30 && unival <=0x39) ||
(unival >= 0x41 && unival <= 0x5a) ||
(unival >= 0x61 && unival <= 0x7a) ||
(unival == 0x2A) ||
(unival == 0x2D) ||
(unival == 0x2E) ||
(unival == 0x5F) ||
(unival == 0x3A) ||
(unival == 0x2F)
) {
utf8=String.fromCharCode(unival);}else {
utf8="%" + hexString(unival, 2);};}else if (unival <= 0x07FF)
{
utf8="%" + hexString(0xC0 + (unival >> 6), 2);utf8+="%" + hexString(0x80 + (unival & 0x3F), 2);}else if (unival <= 0xFFFF)
{
utf8="%" + hexString(0xE0 + (unival >> 12), 2);utf8+="%" + hexString(0x80 + ((unival >> 6) & 0x3F), 2);utf8+="%" + hexString(0x80 + (unival & 0x3F), 2);}else if (unival <= 0x10FFFF)
{
utf8="%" + hexString(0xF0 + (unival >> 18), 2);utf8+="%" + hexString(0x80 + ((unival >> 12) & 0x3F), 2);utf8+="%" + hexString(0x80 + ((unival >> 6) & 0x3F), 2);utf8+="%" + hexString(0x80 + (unival & 0x3F), 2);}return utf8;};function URLEncoder(sstr) {
var dstr="";var value=0;for(var ix=0; ix < sstr.length; ix++)
{
value=sstr.charCodeAt(ix);dstr+=convToUtf8(value);};return dstr;};function handleChatPersonMenuItem(email){
if (typeof STLinksCreateIM == "function"){
STLinksCreateIM(escapeSlashComma(email));}};function portalShowProfile(profileURL){
window.open(profileURL);};function portalFindDocs(kmapURL){
window.open(kmapURL);};function portalShowAddToContactsUI(theUrl){
pa_addtostlist_window_opener=window;window.open(theUrl, "pa_addtostlist",
"resizable=yes,width=400,height=500,toolbar=no,status=no,menubar=no", true);};function setSTLinksAddToContactListFailedErrorMsg(msgStr)
{
stLinksAddToContactListFailedErrorMsg=msgStr;};function STLinksAddToContactListFailed(reason)
{
if (pa_addtostlist_window_opener != null && stLinksAddToContactListFailedErrorMsg != null)
{
alert(stLinksAddToContactListFailedErrorMsg + ": " + reason);}};var awarenessController=new AwarenessController();function BusinessCard(){
var displayName='';var cardData='';function setVariables(displayName, cardData) {
this.displayName=displayName;this.cardData=cardData;};function getDisplayName(){
return this.displayName;};function getCardData(){
return this.cardData;};function hasCardData() {
if (this.cardData == '') {
return false;} else {
return true;}};this.setVariables=setVariables;this.getDisplayName=getDisplayName;this.getCardData=getCardData;this.hasCardData=hasCardData;};function MenuItem() {
var displayName='';var uri='';var awareness=false;function setVariables(displayName, uri, awareness) {
this.displayName=displayName;this.uri=uri;this.awareness=awareness;};function getDisplayName() {
return this.displayName;};function getURI() {
return this.uri;};function isAwarenessSensitive() {
return this.awareness;};this.setVariables=setVariables;this.getDisplayName=getDisplayName;this.getURI=getURI;this.isAwarenessSensitive=isAwarenessSensitive;};function buildMenu(userId, menuList, businessCard, target, isSubMenu) {
var status=awarenessController.getOnlineStatusForUser(userId);var menuID=userId + awarenessController.getRandomSeed();var isLTR=awarenessController.getLTR();var menu=createContextMenu(menuID, isLTR);var showEndSeperator=false;menu.add(new UilMenuItem(businessCard.getDisplayName(), false, true, null,
null, null, true, 'lwpMenuHeader','lwpSelectedMenuItem'));var menuItem=new UilMenuItem('', false, null, null, null, null, false, 'lwpMenuHeader','lwpSelectedMenuItem');menu.add(menuItem);if (businessCard.hasCardData()) {
var cardData=businessCard.getCardData();var length=cardData.length;for (var i=0; i < length; i++) {
if (cardData[i] != "") {
showEndSeperator=true;menu.add(new UilMenuItem(cardData[i], false, null, null,
null, null, false, 'lwpMenuHeader','lwpSelectedMenuItem'));}};}var statusMessage=awarenessController.getStatusMessageForUser(userId);if (showEndSeperator && statusMessage.length > 0) {
menu.add(new UilMenuItem('', false, null, null,
null, null, false, 'lwpMenuHeader','lwpSelectedMenuItem'));}if (statusMessage.length > 0)
{
menu.add(new UilMenuItem(statusMessage, false, null, null,
null, null, false, 'lwpMenuHeader','lwpSelectedMenuItem'));}menu.addSeparator();for (var i=0;i < menuList.length;i++){
if (menuList[i].isAwarenessSensitive()) {
if (status) {
menu.add(new UilMenuItem(menuList[i].getDisplayName(), true, '',
menuList[i].getURI(), null, null, false,'lwpMenuItem', 'lwpSelectedMenuItem'));}} else {
menu.add(new UilMenuItem(menuList[i].getDisplayName(), true, '',
menuList[i].getURI(), null, null, false,'lwpMenuItem', 'lwpSelectedMenuItem'));};};if (typeof addPeopleMenuMoreMenuItems != "undefined") {
addPeopleMenuMoreMenuItems(menu);}if (isSubMenu)
{
menu.show(target);}else
{
showContextMenu(menuID, target);};return menu;};function swapDownImg(id) {
var iconDirectory=awarenessController.getIconDirectory();iconDirectory+='MenuDropdown.gif';var elem=document.getElementById(id);if (elem != null)
elem.src=iconDirectory;};function swapClearImg(id) {
var iconDirectory=awarenessController.getIconDirectory();iconDirectory+='ClearPixel.gif';var elem=document.getElementById(id);if (elem != null)
elem.src=iconDirectory;};function AwarenessController() {
var randomSeed=1;var internalCounter=1;var iconDirectory='/wps/images/icons/'; // portal icon directory
var isLTR=true;var activeMsg=''; // active message
var awayMsg=''; // away message
var dndMsg='';	// do not disturb message
var unAvailableMsg=''; // unavailable message
var offlineMsg=''; // offline message
var clickForOptions=''; // message for click for options
var personArray=new Object();var menuDataTagObjectArray=new Object();function registerPersonNoLinks(displayName, IMLogin)
{
if (personArray[IMLogin] == null)
{
registerSTWatch(IMLogin);var person=new PersonObject();person.setStatusMessage(this.unAvailableMsg);var businessCard=new BusinessCard();businessCard.setVariables(displayName, null);person.setBusinessCard(businessCard);personArray[IMLogin]=person;}};function registerPerson(userId,userIdType, displayName, IMLogin, counter,leftAligned,contextArray,resolveName) {
if (!registeredInstantMessagingEvents) {
registerInstantMessagingEvents();}var linkID="menu-link-" + counter;var statusImgID="status-img-" + counter;if (IMLogin == '') {
IMLogin=displayName;}var menuDataTag=new MenuDataTagObject();menuDataTag.setIMLogin(IMLogin);menuDataTag.setUserId(userId);menuDataTag.setUserIdType(userIdType);menuDataTag.setDisplayName(displayName);menuDataTag.setContextArray(contextArray);menuDataTagObjectArray[counter]=menuDataTag;if (personArray[IMLogin] == null) {
registerSTWatch(IMLogin, resolveName);var person=new PersonObject();person.setStatusMessage(this.unAvailableMsg);person.setLinkID(linkID);if (leftAligned == true) {
person.setLeftAlignedImageID(statusImgID);} else {
person.setStatusImageID(statusImgID);};var businessCard=new BusinessCard();businessCard.setVariables(displayName, null);person.setBusinessCard(businessCard);personArray[IMLogin]=person;} else {
personArray[IMLogin].setLinkID(linkID);if (leftAligned == true) {
personArray[IMLogin].setLeftAlignedImageID(statusImgID);} else {
personArray[IMLogin].setStatusImageID(statusImgID);};};};function updatePersonStatus(userId, status, statusMessage) {
var key;userId=userId.toLowerCase();for (key in personArray) {
if (key.toLowerCase() == userId) {
userId=key;}};var person=personArray[userId];if (typeof person == "undefined" || person == null)
return;if (statusMessage == null || statusMessage.length < 1) {
switch (status) {
case "0":        //offline
var len=this.offlineMsg.indexOf('%');var charNextToPerc=this.offlineMsg.charAt(len+1);var str3="" + "%"+ charNextToPerc;statusMessage=this.offlineMsg.replace(str3, this.getDisplayNameForUser(userId));break;case "32":        //active
statusMessage=this.activeMsg;break;case "64":        //not using computer
statusMessage=this.awayMsg;break;case "96":        //away
statusMessage=this.awayMsg;break;case "128":        //do not disturb
statusMessage=this.dndMsg;break;case "544":        //mobile active
statusMessage=this.activeMsg;break;case "608":        //mobile away
statusMessage=this.awayMsg;break;default:
var len=this.offlineMsg.indexOf('%');var charNextToPerc=this.offlineMsg.charAt(len+1);var str3="" + "%"+ charNextToPerc;statusMessage=this.offlineMsg.replace(str3, this.getDisplayNameForUser(userId));};}person.setStatus(status);person.setStatusMessage(statusMessage);person.update();};function updatePersonLink(userId) {
var key;userId=userId.toLowerCase();for (key in personArray) {
if (key.toLowerCase() == userId) {
userId=key;}};var person=personArray[userId];if (typeof person == "undefined" || person == null)
return;person.update();};function loggedOut() {
var key;for (key in personArray) {
updatePersonStatus(key, "", this.unAvailableMsg);};};function setMessages(activeMsg, awayMsg, dndMsg, unAvailableMsg, offlineMsg, clickForOptions) {
this.activeMsg=activeMsg;this.awayMsg=awayMsg;this.dndMsg=dndMsg;this.unAvailableMsg=unAvailableMsg;this.offlineMsg=offlineMsg;this.clickForOptions=clickForOptions;};function setLTR(LTR) {
isLTR=LTR;};function setIconDirectory(iconDirectory) {
this.iconDirectory=iconDirectory;};function setDynamicPTagServletName(name) {
};function registerSTWatch(userName, resolveName){
if (userName == null || userName.length < 1)
return;userName=escapeSlashComma(userName);if (typeof resolveName != "undefined" && resolveName != null)
{
if (resolveName == false)
{
personjsSTLinksWatchNames_false+=(personjsSTLinksWatchNames_false.length > 0 ? ";" : "") + userName;sendNamesToInstantMessaging(userName, false, false);return;}}else if (persontag_resolveNames != null)
{
if (persontag_resolveNames == false)
{
personjsSTLinksWatchNames_false+=(personjsSTLinksWatchNames_false.length > 0 ? ";" : "") + userName;sendNamesToInstantMessaging(userName, false, false);return;}}personjsSTLinksWatchNames_true+=(personjsSTLinksWatchNames_true.length > 0 ? ";" : "") + userName;sendNamesToInstantMessaging(userName, false, true);};function getPersonObject(userId) {
return personArray[userId];};function getMenuDataTagObject(counter) {
return menuDataTagObjectArray[counter];};function getClickForOptions() {
return this.clickForOptions;};function getCounter() {
return internalCounter++;};function getIconDirectory() {
return this.iconDirectory;};function getLTR() {
return(isLTR);};function getRandomSeed() {
return randomSeed++;};function getStatusMessageForUser(userId){
var statusMessage=this.unAvailableMsg;if (personArray[userId] != null) {
statusMessage=personArray[userId].getStatusMessage();}return statusMessage;};function getOnlineStatusForUser(userId){
switch (personArray[userId].getStatus()){
case "32":
case "96":
case "544":
case "608":
return true;case "0":
case "64":
case "128":
return false;};return false;};function getDisplayNameForUser(userId) {
var businessCard=personArray[userId].getBusinessCard();return businessCard.getDisplayName();};function getBusinessCardForUser(userId) {
var businessCard=personArray[userId].getBusinessCard();return businessCard;};function createStatusImage(userId, counter,leftAligned) {
var statusImage=awarenessController.getIconDirectory();var personObj=awarenessController.getPersonObject(userId);if (personObj != null)
{
statusImage+=personObj.getStatusIcon();}else
{
statusImage+='ClearPixel.gif';};var size='16';if (leftAligned) {
size='0';}var statusMsg=this.getStatusMessageForUser(userId);var output ="<img id='status-img-"+ counter + "' title=\"" + statusMsg + "\"" +
" alt=\"" + statusMsg + "\" src='";output+=statusImage + "' width='" + size + "' height='" + size + "' border='0' align='absmiddle'>";return output;};function createDownImage(counter) {
var clearPixel=awarenessController.getIconDirectory();clearPixel+='ClearPixel.gif';var output="<img id='down-img-" + counter + "' title=\"" + this.clickForOptions + "\"" +
" alt=\"" + this.clickForOptions + "\" src='";output+=clearPixel + "' width='16' height='16' border='0' align='absmiddle'>";return output;};function createMenuLink(userId, userIdType, displayName, IMLogin, counter) {
var stStatus=this.getStatusMessageForUser(userId);if (stStatus.length > 0)
stStatus+=" ";var output="<a id='menu-link-"+ counter +"' title='" + stStatus + this.getClickForOptions() + "'"
output+=" href='#' class='wpsPersonName'";output+=" onMouseOver=\"swapDownImg('down-img-" + counter + "');\"";output+=" onMouseOut=\"swapClearImg('down-img-" + counter + "');\"";output+="onclick=\"invokePersonTagMenu('" + counter +"',event.target);  return false;\">";return output;};function writeOutLink(userId,userIdType,displayName,IMLogin,leftAligned,contextArray,resolveName) {
var counter=this.getCounter();this.registerPerson(userId,userIdType,displayName,IMLogin,counter,leftAligned,contextArray,resolveName);var statusImage=this.createStatusImage(IMLogin, counter,leftAligned);var downImage="";var menuLink="";var endTag="";if (defaultDynamicPersonTagURL != null && defaultDynamicPersonTagURL.length > 0) {
downImage=this.createDownImage(counter);menuLink=this.createMenuLink(userId,userIdType,displayName,IMLogin, counter);endTag="</a>";}var output=statusImage + menuLink + displayName + downImage + endTag;return output;};function setDynamicPTagServletBaseURL(junk) {
};function setAwarenessVersion(version) {
persontag_awarenessversion=version;};function setResolveNames(resolve) {
persontag_resolveNames=resolve;};this.setIconDirectory=setIconDirectory;this.setLTR=setLTR;this.setMessages=setMessages;this.setDynamicPTagServletName=setDynamicPTagServletName;this.getPersonObject=getPersonObject;this.getStatusMessageForUser=getStatusMessageForUser;this.getLTR=getLTR;this.getRandomSeed=getRandomSeed;this.getCounter=getCounter;this.getIconDirectory=getIconDirectory;this.getClickForOptions=getClickForOptions;this.getOnlineStatusForUser=getOnlineStatusForUser;this.getDisplayNameForUser=getDisplayNameForUser;this.getBusinessCardForUser=getBusinessCardForUser;this.getMenuDataTagObject=getMenuDataTagObject;this.registerPersonNoLinks=registerPersonNoLinks;this.registerPerson=registerPerson;this.updatePersonStatus=updatePersonStatus;this.updatePersonLink=updatePersonLink;this.writeOutLink=writeOutLink;this.createStatusImage=createStatusImage;this.createDownImage=createDownImage;this.createMenuLink=createMenuLink;this.setDynamicPTagServletBaseURL=setDynamicPTagServletBaseURL;this.loggedOut=loggedOut;this.setAwarenessVersion=setAwarenessVersion;this.setResolveNames=setResolveNames;};function PersonObject(){
var status=''; // ST status of user
var statusMessage=''; // ST status message
var statusImageIDArray=new Array();var linkIDArray=new Array();var businessCard;var leftAlignedImageIDArray=new Array();function setBusinessCard(card) {
this.businessCard=card;};function setStatusImageID(id){
statusImageIDArray[statusImageIDArray.length]=id;};function setLeftAlignedImageID(id){
leftAlignedImageIDArray[leftAlignedImageIDArray.length]=id;};function setLinkID(id){
linkIDArray[linkIDArray.length]=id;};function setStatus(status){
this.status=status;};function setStatusMessage(statusMessage){
this.statusMessage=statusMessage;};function getBusinessCard() {
return this.businessCard;};function getStatusMessage(){
return this.statusMessage;};function getStatus(){
return this.status;};function update() {
for (var i=0; i < linkIDArray.length;i++) {
var elem=document.getElementById(linkIDArray[i]);if (elem != null)
{
var stStatus=this.statusMessage;if (stStatus.length > 0)
stStatus+=" ";elem.title=stStatus + awarenessController.getClickForOptions();}};for (var i=0; i < statusImageIDArray.length;i++) {
var iconDirectory=awarenessController.getIconDirectory();iconDirectory+=this.getStatusIcon();var elem=document.getElementById(statusImageIDArray[i]);if (elem != null) {
elem.alt=this.statusMessage;elem.title=this.statusMessage;elem.src=iconDirectory;}};for (var i=0; i < leftAlignedImageIDArray.length;i++) {
var iconDirectory=awarenessController.getIconDirectory();iconDirectory+=this.getStatusIcon();var elem=document.getElementById(leftAlignedImageIDArray[i]);if (elem != null) {
if (this.status == null || this.status == "0") {
elem.width='0';elem.height='0';} else {
elem.width='16';elem.height='16';}elem.alt=this.statusMessage;elem.title=this.statusMessage;elem.src=iconDirectory;}};};function getStatusIcon(){
switch (this.status){
case "0":        //offline
return 'ClearPixel.gif';break;case "32":        //active
return 'StatusActive.gif';break;case "64":        //not using computer
return 'StatusAway.gif'; //
break;case "96":        //away
return 'StatusAway.gif';break;case "128":        //do not disturb
return 'StatusDoNotDisturb.gif';break;case "544":        //mobile active
return 'StatusMobile.gif';break;case "608":        //mobile away
return 'StatusAway.gif';break;};return 'ClearPixel.gif';};this.setBusinessCard=setBusinessCard;this.setStatusImageID=setStatusImageID;this.setLeftAlignedImageID=setLeftAlignedImageID;this.setLinkID=setLinkID;this.setStatus=setStatus;this.setStatusMessage=setStatusMessage;this.getBusinessCard=getBusinessCard;this.getStatus=getStatus;this.getStatusMessage=getStatusMessage;this.getStatusIcon=getStatusIcon;this.update=update;};function MenuDataTagObject() {
var IMLogin;var userId;var userIdType;var displayName;var menuData=null;var contextArray=null;function setIMLogin(IMLogin){
this.IMLogin=IMLogin;};function setUserId(userId){
this.userId=userId;};function setUserIdType(userIdType){
this.userIdType=userIdType;};function setDisplayName(displayName){
this.displayName=displayName;};function setMenuData(menuData){
this.menuData=menuData;};function setContextArray(contextArray) {
this.contextArray=contextArray;};function getIMLogin(){
return(this.IMLogin);};function getUserId(){
return(this.userId);};function getUserIdType(){
return(this.userIdType);};function getDisplayName(){
return(this.displayName);};function getMenuData(){
return(this.menuData);};function getContextArray() {
return(this.contextArray);};this.setIMLogin=setIMLogin;this.setUserId=setUserId;this.setUserIdType=setUserIdType;this.setDisplayName=setDisplayName;this.setMenuData=setMenuData;this.setContextArray=setContextArray;this.getIMLogin=getIMLogin;this.getUserId=getUserId;this.getUserIdType=getUserIdType;this.getDisplayName=getDisplayName;this.getMenuData=getMenuData;this.getContextArray=getContextArray;};function invokeAction(formName, actionRef){
var array=new Array(1);array[0]=actionRef;c2a_invokeMenuAction(formName,array);};function escapeForJavaScript(str)
{
var retStr=str;var loc=0;while ((loc=retStr.indexOf("\\", loc)) > 0)
{
retStr=retStr.substring(0, loc)+"\\"+retStr.substring(loc);loc+=2;};return retStr;};function escapeSlashComma(str)
{
var index=str.indexOf("=");var subStr=str.substring(index+1, str.length);var cnStr=subStr.substring(0, subStr.indexOf("="));var indexComma=str.indexOf(",");var retStr=str;if(cnStr.indexOf(",") != cnStr.lastIndexOf(","))
{
if(str.charAt(indexComma-1) != '\\' && str.charAt(indexComma-2) != '\\')
{
retStr=str.substring(0, indexComma) + "\\"  + str.substring(indexComma);}}return retStr;};function STLinkClicked(person, personLinkText, status, event)
{
linkId=person;if (typeof STLinksCreateIM == "function")
STLinksCreateIM(escapeSlashComma(linkId));};var InputHandler_pabData=null;var InputHandler_handlerArray=new Array();function InputHandler_getServerPabData()
{
var servletData=null;if (document.getElementById("typeAheadIFrame") != null)
{
getDataFromServerIFrame(typeAheadServletUrl, "typeAheadIFrame", "InputHandler_getServerPabData_callback");}else
{
servletData=getDataFromServer(typeAheadServletUrl);InputHandler_getServerPabData_callback(servletData);};};function InputHandler_getServerPabData_callback(servletData)
{
if (servletData != null)
{
if (InputHandler_pabData == null)
{
InputHandler_pabData=new Array();}while (servletData.length > 0)
{
var nameCount=servletData.substring(0,3) - 0;var pabEntryName=servletData.substring(3, nameCount+3);servletData=servletData.substring(nameCount+3);var emailCount=servletData.substring(0,3) - 0;var pabEntryEmail=servletData.substring(3, emailCount+3);servletData=servletData.substring(emailCount+3);var locationCount=servletData.substring(0,3) - 0;var pabEntryLocation=servletData.substring(3, locationCount+3);servletData=servletData.substring(locationCount+3);var imloginCount=servletData.substring(0,3) - 0;var pabEntryIMLogin=servletData.substring(3, imloginCount+3);servletData=servletData.substring(imloginCount+3);var exists=false;for (var i=0; i < InputHandler_pabData.length; i++)
{
if (InputHandler_pabData[i].getEmail() == pabEntryEmail)
{
exists=true;break;}};if (exists)
{
break;}var pabEntry=new PabEntry();pabEntry.setName(pabEntryName);pabEntry.setEmail(pabEntryEmail);pabEntry.setLocation(pabEntryLocation);pabEntry.setIMLogin(pabEntryIMLogin);InputHandler_pabData[InputHandler_pabData.length]=pabEntry;};}InputHandler_callPollInput();};function InputHandler_callPollInput()
{
for (var i=0; i < InputHandler_handlerArray.length; i++)
{
InputHandler_handlerArray[i].pollInput();};setTimeout("InputHandler_callPollInput();", 1000);};function InputHandler_registerInputHandler(inputHandler)
{
if (InputHandler_handlerArray.length == 0)
{
var origOnLoad=window.onload;window.onload=function()
{
if (origOnLoad)
{
eval(origOnLoad);}InputHandler_getServerPabData();};}inputHandler.index=InputHandler_handlerArray.length;InputHandler_handlerArray[InputHandler_handlerArray.length]=inputHandler;};var InputHandler_menuItemArray=new Array();function InputHandler_createTypeAheadMenuItem(data, inputHandler)
{
var menuItem=null;if ((typeof InputHandler_menuItemArray[data.getEmail()] != "undefined") &&
(InputHandler_menuItemArray[data.getEmail()] != null))
{
menuItem=InputHandler_menuItemArray[data.getEmail()];}else
{
menuItem=new UilMenuItem("", true, "", "", null, null, false,'lwpMenuItem', 'lwpSelectedMenuItem');menuItem.superclass_create=menuItem.create;menuItem.data=data;if (inputHandler.showAwareness &&
data.getIMLogin() != null &&
data.getIMLogin() != "")
{
awarenessController.registerPersonNoLinks(data.getName(), data.getIMLogin());}InputHandler_menuItemArray[data.getEmail()]=menuItem;};menuItem.create=function(menuHasIcon, menuHasSubmenu)
{
this.superclass_create(menuHasIcon, false);this.showPeopleMenu=inputHandler.showPeopleMenu &&
data.getIMLogin() != null &&
data.getIMLogin() != "";if (this.showPeopleMenu)
{
var submenuArrow=document.createElement("TD");submenuArrow.noWrap=true;var submenuImg=document.createElement("IMG");submenuImg.alt=submenuAltText_;submenuImg.title=submenuAltText_;if (this.parentMenu.isLTR) submenuImg.src=arrowNorm_;else submenuImg.src=arrowNormRTL_;submenuArrow.appendChild(submenuImg);this.arrowTag=submenuImg;this.itemTag.appendChild(submenuArrow);submenuImg.width=arrowWidth_;submenuImg.height=arrowHeight_;}else if (inputHandler.showPeopleMenu)
{
var submenuArrow=document.createElement("TD");this.itemTag.appendChild(submenuArrow);}this.anchorTag.onkeydown=null;this.itemTag.onmousedown=function(event)
{
InputHandler_typeAheadMenuItemLaunchAction(inputHandler, event);};this.itemTag.onmousemove=function(event)
{
if (visibleMenu_ != null) {
var item=visibleMenu_.getMenuItem(getEventTarget(event));if (item != null)
{
if (!item.isSelected)
{
item.anchorTag.focus();}}}};};if (inputHandler.showAwareness &&
data.getIMLogin() != null &&
data.getIMLogin() != "")
{
var icon=awarenessController.getIconDirectory() + awarenessController.getPersonObject(data.getIMLogin()).getStatusIcon();menuItem.icon=icon;}var inputString=inputHandler.parseLastName().toLowerCase();var matchString=("\"" + data.getName() + "\" <" + data.getEmail() + ">").toLowerCase();if (matchString.indexOf(inputString) == 0)
{
var pre=matchString.substring(0, inputString.length).replace(/&/g, "&amp;").replace(/</g, "&lt;");var post=matchString.substring(inputString.length).replace(/&/g, "&amp;").replace(/</g, "&lt;");matchString="<b>" + pre + "</b>" + post;}else
{
var matchIndex=matchString.indexOf(" " + inputString);if (matchIndex == -1)
{
matchIndex=matchString.indexOf("\"" + inputString);if (matchIndex == -1)
{
matchIndex=matchString.indexOf("<" + inputString);}}if (matchIndex != -1)
{
var pre=matchString.substring(0, matchIndex + 1);var mid=matchString.substring(matchIndex + 1, matchIndex + 1 + inputString.length);var post=matchString.substring(matchIndex + 1 + inputString.length);pre=pre.replace(/&/g, "&amp;").replace(/</g, "&lt;");mid=mid.replace(/&/g, "&amp;").replace(/</g, "&lt;");post=post.replace(/&/g, "&amp;").replace(/</g, "&lt;");matchString=pre + "<b>" + mid + "</b>" + post;}};menuItem.text=matchString;menuItem.clientAction="InputHandler_handlerArray[" + inputHandler.index + "].returnValue('"+ data.getName() + "','" + data.getEmail() +"');"
return menuItem;};var pickerResultsFunctionIndex=0;function pickerResultsFunction(data)
{
var peopleArray=new Array();if (data)
{
var str="";for (var i=0; i < data.length; i++)
{
for (var j=0; j < data[i].length; j++)
{
var email=data[i][j].email;var name=data[i][j].name;peopleArray[peopleArray.length]=new Object();peopleArray[peopleArray.length-1].name=name;peopleArray[peopleArray.length-1].email=email;};};InputHandler_handlerArray[pickerResultsFunctionIndex].returnArrayValues(peopleArray);}};function openTypeAheadPeoplePicker()
{
var inputHandler=InputHandler_handlerArray[pickerResultsFunctionIndex];inputHandler.peoplePickerArgs.prepop=inputHandler.parseLastName();openModalDialogWithArgs(inputHandler.peoplePickerArgs.url, inputHandler.peoplePickerArgs, pickerResultsFunction);};var blockSub=null;function blockkeypress(inputId)
{
if (isGecko())
{
document.getElementById("typeaheadfocusdump").onfocus=function()
{
setTimeout("document.getElementById('"+inputId+"').focus()", 100);};document.getElementById("typeaheadfocusdump").focus();}else
{
document.getElementById("typeaheadfocusdump").onkeyup=function()
{
document.getElementById("typeaheadfocusdump").form.onsubmit=blockSub;document.getElementById(inputId).focus();};blockSub=document.getElementById(inputId).form.onsubmit;document.getElementById("typeaheadfocusdump").form.onsubmit=function()
{
document.getElementById(inputId).focus();document.getElementById("typeaheadfocusdump").form.onsubmit=blockSub;return false;};document.getElementById("typeaheadfocusdump").focus();};};function InputHandler(inputId, peoplePickerUrl, showAwareness, showPeopleMenu, maxRows)
{
this.index=0;this.getInput=true;this.inputId=inputId;this.menu=null;this.lastPolled="";this.changedIndex=0;this.showAwareness=showAwareness;this.showPeopleMenu=showPeopleMenu;this.peoplePickerArgs=new Object();this.peoplePickerArgs.url=peoplePickerUrl;this.peoplePickerArgs.window=window;this.maxRows=maxRows;this.captureKeys=function(event)
{
if (this.menu != null && this.menu.isVisible && !this.menu.isEmpty && !event.shiftKey)
{
if (event.keyCode == 40)
{
var curMenu=this.menu;if (this.menu.selectedItem.submenu != null &&
this.menu.selectedItem.submenu.isVisible)
{
curMenu=this.menu.selectedItem.submenu;}if (curMenu.selectedItem == null)
{
curMenu.items[0].setSelected(true);}else if (curMenu.selectedItem.getNextItem() != null)
{
curMenu.selectedItem.getNextItem().setSelected(true);}return blockkeypress(this.inputId);}else if (event.keyCode == 38)
{
var curMenu=this.menu;if (this.menu.selectedItem.submenu != null &&
this.menu.selectedItem.submenu.isVisible)
{
curMenu=this.menu.selectedItem.submenu;}if (curMenu.selectedItem == null)
{
curMenu.items[curMenu.items.length - 1].setSelected(true);}else if (curMenu.selectedItem.getPrevItem() != null)
{
curMenu.selectedItem.getPrevItem().setSelected(true);}return blockkeypress(this.inputId);}else if (event.keyCode == 39)
{
var item=this.menu.selectedItem;if (item.showPeopleMenu)
{
if (item.submenu != null)
{
if (!item.submenu.isVisible)
{
item.submenu.show(item.anchorTag, item);item.submenu.items[0].anchorTag.focus();return blockkeypress(this.inputId);}}else
{
var counter=awarenessController.getCounter();awarenessController.registerPerson(item.data.getEmail(), "EMAIL", item.data.getName(), item.data.getIMLogin(), counter, false, null, null);var menu=invokePersonTagMenu(counter, item.arrowTag, true);item.submenu=menu;item.submenu.items[0].anchorTag.focus();return blockkeypress(this.inputId);};}}else if (event.keyCode == 37)
{
var item=this.menu.selectedItem;if (item.submenu != null &&
item.submenu.isVisible)
{
item.submenu.hide(item.anchorTag, item);return blockkeypress(this.inputId);}}else if (event.keyCode == 13)
{
var curMenu=this.menu;if (this.menu.selectedItem.submenu != null &&
this.menu.selectedItem.submenu.isVisible)
{
curMenu=this.menu.selectedItem.submenu;}if (curMenu.selectedItem != null)
{
eval(curMenu.selectedItem.clientAction);if (curMenu.selectedItem.action != null)
{
if (curMenu.selectedItem.action.indexOf("javascript:") == 0)
{
eval(curMenu.selectedItem.action);}}}curMenu.hide();return blockkeypress(this.inputId);}}var input=document.getElementById(this.inputId);var size=40;if (input.size != null)
{
size=input.size;}if (this.maxRows > 1 &&
input.value.length > (size * .8))
{
var newnode=document.createElement("textarea");newnode.className='wpsEditField';newnode.rows=this.maxRows;if (input.size != null &&
input.size > 0)
{
newnode.cols=input.size;}newnode.value=input.value;newnode.onkeydown=input.onkeydown;newnode.id=input.id;newnode.name=input.name;newnode.autocomplete="OFF";newnode.style=input.style;this.maxRows=-1;input.parentNode.replaceChild(newnode, input);if (isGecko())
{
newnode.focus();}else
{
setTimeout("document.getElementById('" + input.id + "').focus();" +
"document.getElementById('" + input.id + "').value=document.getElementById('" + input.id + "').value", 100);};}};this.parseLastName=function()
{
var inputString=document.getElementById(this.inputId).value;var startIndex=inputString.substring(0, this.changedIndex+1).lastIndexOf(",") + 1;var endIndex=inputString.substring(this.changedIndex+1).indexOf(",");if (endIndex == -1)
{
endIndex=inputString.length;}else
{
endIndex=endIndex + this.changedIndex+1;}inputString=inputString.substring(startIndex, endIndex);startIndex=0;while (startIndex < inputString.length &&
(inputString.charAt(startIndex) == ' ' ||
inputString.charAt(startIndex) == '\r' ||
inputString.charAt(startIndex) == '\n')
)
{
startIndex=startIndex + 1;};endIndex=inputString.length - 1;while (endIndex < inputString.length &&
(inputString.charAt(endIndex) == ' ' ||
inputString.charAt(endIndex) == '\r' ||
inputString.charAt(endIndex) == '\n')
)
{
endIndex=endIndex - 1;};var lastName="";if (startIndex < (endIndex + 1))
{
lastName=inputString.substring(startIndex, endIndex+1);}return lastName;};this.pollInput=function()
{
var inputString=document.getElementById(this.inputId).value;if (inputString != this.lastPolled)
{
for (var i=1; i <= inputString.length; i++)
{
if (i >= this.lastPolled.length ||
this.lastPolled.charAt(this.lastPolled.length - i) != inputString.charAt(inputString.length - i))
{
this.changedIndex=inputString.length - i;break;}};this.lastPolled=inputString;inputString=this.parseLastName().toLowerCase();if (inputString == '')
{
if (this.menu != null)
{
this.menu.hide();}return;}var result=null;if(inputString != null && inputString.length>0)
{
result=new Array();for(x=0; x < InputHandler_pabData.length; x++)
{
var pabEntry=InputHandler_pabData[x];var matchString=("\"" + pabEntry.getName() + "\" <" + pabEntry.getEmail() + ">").toLowerCase();if (matchString.indexOf(inputString) == 0 ||
matchString.indexOf(" " + inputString) != -1 ||
matchString.indexOf("\"" + inputString) != -1 ||
matchString.indexOf("<" + inputString) != -1)
{
result[result.length]=pabEntry;}};}this.createMenu(result);document.getElementById(this.inputId).focus();}};this.createMenu=function (data)
{
if (data != null)
{
var menuID="jave" + awarenessController.getRandomSeed();var isLTR=awarenessController.getLTR();this.menu=InputHandler_createTypeAheadContextMenu(menuID, isLTR);for (var i=0;i < data.length;i++)
{
var menuItem=InputHandler_createTypeAheadMenuItem(data[i], this);this.menu.add(menuItem);};if ((this.peoplePickerArgs.url != null) &&
(typeof openModalDialog != "undefined"))
{
var fullSearchJs="pickerResultsFunctionIndex="+this.index+";openTypeAheadPeoplePicker();";var fullSearchMenuItem=new UilMenuItem("Do full search on: <b>" + this.parseLastName().replace(/&/g, "&amp;").replace(/</g, "&lt;") + "</b>", true, '', fullSearchJs, null, null, false,'lwpMenuItem', 'lwpSelectedMenuItem');fullSearchMenuItem.superclass_create=fullSearchMenuItem.create;fullSearchMenuItem.create=function(menuHasIcon, menuHasSubmenu)
{
this.superclass_create(menuHasIcon, false);if (showPeopleMenu)
{
var submenuArrow=document.createElement("TD");this.itemTag.appendChild(submenuArrow);}};var icon=awarenessController.getIconDirectory() + "Search_Task.gif";fullSearchMenuItem.icon=icon;this.menu.add(fullSearchMenuItem);}var iconDirectory=awarenessController.getIconDirectory();var transparentImage=iconDirectory + 'ClearPixel.gif';var downArrow=iconDirectory + 'MenuDropdown.gif';var normArrow=iconDirectory +'MenuDropdown.gif'
contextMenuSetArrowIconDimensions(16,16);contextMenuSetIcons(transparentImage,
transparentImage, downArrow, downArrow,
downArrow, downArrow,
downArrow, downArrow, downArrow,
downArrow, downArrow);contextMenuShow(menuID, false, false, document.getElementById(this.inputId), true);}};this.returnArrayValues=function(people)
{
for (var i=0; i < people.length; i++)
{
this.returnValue(people[i].name, people[i].email);};};this.returnValue=function (name, email)
{
var newPerson="\"" + name + "\" <" + email + ">";var inputString=document.getElementById(this.inputId).value;var startIndex=inputString.substring(0, this.changedIndex+1).lastIndexOf(",") + 1;var preString=inputString.substring(0, startIndex);if (preString.length > 0)
{
preString=preString + " ";}var endIndex=inputString.substring(this.changedIndex+1).indexOf(",");if (endIndex == -1)
{
endIndex=inputString.length;}else
{
endIndex=endIndex + this.changedIndex + 2;}var postString=inputString.substring(endIndex);if (postString.charAt(0) == " ")
{
postString=postString.substring(1);}var retVal=preString + newPerson + ", " + postString;document.getElementById(this.inputId).value=retVal;this.changedIndex=retVal.length;this.lastPolled=retVal;this.menu.hide();};InputHandler_registerInputHandler(this);};function PabEntry()
{
this.setName=function (displayName) {
this.name=displayName;};this.setEmail=function (inputEmail) {
this.email=inputEmail;};this.setLocation=function (location) {
this.location=location;};this.setIMLogin=function (login) {
this.IMLogin=login;};this.getName=function () {
return(this.name);};this.getEmail=function () {
return(this.email);};this.getLocation=function() {
return (this.location);};this.getIMLogin=function () {
return(this.IMLogin);};};function InputHandler_createTypeAheadContextMenu(name, isLTR, width)
{
var menu=new UilContextMenu(name, isLTR, width);menu.superclass_show=menu.show;menu.show=function (launcher, launchItem)
{
this.superclass_show(launcher, launchItem);document.onmousedown=InputHandler_documentOnMouseDown;if (this.isEmpty)
{
this.hide();}else
{
if (this.launcher.tagName == "INPUT" ||
this.launcher.tagName == "TEXTAREA")
{
var launcherLeft=getLeft(this.launcher, true);var menuHeight=getHeight(this.menuTag);var maxY=document.documentElement.scrollTop + document.documentElement.clientHeight;var maxY2=document.body.scrollTop + document.body.clientHeight;if (maxY2 > maxY) maxY=maxY2;posX=launcherLeft;if (!this.isLTR)
{
posX+=getWidth(this.launcher) - getWidth(this.menuTag);}posY=getTop(this.launcher, true);if (posY + menuHeight > maxY)
{
posY -= menuHeight;}else
{
posY+=getHeight(this.launcher);}this.menuTag.style.left=posX + "px";this.menuTag.style.top=posY + "px";var itemCount=this.hiddenItems.length;for (i=0; i<itemCount; i++)
{
var item=this.hiddenItems.pop();item.style.visibility="visible";};var coll=document.getElementsByTagName("SELECT");if (coll!=null)
{
for (i=0; i<coll.length; i++)
{
if (intersect(this.menuTag,coll[i]) &&
coll[i].style.visibility != "hidden")
{
coll[i].style.visibility="hidden";this.hiddenItems.push(coll[i]);}};}}this.launcher.focus();};};menu.superclass_create=menu.create;menu.create=function (recurse)
{
this.superclass_create (recurse);if (this.menuTag != null)
{
this.menuTag.onmouseover=null;this.menuTag.onmouseout=null;}};allMenus_[allMenus_.length]=menu;return menu;};function InputHandler_typeAheadMenuItemLaunchAction(inputHandler, event)
{
if (visibleMenu_ != null)
{
var item=visibleMenu_.selectedItem;if (inputHandler.showPeopleMenu &&
getEventTarget(event) == item.arrowTag)
{
if (item.submenu != null)
{
if (item.submenu.isVisible)
{
item.submenu.hide(item.anchorTag, item);}else
{
item.submenu.show(item.anchorTag, item);};}else
{
var counter=awarenessController.getCounter();awarenessController.registerPerson(item.data.getEmail(), "EMAIL", item.data.getName(), item.data.getIMLogin(), counter, false, null, null);var menu=invokePersonTagMenu(counter, item.arrowTag, true);item.submenu=menu;};document.onmousedown=InputHandler_documentOnMouseDown;}else
{
hideCurrentContextMenu(true);if (item.clientAction != null) {
eval(item.clientAction);}if (item.action != null)
{
if (item.action.indexOf("javascript:") == 0)
{
eval(item.action);}}};}};function InputHandler_documentOnMouseDown(event)
{
if (!getEventTarget(event).src)
{
hideCurrentContextMenu(true);}};function getEventTarget(event)
{
if (isGecko())
{
return event.target;}else
{
return window.event.srcElement;}};
// Copyright IBM Corp. 2002, 2008  All Rights Reserved.
var visibleMenu_=null;var padding_=10;var transImg_="transparent.gif";var arrowNorm_="contextArrowDefault.gif";var arrowSel_="contextArrowSelected.gif";var arrowDis_="contextArrowDisabled.gif";var launchNorm_="contextLauncherDefault.gif";var launchSel_="contextLauncherSelected.gif";var arrowNormRTL_="contextArrowDefault.gif";var arrowSelRTL_="contextArrowSelected.gif";var arrowDisRTL_="contextArrowDisabled.gif";var launchNormRTL_="contextLauncherDefault.gif";var launchSelRTL_="contextLauncherSelected.gif";var defaultContextMenuBorderStyle_="lwpShadowBorder";var defaultContextMenuTableStyle_="lwpBorderAll";var arrowWidth_="12";var arrowHeight_="12";var submenuAltText_="+";var defaultNoActionsText_="(0)";var defaultNoActionsTextStyle_="lwpMenuItemDisabled";var hideCurrentMenuTimer_=null;var onmousedown_=document.onmousedown;function clearMenuTimer() {
if (null != hideCurrentMenuTimer_) {
clearTimeout(hideCurrentMenuTimer_);hideCurrentMenuTimer_=null;}};function setMenuTimer() {
clearMenuTimer();hideCurrentMenuTimer_=setTimeout('hideCurrentContextMenu()', 2000);};function debug(str) {
};function UilContextMenu(name, isLTR, width, borderStyle, tableStyle, emptyMenuText, emptyMenuTextStyle) {
this.name=name;this.items=new Array();this.isVisible=false;this.isDismissable=true;this.selectedItem=null;this.isDynamic=false;this.isCacheable=false;this.isEmpty=true;this.isLTR=isLTR;this.hiddenItems=new Array();this.isHyperlinkChild=true;this.launcher=null;this.menuTag=null;if (borderStyle != null)
{
this.menuBorderStyle=borderStyle;}else
{
this.menuBorderStyle=defaultContextMenuBorderStyle_;}if (tableStyle != null)
{
this.menuTableStyle=tableStyle;}else
{
this.menuTableStyle=defaultContextMenuTableStyle_;}if (emptyMenuText != null)
{
this.noActionsText=emptyMenuText;}else
{
this.noActionsText=defaultNoActionsText_;}if (emptyMenuTextStyle != null)
{
this.noActionsTextStyle=emptyMenuTextStyle;}else
{
this.noActionsTextStyle=defaultNoActionsTextStyle_;}this.add=UilContextMenuAdd;this.addSeparator=UilContextMenuAddSeparator;this.show=UilContextMenuShow;this.hide=UilContextMenuHide;this.create=UilContextMenuCreate;this.getMenuItem=UilContextMenuGetMenuItem;this.getSelectedItem=UilContextMenuGetSelectedItem;if (this.name == null) {
this.name="UilContextMenu_" + allMenus_.length;}};function UilContextMenuAdd(item) {
this.items[this.items.length]=item;this.isEmpty=false;};function UilContextMenuAddSeparator() {
var sep=new UilMenuItem();sep.isSeparator=true;this.add(sep);};function UilContextMenuShow(launcher, launchItem) {
if (this.items.length == 0) {
debug('menu is empty!');this.add(new UilMenuItem(this.noActionsText, false, "javascript:void(0);", null, null, null, null, this.noActionsTextStyle));this.isEmpty=true;}if (this.menuTag == null) {
this.create();} else {
this.menuTag.style.left=""; //196195 //Reset
this.menuTag.style.top=""; //196195 //Reset
this.menuTag.style.width=""; //"0px"; //196195 //Reset
this.menuTag.style.height=""; //196195 //Reset
this.menuTag.style.overflow="visible"; //196195 //Reset, No horizontal and vertical scrollbars
};if (this.menuTag != null) {
this.launcher=launcher;if (this.launcher.tagName == "IMG") {
this.isHyperlinkChild=false;this.launcher=this.launcher.parentNode;}var bd=new ContextMenuBrowserDimensions();var maxX=bd.getScrollFromLeft() + bd.getViewableAreaWidth();var maxY=bd.getScrollFromTop() + bd.getViewableAreaHeight();var minX=bd.getScrollFromLeft();var minY=bd.getScrollFromTop();debug('max: ' + maxX + ', ' + maxY);var menuWidth=getWidth(this.menuTag);var menuHeight=getHeight(this.menuTag);var posX=0;var posY=0;var fUseUpperY=false;var maxUpperPosY=0;if (launchItem != null) {
var launchTag=launchItem.itemTag;var launchTagWidth=getWidth(launchTag);var parentTag=launchItem.parentMenu.menuTag;var launchOffsetX=getLeft(parentTag);var launchOffsetY=getTop(parentTag);posX=launchOffsetX + getLeft(launchTag) + launchTagWidth;posY=launchOffsetY + getTop(launchTag);if (!this.isLTR) {
posX -= launchTagWidth;posX -= menuWidth;}if (this.isLTR) {
if (posX + menuWidth > maxX) {
var posX1=launchOffsetX - menuWidth;var posX2=maxX - menuWidth;if (0 <= posX1) {
posX=posX1;}else {
posX=Math.max(minX, posX2);}}}else {
if (posX < 0) {
var posX1=launchOffsetX + launchTagWidth;if (posX1 + menuWidth < maxX) {
posX=posX1;}else {
posX=Math.min(maxX, maxX - menuWidth);}}};if (posY + menuHeight > maxY) {
var posY1=maxY - menuHeight;posY=Math.max(minY, posY1);}}else {
var launcherLeft=getLeft(this.launcher, true)
if (this.launcher.tagName == "BUTTON") {
posX=launcherLeft;if (!this.isLTR) {
posX+=getWidth(this.launcher) - menuWidth;}if (this.isLTR) {
if ((posX + menuWidth) > maxX) {
if ((posX + getWidth(this.launcher)) > maxX) {
posX=Math.max(minX, maxX - menuWidth);}else
posX=Math.max(minX, posX + getWidth(this.launcher) - menuWidth);}else if (posX < minX) {
posX=minX;}}else{
if (posX < minX) {
if ((launcherLeft > minX) && ((launcherLeft + menuWidth) < maxX)) {
posX=launcherLeft;}else{
posX=Math.min(minX, maxX - menuWidth);}}else if ((posX + menuWidth) > maxX) {
if (Math.min(posX, maxX - menuWidth) >= minX)
posX=Math.min(posX, maxX - menuWidth);}}maxUpperPosY=getTop(this.launcher, true);var upperVisibleHeight=maxUpperPosY - minY;posY=getTop(this.launcher, true) + getHeight(this.launcher);var lowerVisibleHeight=maxY - posY;if ((posY + menuHeight > maxY) && (lowerVisibleHeight < upperVisibleHeight)) {
posY -= (menuHeight + getHeight(this.launcher));fUseUpperY=true;}if (posY < minY) {
posY=minY;}}else {
posX=launcherLeft + this.launcher.offsetWidth;posY=getTop(this.launcher, true);if (!this.isLTR) {
posX -= this.launcher.offsetWidth;posX -= menuWidth;}if (this.isLTR) {
if (posX + menuWidth > maxX) {
var posX1=launcherLeft - menuWidth;if (posX1 > 0) {
posX=posX1;}else {
posX=Math.max(minX, maxX - menuWidth);}}}else {
if (posX < minX) {
var posX1=launcherLeft + this.launcher.offsetWidth;if (posX1 + menuWidth < maxX) {
posX=posX1;}else {
posX=Math.min(minX, maxX - menuWidth);}}};if (posY + menuHeight > maxY) {
posY=Math.max(minY, maxY - menuHeight);}}if (((posX + menuWidth) > maxX) ||
(((posY + menuHeight) > maxY) && (fUseUpperY == false)) ||
(((posY + menuHeight) > maxUpperPosY) && (fUseUpperY == true))) {
if (posX + menuWidth > maxX) {
this.menuTag.style.width=(maxX - posX) + "px";}else{
this.menuTag.style.width=menuWidth + "px";};if (fUseUpperY == false) {
if (posY + menuHeight > maxY) {
this.menuTag.style.height=(maxY - posY) + "px";}else {
this.menuTag.style.height=menuHeight + "px";};} else {
if (posY + menuHeight > maxUpperPosY) {
this.menuTag.style.height=(maxUpperPosY - posY) + "px";}else {
this.menuTag.style.height=menuHeight + "px";};};this.menuTag.style.overflow="auto";} else {
this.menuTag.style.width=menuWidth + "px";this.menuTag.style.height=menuHeight + "px";this.menuTag.style.overflow="visible"; //196195
};};debug('show ' + this.name + ': ' + posX + ', ' + posY);this.menuTag.style.left=posX + "px";this.menuTag.style.top=posY + "px";this.menuTag.style.visibility="visible";this.isVisible=true;this.items[0].setSelected(true);this.items[0].anchorTag.focus();var coll=document.getElementsByTagName("SELECT");if (coll!=null)
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
coll[i].style.visibility="hidden";this.hiddenItems.push(coll[i]);}}};}onmousedown_=document.onmousedown;document.onmousedown=hideCurrentContextMenu;}};function intersect(obj1 , obj2)
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
var item=this.hiddenItems.pop();item.style.visibility="visible";};this.launcher=null;document.onmousedown=onmousedown_;}};function UilContextMenuCreate(recurse) {
if (this.menuTag == null) {
this.menuTag=document.createElement("DIV");this.menuTag.style.position="absolute";this.menuTag.style.cursor="default";this.menuTag.style.visibility="hidden";this.menuTag.onmouseover=contextMenuDismissDisable;this.menuTag.onmouseout=contextMenuDismissEnable;this.menuTag.oncontextmenu=contextMenuOnContextMenu;var numItems=this.items.length;var hasIcon=false;var hasSubmenu=false;for (var i=0; i<numItems; i++) {
if (!this.items[i].isSeparator) {
if (!hasSubmenu && this.items[i].submenu != null) {
hasSubmenu=true;}if (!hasIcon && this.items[i].icon != null) {
hasIcon=true;}if (hasSubmenu && hasIcon) {
break;}}};for (var i=0; i<numItems; i++) {
this.items[i].isFirst=(i == 0);this.items[i].isLast=(i+1 == numItems);this.items[i].parentMenu=this;this.items[i].create(hasIcon, hasSubmenu);};var border=document.createElement("TABLE");if (!this.isLTR) border.dir="RTL";border.rules="none";border.cellPadding=0;border.cellSpacing=0;border.border=0;var borderBody=document.createElement("TBODY");var borderRow=document.createElement("TR");var borderData=document.createElement("TD");var borderDiv=document.createElement("DIV"); //@04A
borderDiv.className=this.menuBorderStyle;borderData.appendChild(borderDiv);borderRow.appendChild(borderData);borderBody.appendChild(borderRow);border.appendChild(borderBody);var table=document.createElement("TABLE");if (!this.isLTR) table.dir="RTL";table.rules="none";table.cellPadding=0;table.cellSpacing=0;table.width="100%";table.border=0;var tableBody=document.createElement("TBODY");table.appendChild(tableBody);var table2=document.createElement("TABLE");if (!this.isLTR) table2.dir="RTL";table2.rules="none";table2.cellPadding=0;table2.cellSpacing=0;table2.width="100%";table2.border=0;var tableRow=document.createElement("TR");var tableData=document.createElement("TD");var tableDiv=document.createElement("DIV");tableDiv.className=this.menuTableStyle;var tableBody2=document.createElement("TBODY");tableBody.appendChild(tableRow);tableRow.appendChild(tableData);tableData.appendChild(tableDiv);tableDiv.appendChild(table2);table2.appendChild(tableBody2);for (var i=0; i<numItems; i++) {
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
this.text=text;this.icon=icon;this.action=action;this.clientAction=clientAction;this.submenu=submenu;this.isSeparator=false;this.isSelected=false;this.isEnabled=(enabled != null) ? enabled : true;this.isDefault=(defItem != null) ? defItem : false;this.isFirst=false;this.isLast=false;this.parentMenu=null;if (menuStyle != null) {
this.menuStyle=menuStyle;}else {
this.menuStyle=(this.isEnabled) ? "lwpMenuItem" : "lwpMenuItemDisabled";}this.selectedMenuStyle=(selectedMenuStyle != null) ? selectedMenuStyle : "lwpSelectedMenuItem";this.itemTag=null;this.anchorTag=null;this.arrowTag=null;this.create=UilMenuItemCreate;this.createSeparator=UilMenuItemCreateSeparator;this.setSelected=UilMenuItemSetSelected;this.updateStyle=UilMenuItemUpdateStyle;this.getNextItem=UilMenuItemGetNextItem;this.getPrevItem=UilMenuItemGetPrevItem;if (this.submenu != null) {
this.action=null;}};function UilMenuItemCreate(menuHasIcon, menuHasSubmenu) {
if (!this.isSeparator) {
this.anchorTag=document.createElement("A");if (this.action != null) {
this.anchorTag.href="javascript:menuItemLaunchAction();";if (this.clientAction != null) {
this.anchorTag.onclick=this.clientAction;}}else if (this.submenu != null) {
this.anchorTag.href="javascript:void(0);";this.anchorTag.onclick=menuItemShowSubmenu;}else if (this.clientAction != null) {
this.anchorTag.href="javascript:menuItemLaunchAction();";this.anchorTag.onclick=this.clientAction;}this.anchorTag.onfocus=menuItemFocus;this.anchorTag.onblur=menuItemBlur;this.anchorTag.onkeydown=menuItemKeyDown;this.anchorTag.innerHTML=this.text;this.anchorTag.title=this.text;this.anchorTag.className=this.menuStyle;if (this.isDefault) {
this.anchorTag.style.fontWeight="bold";}var td=document.createElement("TD");td.noWrap=true;td.style.padding="3px";td.appendChild(this.anchorTag);var leftPad=document.createElement("TD");leftPad.noWrap=true;leftPad.innerHTML="&nbsp;";leftPad.style.padding="3px";if (this.icon != null) {
var imgTag=document.createElement("IMG");imgTag.src=this.icon;if (imgTag.src == "" || imgTag.src == null) {
var imgTag1="<img src=\"" + this.icon + "\"";if (this.text != null) {
imgTag1+=" alt=\'" + this.text + "\'";imgTag1+=" title=\'" + this.text + "\'";}imgTag1+="/>";leftPad.innerHTML=imgTag1;} else {
if (this.text != null) {
imgTag.alt=this.text;imgTag.title=this.text;}leftPad.appendChild(imgTag);}}else {
leftPad.width=padding_;};var rightPad=document.createElement("TD");rightPad.noWrap=true;rightPad.width=padding_;rightPad.innerHTML="&nbsp;";rightPad.style.padding="3px";this.itemTag=document.createElement("TR");this.itemTag.onmousemove=menuItemMouseMove;this.itemTag.onmousedown=menuItemLaunchAction;this.itemTag.className=this.menuStyle;this.itemTag.appendChild(leftPad);this.itemTag.appendChild(td);this.itemTag.appendChild(rightPad);if (menuHasSubmenu) {
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
}var td=document.createElement("TD");td.noWrap=true;td.width="100%";td.height="1px";td.colSpan=numCols;tr.appendChild(td);tableBody.appendChild(tr);};};function UilMenuItemSetSelected(isSelected) {
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
visibleMenu_.launcher.focus();hideCurrentContextMenu(true);};return false;break;case 40:
next=item.getNextItem();if (next != null) {
next.anchorTag.focus();}else if (item.parentMenu != visibleMenu_) {
item.parentMenu.launcher.focus();item.parentMenu.hide();}else {
visibleMenu_.launcher.focus();hideCurrentContextMenu(true);};return false;break;case 39:
if (visibleMenu_.isLTR) {
if (item.submenu != null) {
menuItemShowSubmenu(evt);item.submenu.items[0].anchorTag.focus();}}else {
if (item.parentMenu != visibleMenu_) {
item.parentMenu.launcher.focus();item.parentMenu.hide();}};return false;break;case 37:
if (visibleMenu_.isLTR) {
if (item.parentMenu != visibleMenu_) {
item.parentMenu.launcher.focus();item.parentMenu.hide();}}else {
if (item.submenu != null) {
menuItemShowSubmenu(evt);item.submenu.items[0].anchorTag.focus();}};return false;break;case 9:
visibleMenu_.launcher.focus();hideCurrentContextMenu(true);break;case 27:
visibleMenu_.launcher.focus();hideCurrentContextMenu(true);break;case 13:
break;default:
break;};}};function menuItemMouseMove(evt) {
if (visibleMenu_ != null) {
var item=visibleMenu_.getMenuItem(evt.target);if (item != null) {
if (!item.isSelected) {
item.anchorTag.focus();}if (item.submenu != null && !item.submenu.isVisible && item.isEnabled) {
item.submenu.show(item.anchorTag, item);}}}};function menuItemMouseDown(evt) {
menuItemLaunchAction();};var allMenus_=new Array();function createContextMenu(name, isLTR, width, borderStyle, tableStyle, noActionsText, noActionsTextStyle) {
var menu=new UilContextMenu(name, isLTR, width, borderStyle, tableStyle, noActionsText, noActionsTextStyle);allMenus_[allMenus_.length]=menu;return menu;};function getContextMenu(name) {
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
if (visibleMenu_.isVisible) {
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
submenu=cloneMenu(item.submenu, submenuName, cache);}var clone=new UilMenuItem(item.text, item.isEnabled, item.action, item.clientAction, submenu, item.icon, null, null, null);clone.isEnabled=item.isEnabled;clone.isSelected=item.isSelected;clone.isSeparator=item.isSeparator;return clone;};ContextMenuBrowserDimensions.prototype=new Object();ContextMenuBrowserDimensions.prototype.constructor=ContextMenuBrowserDimensions;ContextMenuBrowserDimensions.superclass=null;function ContextMenuBrowserDimensions(){
this.body=document.body;if (this.isStrictDoctype() && !this.isSafari()) {
this.body=document.documentElement;}};ContextMenuBrowserDimensions.prototype.getScrollFromLeft=function(){
return this.body.scrollLeft ;};ContextMenuBrowserDimensions.prototype.getScrollFromTop=function(){
return this.body.scrollTop ;};ContextMenuBrowserDimensions.prototype.getViewableAreaWidth=function(){
return this.body.clientWidth ;};ContextMenuBrowserDimensions.prototype.getViewableAreaHeight=function(){
return this.body.clientHeight ;};ContextMenuBrowserDimensions.prototype.getHTMLElementWidth=function(){
return this.body.scrollWidth ;};ContextMenuBrowserDimensions.prototype.getHTMLElementHeight=function(){
return this.body.scrollHeight ;};ContextMenuBrowserDimensions.prototype.isStrictDoctype=function(){
return (document.compatMode && document.compatMode != "BackCompat");};ContextMenuBrowserDimensions.prototype.isSafari=function(){
return (navigator.userAgent.toLowerCase().indexOf("safari") >= 0);};
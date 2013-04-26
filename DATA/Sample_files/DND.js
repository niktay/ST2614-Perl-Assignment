// Copyright IBM Corp. 2002, 2008  All Rights Reserved.
var DNDZindex=300;var DNDMoveBackTime=500;var DNDProximity=15;var DNDClickTimeout=1000;function DNDMouseUp(e) {
if (document._DNDBroker == null) {
alert("illegal state");}document.omu=document._DNDBroker.originalMouseUp;document._DNDBroker.drop();if (document.omu != null) {
document.omu(e);document.omu=null;}};function DNDMouseMove(e) {
if (document._DNDBroker == null) {
alert("illegal state");}if (!isMozilla()) {
if (document.selection && document.selection.empty) {
document.selection.empty();}}var mx=isMozilla() ? e.clientX : event.clientX;var my=isMozilla() ? e.clientY : event.clientY;document._DNDBroker.move(mx, my);if (document._DNDBroker.originalMouseMove != null) {
document._DNDBroker.originalMouseMove(e);}};function isMozilla() {
return document.getElementById && !document.all;};function isCtrlDepressed(){
return document._CtrlKeyDepressed;};function keydown(e){
if (!e) {
e=window.event;}if (e.ctrlKey && !isCtrlDepressed()) {
document._CtrlKeyDepressed=true;for (var i=0; i < window.frames.length; i++) {
try {
window.frames[i].document._CtrlKeyDepressed=true;} catch(err) {
};};setTimeout("document._CtrlKeyDepressed=false;", 500);}if (document._DNDBroker.oldOnKeyDown != null) {
document._DNDBroker.oldOnKeyDown();}};function keyup(e){
if (!e) {
e=window.event;}if (e.keyCode == 17 || e.ctrlKey) {
document._CtrlKeyDepressed=false;for (var i=0; i < window.frames.length; i++) {
window.frames[i].document._CtrlKeyDepressed=false;};}if (document._DNDBroker.oldOnKeyUp != null) {
document._DNDBroker.oldOnKeyUp();}};function setDNDMoveCursor(){
if (document.body.style.cursor != "move") {
document.body.style.cursor="move";}};function setDNDNoCursor(){
if (document.body.style.cursor != "not-allowed") {
document.body.style.cursor="not-allowed";}};function setDNDNormalCursor(){
if (document.body.style.cursor != "") {
document.body.style.cursor="";}};function setDNDDragHandleEventHandlers(idOfDragHandle, idOfDragSource){
var elem=document.getElementById(idOfDragHandle);elem.onmousedown=function (e) {   var event=e;if (event == null) {
event=window.event;}document._DNDBroker.beginDrag(idOfDragSource, event.clientX, event.clientY);return false;};elem.onmouseover=setDNDMoveCursor;elem.onmouseout=setDNDNormalCursor;elem.ondragstart=function() { return false; };};function removeDNDDragHandleEventHandlers(idOfDragHandle){
var elem=document.getElementById(idOfDragHandle);elem.onmousedown=null;elem.onmouseover=null;elem.onmouseout=null;elem.ondragstart=null;};function DNDCopyToParent(dndSrc){
var parentDoc=window.frames["top"].document;if(parent.federation_iframe) {parentDoc=parent.federation_iframe.document;}var srcDiv=document.getElementById(dndSrc.getId());var newDiv=parentDoc.createElement("div");parentDoc.body.appendChild(newDiv);dndSrc.id=dndSrc.getId() + "_frame";parentDoc._DNDBroker.registerSource(dndSrc);newDiv.setAttribute("id", dndSrc.getId());newDiv.className=dndSrc.getCssClassName();newDiv.fromChildFrame="true";newDiv.innerHTML=srcDiv.innerHTML;newDiv.mouseOffsetX=srcDiv.mouseOffsetX;newDiv.mouseOffsetY=srcDiv.mouseOffsetY;newDiv.style.visibility="hidden";parentDoc._DNDBroker.childFrame=window.frames["self"];};DNDBroker.prototype=new Object();DNDBroker.prototype.constructor=DNDBroker;DNDBroker.superclass=null;function DNDBroker() {
this.DNDSourceArray=new Array(0);this.DNDTargetArray=new Array(0);this.selectedSource=null;this.awareTargetsArray=null;this.multiselectSupport=new DNDMultiselectSupport();this.dndUtil=new DNDUtil();this.dynamicFunctions=new Array();this.sourceTgtArray=new Array(0);};DNDBroker.prototype.registerSource=function(dndSrc){
this.DNDSourceArray.push(dndSrc);};DNDBroker.prototype.deregisterSource=function(dndSrcId){
var tempArray=new Array();for (var i=0; i < this.DNDSourceArray.length; i++) {
if (this.DNDSourceArray[i].getId() != dndSrcId) {
tempArray.push(this.DNDSourceArray[i]);}};this.DNDSourceArray=tempArray;};DNDBroker.prototype.registerTarget=function(dndTgt){
this.DNDTargetArray.push(dndTgt);};DNDBroker.prototype.deregisterTarget=function(dndTgtId){
var tempArray=new Array();for (var i=0; i < this.DNDTargetArray.length; i++) {
if (this.DNDTargetArray[i].getId() != dndTgtId) {
tempArray.push(this.DNDTargetArray[i]);}};this.DNDTargetArray=tempArray;};DNDBroker.prototype.beginDrag=function(dndSrc_id, x, y, tgtArray){
this.sourceTgtArray=tgtArray;if (this.selectedSource != null) {
return false;}var docBody=(document.compatMode && document.compatMode != "BackCompat")? document.documentElement : document.body;this.currentPageX=docBody.scrollLeft + x;this.currentPageY=docBody.scrollTop + y;this.originalPageX=this.currentPageX;this.originalPageY=this.currentPageY;for (var i=0; i < this.DNDSourceArray.length; i++) {
if (this.DNDSourceArray[i].getId() == dndSrc_id) {
this.selectedSource=this.DNDSourceArray[i];break;}};if (this.selectedSource == null) {
return false;}if (!document.getElementById(dndSrc_id).fromChildFrame) {
this.doBeginDragMultiselectSupport();}this.doBeginDragTargetSelection();var selectedSourceIdArray=new Array(0);selectedSourceIdArray[0]=this.selectedSource.getId();if (this.multiselectSupport.hasSelections()) {
selectedSourceIdArray=this.multiselectSupport.getSelections();}var util=new DNDUtil();for (var i=0; i < selectedSourceIdArray.length; i++) {
var elem=document.getElementById(selectedSourceIdArray[i]);if (!elem.fromChildFrame) {
elem.mouseOffsetX=this.originalPageX - util.findOffsetX(elem);elem.mouseOffsetY=this.originalPageY - util.findOffsetY(elem);}};if (window.frames["top"] != window.frames["self"] && window.frames["self"].name == "wpsFLY_flyoutIFrame") {
var parentDoc=window.frames["top"].document;if(parent.federation_iframe) {parentDoc=parent.federation_iframe.document;}for (var i=0; i < selectedSourceIdArray.length; i++) {
var currentSource=null;for (var j=0; j < this.DNDSourceArray.length; j++) {
if (this.DNDSourceArray[j].getId() == selectedSourceIdArray[i]) {
currentSource=this.DNDSourceArray[j];break;}};var clonedDNDSource=new DNDSource(currentSource.getId(),
currentSource.getDNDProperties(),
currentSource.getCssClassName(),
currentSource.getDragClone(),
currentSource.getMultiselectable());DNDCopyToParent(clonedDNDSource);};if (this.multiselectSupport.hasSelections()) {
var newSSIdArray=new Array();for (var i=0; i < selectedSourceIdArray.length; i++) {
newSSIdArray[i]=selectedSourceIdArray[i] + "_frame";};parentDoc._DNDBroker.multiselectSupport.selected_src_ids=newSSIdArray;parentDoc._DNDBroker.multiselectSupport.selected_src_property_intersection=this.multiselectSupport.getProperties();}parentDoc._DNDBroker.beginDrag(dndSrc_id + "_frame", x, y);}this.dragCloneSupport=new DNDDragCloneSupport();this.dragCloneSupport.beginDrag(selectedSourceIdArray, this.selectedSource.getDragClone());this.doBeginDragBSPCreation();if (this.selectedSource.getCssClassName() != null) {
document.getElementById(this.selectedSource.getId()).className=this.selectedSource.getCssClassName();}if (this.selectedSource.hasOptionalOnDragJavascript()){
this.selectedSource.optionalOnDragJavascript();}this.originalMouseMove=document.onmousemove;this.originalMouseUp=document.onmouseup;document.onmousemove=DNDMouseMove;document.onmouseup=DNDMouseUp;setDNDNoCursor();};DNDBroker.prototype.doBeginDragBSPCreation=function(){
var seg_factory=new DNDSegmentFactory();var proximity=DNDProximity;this.DNDSegArray=new Array(0);this.DNDSegArray=seg_factory.createSegments(this.awareTargetsArray, proximity);this.DNDBsp=new DNDBsp();this.DNDBsp.create(this.DNDSegArray);};DNDBroker.prototype.doBeginDragMultiselectSupport=function(){
this.isClick=true;setTimeout("document._DNDBroker.isClick=false", DNDClickTimeout);if(this.selectedSource.getMultiselectable() && isCtrlDepressed()){
if (!this.multiselectSupport.alreadySelected(this.selectedSource.getId())) {
this.multiselectSupport.selectSource(this.selectedSource.getId(), this.selectedSource.getDNDProperties());}}else{
this.multiselectSupport.clearAllSelections();};};DNDBroker.prototype.doBeginDragTargetSelection=function(){
this.awareTargetsArray=new Array(0);var current_source_props=this.selectedSource.getDNDProperties();if (this.multiselectSupport.hasSelections()) {
current_source_props=this.multiselectSupport.getProperties();}for (var i=0; i < this.DNDTargetArray.length; i++) {
var current_target=this.DNDTargetArray[i];var current_target_actions=current_target.getActions();var target_matches=false;for (var j=0; j < current_target_actions.length; j++) {
var current_action_matches=true;var current_action_properties=current_target_actions[j].getDNDProperties();if (this.multiselectSupport.hasSelections()) {
if (!current_target_actions[j].getSupportsMultiselect()) {
current_action_matches=false;}}for (var k=0; k < current_action_properties.length; k++) {
var current_prop_matches=false;for (var l=0; l < current_source_props.length; l++){
if (current_source_props[l].matchesProperty(current_action_properties[k])) {
current_prop_matches=true;break;}};if (!current_prop_matches) {
current_action_matches=false;break;}};if (current_action_matches){
target_matches=true;current_target.active_action=current_target_actions[j];break;}};if (target_matches) {
this.awareTargetsArray.push(current_target);var elem=document.getElementById(current_target.getId());current_target.midpointX=this.dndUtil.findOffsetX(elem) + (elem.offsetWidth / 2);current_target.midpointY=this.dndUtil.findOffsetY(elem) + (elem.offsetHeight / 2);}};for (var i=0; i < this.awareTargetsArray.length; i++) {
var current_target_element=document.getElementById(this.awareTargetsArray[i].getId());if (null != this.awareTargetsArray[i].active_action.getAwareCssClassName()) {
current_target_element.className=this.awareTargetsArray[i].active_action.getAwareCssClassName();}};};DNDBroker.prototype.endDrag=function(){
if (document.onmousemove != this.originalMouseMove) {
document.onmousemove=this.originalMouseMove;document.onmouseup=this.originalMouseUp;}if (!this.slideBack()) {
return;}clearInterval(this.slideBackInterval);this.killDrag();};DNDBroker.prototype.drop=function(){
var doSubmit=false;if (this.activeTarget != null) {
doSubmit=true;if (this.activeTarget.active_action.hasOptionalActionJavascript()){
doSubmit=this.activeTarget.active_action.optionalActionJavascript();}if (doSubmit){
if (this.activeTarget.active_action.ALTERNATE_TARGET_SUBMIT_FUNC == null) {
this.doTargetSubmit();}else{
eval(this.activeTarget.active_action.ALTERNATE_TARGET_SUBMIT_FUNC);};}}if (!doSubmit) {
this.slideBackInterval=setInterval("document._DNDBroker.endDrag();", 10);}if (window.frames["top"] != window.frames["self"] &&
window.frames["self"].name == "wpsFLY_flyoutIFrame" &&
window.frames["top"].document._DNDBroker.childFrame != null) {
window.frames["top"].document._DNDBroker.killDrag();window.frames["top"].document._DNDBroker.childFrame=null;}};DNDBroker.prototype.killDrag=function(){
if (top == self) {
var newArray=new Array();for (var i=0; i < this.DNDSourceArray.length; i++) {
if (!(this.DNDSourceArray[i].getId().indexOf("_frame") > -1)) {
newArray.push(this.DNDSourceArray[i]);}};this.DNDSourceArray=newArray;}if (document.onmousemove != this.originalMouseMove) {
document.onmousemove=this.originalMouseMove;document.onmouseup=this.originalMouseUp;}if (this.selectedSource == null) {
return;}var selectedSourceIdArray=new Array(0);selectedSourceIdArray[0]=this.selectedSource.getId();if (this.multiselectSupport.hasSelections()) {
selectedSourceIdArray=this.multiselectSupport.getSelections();}this.dragCloneSupport.endDrag(selectedSourceIdArray, this.selectedSource.getDragClone());this.dragCloneSupport=null;if (this.isClick && this.selectedSource.getMultiselectable() && !this.multiselectSupport.alreadySelected(this.selectedSource.getId())) {
this.multiselectSupport.selectSource(this.selectedSource.getId(), this.selectedSource.getDNDProperties());}for (var i=0; i < this.awareTargetsArray.length; i++) {
var curr_tgt=document.getElementById(this.awareTargetsArray[i].getId());curr_tgt.className="";this.awareTargetsArray[i].active_action=null;};if (this.multiselectSupport.hasSelections()){
var source_ids=this.multiselectSupport.getSelections();if (document.getElementById(source_ids[0]) == null || document.getElementById(source_ids[0]).fromChildFrame) {
this.multiselectSupport=new DNDMultiselectSupport();}}if(this.selectedSource.id.indexOf("_frame") == -1){
document.getElementById(this.selectedSource.id).style.opacity=1;document.getElementById(this.selectedSource.id).style.filter='alpha(opacity=' + 100 + ')';}this.selectedSource=null;this.activeTarget=null;this.awareTargetsArray=null;this.formParamNames=null;this.formParamValues=null;this._frameOriginalX=null;this._frameOriginalY=null;setDNDNormalCursor();};DNDBroker.prototype.move=function(x, y){
var docBody=(document.compatMode && document.compatMode != "BackCompat")? document.documentElement : document.body;var pageX=docBody.scrollLeft + x;var pageY=docBody.scrollTop + y;this.currentPageX=pageX;this.currentPageY=pageY;if (!isMozilla() & this.isBidi) {
pageX=x;}var selectedSourceIdArray=new Array(0);selectedSourceIdArray[0]=this.selectedSource.getId();if (this.multiselectSupport.hasSelections()) {
selectedSourceIdArray=this.multiselectSupport.getSelections();}for (var i=0; i < selectedSourceIdArray.length; i++) {
var src_elem=document.getElementById(selectedSourceIdArray[i]);if (src_elem.fromChildFrame && this._frameOriginalX == null && this._frameOriginalY == null) {
this._frameOriginalX=this.currentPageX - (this.childFrame.document._DNDBroker.currentPageX - this.childFrame.document._DNDBroker.originalPageX);this._frameOriginalY=this.currentPageY - (this.childFrame.document._DNDBroker.currentPageY - this.childFrame.document._DNDBroker.originalPageY);if (this.childFrame != null) {
this.childFrame.document._DNDBroker.killDrag();this.childFrame=null;}}if (src_elem.style.visibility == "hidden") {
src_elem.style.visibility="visible";}if (!document._DNDBroker.isBidi) {
src_elem.style.left=(this.currentPageX - src_elem.mouseOffsetX) + "px";}else{
if (this.bd == null) {
this.bd=new DNDBrowserDimensions();}if (isMozilla() && !src_elem.fromChildFrame) {
src_elem.style.left=(this.currentPageX + src_elem.mouseOffsetX) + "px";}else if (!src_elem.fromChildFrame){
if (src_elem.xOffsetForBidiInIE == null) {
src_elem.xOffsetForBidiInIE=-1 * (this.bd.getHTMLElementWidth() - this.currentPageX);}src_elem.style.left=(-1 * (this.bd.getHTMLElementWidth() - this.currentPageX) - src_elem.xOffsetForBidiInIE) + "px";}else{
if (isMozilla()) {
src_elem.style.left=-1 * (this.bd.getHTMLElementWidth() - (this.currentPageX - src_elem.mouseOffsetX))  + "px";}else{
src_elem.style.left=-1 * (this.bd.getHTMLElementWidth() - this.currentPageX) + "px";};};};src_elem.style.top=(this.currentPageY - src_elem.mouseOffsetY) + "px";};if (this.awareTargetsArray != null && this.awareTargetsArray.length > 0) {
var previousActiveTarget=this.activeTarget;this.activeTarget=this.DNDBsp.getTarget(pageX,pageY);if (this.activeTarget != previousActiveTarget) {
if (previousActiveTarget != null) {
if (previousActiveTarget.active_action.getAwareCssClassName() != null) {
document.getElementById(previousActiveTarget.getId()).className=previousActiveTarget.active_action.getAwareCssClassName();}}if (this.activeTarget != null) {
if (this.activeTarget.active_action.getActiveCssClassName() != null) {
document.getElementById(this.activeTarget.getId()).className=this.activeTarget.active_action.getActiveCssClassName();}}}}if (this.activeTarget != null) {
setDNDMoveCursor();}else{
setDNDNoCursor();};};DNDBroker.prototype.doTargetSubmit=function(){
if(this.sourceTgtArray != null){
if((this.activeTarget.getId() == this.sourceTgtArray[0]) || (this.activeTarget.getId() == this.sourceTgtArray[1])){
this.slideBackInterval=setInterval("document._DNDBroker.endDrag();", 10);if (window.frames["top"] != window.frames["self"] &&
window.frames["self"].name == "wpsFLY_flyoutIFrame" &&
window.frames["top"].document._DNDBroker.childFrame != null) {
window.frames["top"].document._DNDBroker.killDrag();window.frames["top"].document._DNDBroker.childFrame=null;}return;}}var src_div=document.getElementById(this.selectedSource.getId());var formElem=document.createElement("form");src_div.appendChild(formElem);formElem.setAttribute("action", this.activeTarget.active_action.getAction());formElem.setAttribute("method", "POST");formElem.setAttribute("id", "DND_SUBMIT_FORM");var tgt_props=this.activeTarget.active_action.getDNDProperties();var src_props=this.selectedSource.getDNDProperties();if (this.multiselectSupport.hasSelections()) {
src_props=this.multiselectSupport.doDelimiterReplacement(this.multiselectSupport.getProperties(),
this.activeTarget.active_action.getMultiselectDelimiter());}for (var i=0; i < tgt_props.length; i++) {
var curr_prop=tgt_props[i];for (var j=0; j < src_props.length; j++) {
if (curr_prop.matchesProperty(src_props[j])) {
curr_prop.value=src_props[j].getValue();break;}};if (curr_prop != null && curr_prop.getName() != null && curr_prop.getValue() != null){
var inputElem=document.createElement("input");inputElem.setAttribute("type", "hidden");inputElem.setAttribute("name", curr_prop.getName());inputElem.setAttribute("value", curr_prop.getValue());formElem.appendChild(inputElem);}};if (this.formParamNames != null &&
this.formParamValues != null &&
this.formParamNames.length == this.formParamValues.length) {
for (var i=0; i < this.formParamNames.length; i++) {
var inputElem=document.createElement("input");inputElem.setAttribute("type", "hidden");inputElem.setAttribute("name", this.formParamNames[i]);inputElem.setAttribute("value", this.formParamValues[i]);formElem.appendChild(inputElem);};}formElem.submit();};DNDBroker.prototype.slideBack=function(){
var currentTime=new Date();if (!this.slidingBack) {
this.slidingBack=true;this.slidingBackBeginTime=currentTime.getTime();this.slidingBackEndTime=this.slidingBackBeginTime + DNDMoveBackTime;this.slidingBackOriginalX=this.currentPageX;this.slidingBackOriginalY=this.currentPageY;this.slidingBackDestinationX=this.originalPageX;this.slidingBackDestinationY=this.originalPageY;if (this._frameOriginalX != null && this._frameOriginalY != null) {
this.slidingBackDestinationX=this._frameOriginalX;this.slidingBackDestinationY=this._frameOriginalY;}}if (currentTime.getTime() > this.slidingBackEndTime || this.isClick) {
this.slidingBack=false;this.slidingBackBeginTime=null;this.slidingBackEndTime=null;this.slidingBackOriginalX=null;this.slidingBackOriginalY=null;this.slidingBackDestinationX=null;this.slidingBackDestinationY=null;return true;}var currentTimeMillis=currentTime.getTime();var fractionOfSlideTimePassed=(this.slidingBackEndTime - currentTimeMillis) / DNDMoveBackTime;var dX=Math.round((this.slidingBackOriginalX - this.slidingBackDestinationX) * fractionOfSlideTimePassed);var dY=Math.round((this.slidingBackOriginalY - this.slidingBackDestinationY) * fractionOfSlideTimePassed);if (this.selectedSource == null) {
return true;;}var selectedSourceIdArray=new Array(0);selectedSourceIdArray[0]=this.selectedSource.getId();if (this.multiselectSupport.hasSelections()) {
selectedSourceIdArray=this.multiselectSupport.getSelections();}for (var j=0; j < selectedSourceIdArray.length; j++) {
var elem=document.getElementById(selectedSourceIdArray[j]);if (!document._DNDBroker.isBidi) {
elem.style.left=(this.slidingBackDestinationX - elem.mouseOffsetX + dX) + "px";}else{
if (this.bd == null) {
this.bd=new DNDBrowserDimensions();}if (isMozilla() && !elem.fromChildFrame) {
elem.style.left=(this.slidingBackDestinationX + elem.mouseOffsetX + dX) + "px";}else if (!elem.fromChildFrame){
elem.style.left=(-1 * (this.bd.getHTMLElementWidth() - this.slidingBackDestinationX) - elem.xOffsetForBidiInIE) + dX + "px";}else{
if (isMozilla()) {
elem.style.left=-1 * (this.bd.getHTMLElementWidth() - (this.slidingBackDestinationX + elem.mouseOffsetX) - dX) + "px";}else{
elem.style.left=-1 * (this.bd.getHTMLElementWidth() - (this.slidingBackDestinationX)) + dX + "px";};};};elem.style.top=(this.slidingBackDestinationY - elem.mouseOffsetY + dY) + "px";};return false;};DNDBroker.prototype.addFormParam=function(name, value){
if (this.formParamNames == null || this.formParamValues == null) {
this.formParamNames=new Array(0);this.formParamValues=new Array(0);}if (name != null && value != null && this.formParamNames.length == this.formParamValues.length) {
this.formParamNames[this.formParamNames.length]=name;this.formParamValues[this.formParamValues.length]=value;}};DNDBroker.prototype.parseAndRegisterSource=function(xml){
var parser=new DNDXMLParser();var srcArray=parser.parseSource(xml);for (var i=0; i < srcArray.length; i++) {
this.registerSource(srcArray[i]);};};DNDBroker.prototype.parseAndRegisterTarget=function(xml){
var parser=new DNDXMLParser();var tgtArray=parser.parseTarget(xml);for (var i=0; i < tgtArray.length; i++) {
this.registerTarget(tgtArray[i]);};};DNDBroker.prototype.addDynFunc=function (newFunc){
this.dynamicFunctions.push(newFunc);};DNDBroker.prototype.addDFnc=function (newFunc){
this.addDynFunc(newFunc);};DNDBroker.prototype.pARS=function(xml){
this.parseAndRegisterSource(xml);};DNDBroker.prototype.pART=function(xml){
this.parseAndRegisterTarget(xml);};DNDDF.prototype=new Object();DNDDF.prototype.constructor=DNDDF;DNDDF.superclass=null;function DNDDF(iName){
this.name=iName;};DNDXMLParser.prototype=new Object();DNDXMLParser.prototype.constructor=DNDXMLParser;DNDXMLParser.superclass=null;function DNDXMLParser(){
};DNDXMLParser.prototype.parseSource=function(xml){
var srcArray=new Array();while (xml.length > 0 && xml.indexOf("<dndSrc") > -1 && xml.indexOf("</dndSrc>") > xml.indexOf("<dndSrc")) {
var attributeString=xml.substring(xml.indexOf("<dndSrc") + 8, xml.indexOf(">"));var propertyString=xml.substring(xml.indexOf(">") + 1, xml.indexOf("</dndSrc>"));xml=xml.substring(xml.indexOf("</dndSrc>") + 9, xml.length);var propArray=this.parseProperty(propertyString);var id=this.getAttribute(attributeString, "id");var cssClassName=this.getAttribute(attributeString, "cssCN");var dragCloneStr=this.getAttribute(attributeString, "dc");var dragClone=false;if (dragCloneStr == "true" || dragCloneStr == "TRUE") {
dragClone=true;}var multiselectStr=this.getAttribute(attributeString, "multi");var multiselect=false;if (multiselectStr == "true" || multiselectStr == "TRUE") {
multiselect=true;}var dSource=new DNDSource(id, propArray, cssClassName, dragClone, multiselect);srcArray.push(dSource);};return srcArray;};DNDXMLParser.prototype.parseTarget=function(xml){
var tgtArray=new Array();while (xml.length > 0 && xml.indexOf("<dndTgt") > -1 && xml.indexOf("</dndTgt>") > xml.indexOf("<dndTgt")) {
var attributeString=xml.substring(xml.indexOf("<dndTgt") + 8, xml.indexOf(">"));var actionString=xml.substring(xml.indexOf(">") + 1, xml.indexOf("</dndTgt>"));xml=xml.substring(xml.indexOf("</dndTgt>") + 9, xml.length);var actArray=this.parseAction(actionString);var id=this.getAttribute(attributeString, "id");tgtArray.push(new DNDTarget(id, actArray));};return tgtArray;};DNDXMLParser.prototype.parseAction=function(xml){
var actArray=new Array();while(xml.length > 0 && xml.indexOf("<dndAct") > -1 && xml.indexOf("</dndAct>") > xml.indexOf("<dndAct")){
var attributeString=xml.substring(xml.indexOf("<dndAct") + 8, xml.indexOf(">"));var propertyString=xml.substring(xml.indexOf(">") + 1, xml.indexOf("</dndAct>"));xml=xml.substring(xml.indexOf("</dndAct>") + 9, xml.length);var propArray=this.parseProperty(propertyString);var id=this.getAttribute(attributeString, "id");var action=this.getAttribute(attributeString, "a");var activeCss=this.getAttribute(attributeString, "actCss");var awareCss=this.getAttribute(attributeString, "awCss");var multiselectStr=this.getAttribute(attributeString, "ms");var multiselect=false;if (multiselectStr == "true" || multiselectStr== "TRUE") {
multiselect=true;}var multiselectDelim=this.getAttribute(attributeString, "msDelim");var nextAction=new DNDAction(id, action, propArray, activeCss, awareCss, multiselect, multiselectDelim);actArray.push(nextAction);};return actArray;};DNDXMLParser.prototype.parseProperty=function(xml){
var propArray=new Array();while (xml.length > 0 && xml.indexOf("<dndProp") > -1 && xml.indexOf("/>") > xml.indexOf("<dndProp")) {
var attributeString=xml.substring(xml.indexOf("<dndProp") + 9, xml.indexOf("/>"));xml=xml.substring(xml.indexOf("/>") + 2, xml.length);var namespace=this.getAttribute(attributeString, "ns");var type=this.getAttribute(attributeString, "t");var name=this.getAttribute(attributeString, "n");var value=this.getAttribute(attributeString, "v");propArray.push(new DNDProperty(namespace, type, name, value));};return propArray;};DNDXMLParser.prototype.getAttribute=function(attrs, key){
var value=null;if (attrs.indexOf(key + "='") > -1) {
value=attrs.substring(attrs.indexOf(key + "='") + key.length + 2, attrs.length);value=value.substring(0, value.indexOf("'"));}return value;};DNDSegment.prototype=new Object();DNDSegment.prototype.constructor=DNDSegment;DNDSegment.superclass=null;function DNDSegment(target, x1, y1, x2, y2, constraint, norm, xAxis, yAxis) {
this.init(target, x1, y1, x2, y2, constraint, norm, xAxis, yAxis);};DNDSegment.prototype.init=function(target, x1, y1, x2, y2, constraint, norm, xAxis, yAxis) {
this._target=target;this._x1=x1;this._x2=x2;this._y1=y1;this._y2=y2;this._constraint=constraint;this._norm=norm;this._xAxis=xAxis;this._yAxis=yAxis;};DNDSegment.prototype.isInFront=function(x, y) {
var v=this._xAxis ? x : y;return ((this._constraint * this._norm) >= (v*this._norm));};DNDSegment.prototype.classify=function(seg) {
var bool1=this.isInFront(seg._x1, seg._y1);var bool2=this.isInFront(seg._x2, seg._y2);if (bool1 && bool2) {
return 1;} else if (!bool1 && !bool2) {
return -1;} else {
return 0;}};DNDSegment.prototype.split=function(seg, segFront, segBack) {
var intersectX=this._xAxis ? this._constraint : seg._constraint;var intersectY=this._yAxis ? this._constraint : seg._constraint;var frontX=seg.isInFront(this._x1, this._y1) ? this._x1 : this._x2;var frontY=seg.isInFront(this._x1, this._y1) ? this._y1 : this._y2;var backX=seg.isInFront(this._x1, this._y1) ? this._x2 : this._x1;var backY=seg.isInFront(this._x1, this._y1) ? this._y2 : this._y1;segFront.init(this._target, frontX, frontY, intersectX, intersectY, this._constraint, this._norm, this._xAxis, this._yAxis);segBack.init(this._target, backX, backY, intersectX, intersectY, this._constraint, this._norm, this._xAxis, this._yAxis);};DNDSegment.prototype.getDNDTarget=function(){
return this._target;};DNDSegment.prototype.toString=function() {
return "DNDSegment { target:" + this._target.toString() + ", x1:" + this._x1 + ", y1:" + this._y1 + ", x2:" + this._x2 + ", y2:" + this._y2 + "}";};DNDSegmentFactory.prototype=new Object();DNDSegmentFactory.prototype.constructor=DNDSegmentFactory;DNDSegmentFactory.superclass=null;function DNDSegmentFactory() {
this.dndUtil=new DNDUtil();};DNDSegmentFactory.prototype.createSegments=function(dnd_target_array, proximity) {
var segs=new Array(0);for (var i=0; i < dnd_target_array.length; i++) {
var dndTarget=dnd_target_array[i];var div=document.getElementById(dndTarget.getId());var left=this.dndUtil.findOffsetX(div) - proximity;var top=this.dndUtil.findOffsetY(div) - proximity;var right=div.offsetWidth + left + proximity + proximity;var bottom=div.offsetHeight + top + proximity + proximity;segs[segs.length]=new DNDSegment(dndTarget, left, top, left, bottom, left, -1, true, false);segs[segs.length]=new DNDSegment(dndTarget, left, bottom, right, bottom, bottom, 1, false, true);segs[segs.length]=new DNDSegment(dndTarget, right, bottom, right, top, right, 1, true, false);segs[segs.length]=new DNDSegment(dndTarget, right, top, left, top, top, -1, false, true);};return segs;};DNDTreeWalker.prototype=new Object();DNDTreeWalker.prototype.constructor=DNDTreeWalker;DNDTreeWalker.superclass=null;function DNDTreeWalker(){
this.targetList=new Array();this.impossibleTargetList=new Array();};DNDTreeWalker.prototype.addTarget=function (dndTarget){
var notInList=true;for (var i=0; i < this.targetList.length; i++) {
if (this.targetList[i].getId() == dndTarget.getId()) {
notInList=false;}};if (notInList) {
this.targetList[this.targetList.length]=dndTarget;}};DNDTreeWalker.prototype.impossibleTarget=function (dndTarget){
var notInList=true;for (var i=0; i < this.impossibleTargetList.length; i++) {
if (this.impossibleTargetList[i].getId() == dndTarget.getId()) {
notInList=false;}};if (notInList) {
this.impossibleTargetList[this.impossibleTargetList.length]=dndTarget;}};DNDTreeWalker.prototype.getTarget=function (x, y){
var targetArray=new Array();for (var i=0; i < this.targetList.length; i++) {
var addToList=true;for (var j=0; j < this.impossibleTargetList.length; j++) {
if (this.targetList[i].getId() == this.impossibleTargetList[j].getId()) {
addToList=false;}};if (addToList) {
targetArray[targetArray.length]=this.targetList[i];}};var tgt=null;if (targetArray.length == 1) {
tgt=targetArray[0];}else if (targetArray.length > 1) {
for (var i=0; i < targetArray.length; i++) {
if (tgt == null) {
tgt=targetArray[i];}else{
var currentDistance=Math.sqrt(Math.pow((x - tgt.midpointX),2) + Math.pow((y - tgt.midpointY),2));var newDistance=Math.sqrt(Math.pow((x - targetArray[i].midpointX),2) + Math.pow((y - targetArray[i].midpointY), 2));if (newDistance <= currentDistance) {
tgt=targetArray[i];}}};}return tgt;};DNDBsp.prototype=new Object();DNDBsp.prototype.constructor=DNDBsp;DNDBsp.superclass=null;function DNDBsp() {
};DNDBsp.prototype.create=function(segArray) {
this._seg=segArray[0];if (segArray.length > 1) {
var frontArray=new Array();var backArray=new Array();for (var i=1; i < segArray.length; i++) {
var retval=this._seg.classify(segArray[i]);if (retval == 1) {
frontArray[frontArray.length]=segArray[i];} else if (retval == -1) {
backArray[backArray.length]=segArray[i];} else {
var segFront=new DNDSegment();var segBack=new DNDSegment();segArray[i].split(this._seg, segFront, segBack);frontArray[frontArray.length]=segFront;backArray[backArray.length]=segBack;}};if (frontArray.length > 0) {
this._frontBsp=new DNDBsp();this._frontBsp.create(frontArray);}if (backArray.length > 0) {
this._backBsp=new DNDBsp();this._backBsp.create(backArray);}}};DNDBsp.prototype.getTarget=function(x, y, treeWalker) {
if (treeWalker == null) {
treeWalker=new DNDTreeWalker();}var retval=this._seg.isInFront(x, y);if (retval == 1) {
treeWalker.addTarget(this._seg._target);if (this._frontBsp == null) {
return treeWalker.getTarget(x, y);} else {
return this._frontBsp.getTarget(x, y, treeWalker);};} else {
treeWalker.impossibleTarget(this._seg._target);if (this._backBsp == null) {
return treeWalker.getTarget(x, y);} else {
return this._backBsp.getTarget(x,y, treeWalker);};};};DNDUtil.prototype=new Object();DNDUtil.prototype.constructor=DNDUtil;DNDUtil.superclass=null;function DNDUtil() {
};DNDUtil.prototype.findOffsetX=function(html_obj) {
return (html_obj.offsetParent==null ? html_obj.offsetLeft : html_obj.offsetLeft + this.findOffsetX(html_obj.offsetParent));};DNDUtil.prototype.findOffsetY=function(html_obj) {
return (html_obj.offsetParent==null ? html_obj.offsetTop : html_obj.offsetTop + this.findOffsetY(html_obj.offsetParent));};DNDUtil.prototype.replaceString=function(originalStr, replace, replaceWith){
var index=originalStr.indexOf(replace);while (index >= 0) {
originalStr=originalStr.substring(0, index) + replaceWith + originalStr.substring(index + replace.length, originalStr.length);index=originalStr.indexOf(replace);};return originalStr;};DNDMultiselectSupport.prototype=new Object();DNDMultiselectSupport.prototype.constructor=DNDMultiselectSupport;DNDMultiselectSupport.superclass=null;function DNDMultiselectSupport() {
this.selected_src_ids=new Array(0);this.selected_src_property_intersection=new Array(0);};DNDMultiselectSupport.prototype.DELIM_CONSTANT=":==--==:";DNDMultiselectSupport.prototype.selectSource=function(dndSrcId, dndSrcPropArray){
var currentSourceObject=null;for (var i=0; i < document._DNDBroker.DNDSourceArray.length; i++) {
if (document._DNDBroker.DNDSourceArray[i].getId() == dndSrcId) {
currentSourceObject=document._DNDBroker.DNDSourceArray[i];break;}};var elem=document.getElementById(dndSrcId);if (this.selected_src_ids.length == 0) {
this.selected_src_property_intersection=dndSrcPropArray;this.selected_src_ids[this.selected_src_ids.length]=dndSrcId;elem.className=currentSourceObject.getCssClassName();}else if(this.selected_src_ids.length > 0 && !isCtrlDepressed()){
this.clearAllSelections();this.selected_src_property_intersection=dndSrcPropArray;this.selected_src_ids[this.selected_src_ids.length]=dndSrcId;elem.className=currentSourceObject.getCssClassName();}else if (this.selected_src_ids.length > 0 && isCtrlDepressed()) {
this.selected_src_property_intersection=this.computeMatchingSubset(this.selected_src_property_intersection, dndSrcPropArray);if (this.selected_src_property_intersection.length == 0) {
this.clearAllSelections();return;}this.selected_src_ids[this.selected_src_ids.length]=dndSrcId;elem.className=currentSourceObject.getCssClassName();}};DNDMultiselectSupport.prototype.clearAllSelections=function(){
for (var i=0; i < this.selected_src_ids.length; i++) {
var oldSelection=document.getElementById(this.selected_src_ids[i]);oldSelection.className="";};this.selected_src_ids=new Array(0);this.selected_src_property_intersection=new Array(0);};DNDMultiselectSupport.prototype.computeMatchingSubset=function(propArray1, propArray2){
var new_prop_array=new Array(0);for (var i=0; i < propArray1.length; i++) {
for (var j=0; j < propArray2.length; j++) {
if (propArray1[i].matchesProperty(propArray2[j])) {
new_prop_array[new_prop_array.length]=new DNDProperty(propArray2[j].getNamespace(),
propArray2[j].getType(),
propArray2[j].getName(),
propArray1[i].getValue() + this.DELIM_CONSTANT + propArray2[j].getValue());}};};return new_prop_array;};DNDMultiselectSupport.prototype.alreadySelected=function(dndSrcId){
for (var i=0; i < this.selected_src_ids.length; i++) {
if (this.selected_src_ids[i] == dndSrcId) {
return true;}};return false;};DNDMultiselectSupport.prototype.hasSelections=function(){
return (this.selected_src_ids.length > 0);};DNDMultiselectSupport.prototype.getSelections=function(){
return this.selected_src_ids;};DNDMultiselectSupport.prototype.getProperties=function(){
return this.selected_src_property_intersection;};DNDMultiselectSupport.prototype.doDelimiterReplacement=function(props, delim){
var newPropArray=new Array(0);var util=new DNDUtil();for (var i=0; i < props.length; i++) {
var newProp=new DNDProperty(props[i].getNamespace(),
props[i].getType(),
props[i].getName(),
util.replaceString(props[i].getValue(), this.DELIM_CONSTANT, delim));newPropArray[newPropArray.length]=newProp
};return newPropArray;};DNDDragCloneSupport.prototype=new Object();DNDDragCloneSupport.prototype.constructor=DNDDragCloneSupport;DNDDragCloneSupport.superclass=null;function DNDDragCloneSupport() {
};DNDDragCloneSupport.prototype.beginDrag=function(selectedSourceArray, dragClone) {
for (var i=0; i < selectedSourceArray.length; i++) {
var originalMarkup=document.getElementById(selectedSourceArray[i]);if (dragClone && !originalMarkup.fromChildFrame) {
originalMarkup.id=originalMarkup.id + ".orig";var clonedMarkup=originalMarkup.cloneNode(true);clonedMarkup.id=selectedSourceArray[i];clonedMarkup.style.zIndex=DNDZindex;clonedMarkup.style.width=originalMarkup.offsetWidth;clonedMarkup.mouseOffsetX=originalMarkup.mouseOffsetX;clonedMarkup.mouseOffsetY=originalMarkup.mouseOffsetY;document.body.appendChild(clonedMarkup);var util=new DNDUtil();clonedMarkup.style.position="absolute";clonedMarkup.style.left=document._DNDBroker.currentPageX - clonedMarkup.mouseOffsetX + "px";clonedMarkup.style.top=document._DNDBroker.currentPageY - clonedMarkup.mouseOffsetY + "px";}else{
originalMarkup.oldZIndex=originalMarkup.style.zIndex;originalMarkup.style.zIndex=DNDZindex;originalMarkup.oldPositionStyle=originalMarkup.style.position;originalMarkup.style.position="absolute";originalMarkup.oldLeft=originalMarkup.style.left;originalMarkup.oldTop=originalMarkup.style.top;originalMarkup.style.left=document._DNDBroker.currentPageX - originalMarkup.mouseOffsetX + "px";originalMarkup.style.top=document._DNDBroker.currentPageY - originalMarkup.mouseOffsetY + "px";};};};DNDDragCloneSupport.prototype.endDrag=function(selectedSourceArray, dragClone) {
for (var i=0; i < selectedSourceArray.length; i++) {
var markup=document.getElementById(selectedSourceArray[i]);if (dragClone && !markup.fromChildFrame) {
var originalMarkup=document.getElementById(selectedSourceArray[i] + ".orig");document.body.removeChild(markup);markup=null;originalMarkup.id=selectedSourceArray[i];}else{
markup.style.zIndex=markup.oldZIndex;markup.style.position=markup.oldPositionStyle;markup.style.left=markup.oldLeft;markup.style.top=markup.oldTop;markup.oldZIndex=null;markup.oldPositionStyle=null;markup.oldLeft=null;markup.oldTop=null;if (markup.fromChildFrame) {
document.body.removeChild(markup);}};};};DNDAction.prototype=new Object();DNDAction.prototype.constructor=DNDAction;DNDAction.superclass=null;function DNDAction(id, action, dndPropertyArray, activeCssClassName, awareCssClassName, supportsMultiselect, multiselectDelimiter) {
this.id=id;this.action=action;this.properties=dndPropertyArray;this.activeCssClassName=activeCssClassName;this.awareCssClassName=awareCssClassName;this.supportsMultiselect=supportsMultiselect;this.multiselectDelimiter=multiselectDelimiter;this.ALTERNATE_TARGET_SUBMIT_FUNC=null;};DNDAction.prototype.getId=function(){
return this.id;};DNDAction.prototype.getAction=function(){
return this.action;};DNDAction.prototype.getDNDProperties=function(){
return this.properties;};DNDAction.prototype.optionalActionJavascript=function(){
return this.oaj();};DNDAction.prototype.hasOptionalActionJavascript=function(){
if (this.oaj == null) {
var dynFuncArray=document._DNDBroker.dynamicFunctions;for (var i=0; i < dynFuncArray.length; i++) {
if (dynFuncArray[i].name == this.getId()) {
this.oaj=dynFuncArray[i].dFnc;}};}return this.oaj != null;};DNDAction.prototype.getActiveCssClassName=function(){
return this.activeCssClassName;};DNDAction.prototype.getAwareCssClassName=function(){
return this.awareCssClassName;};DNDAction.prototype.getSupportsMultiselect=function(){
return this.supportsMultiselect;};DNDAction.prototype.getMultiselectDelimiter= function(){
return this.multiselectDelimiter;};DNDAction.prototype.toString=function() {
var str="DNDAction.toString() - (id: " + this.getId() +
"), (action: " + this.getAction() +
"), (activeCssClassName: " + this.getActiveCssClassName() +
"), (awareCssClassName: " + this.getAwareCssClassName() +
"), (supportsMultiselect: " + this.getSupportsMultiselect() +
"), (multiselectDelimiter: " + this.getMultiselectDelimiter() +
"), (DNDProperties: ";var properties_array=this.getDNDProperties();for (var i=0; i < properties_array.length; i++) {
if (i > 0) {
str=str + ", ";}str=str + "[" + properties_array[i].toString() + "]";};str=str + ")";return str;};DNDProperty.prototype=new Object();DNDProperty.prototype.constructor=DNDProperty;DNDProperty.superclass=null;function DNDProperty(namespace, type, name, value) {
this.namespace=namespace;this.type=type;this.name=name;this.value=value;};DNDProperty.prototype.getNamespace=function(){
return this.namespace;};DNDProperty.prototype.getType=function(){
return this.type;};DNDProperty.prototype.getName=function(){
return this.name;};DNDProperty.prototype.getValue=function(){
return this.value;};DNDProperty.prototype.matchesProperty=function(prop){
if (this.getNamespace() == prop.getNamespace() &&
this.getType() == prop.getType()) {
return true;}return false;};DNDProperty.prototype.toString=function() {
var str="DNDProperty.toString() - (namespace: " + this.getNamespace() +
"), (type: " + this.getType() +
"), (name: " + this.getName() +
"), (value: " + this.getValue() +  ")";return str;};DNDTarget.prototype=new Object();DNDTarget.prototype.constructor=DNDTarget;DNDTarget.superclass=null;function DNDTarget(id, dndActionArray) {
this.id=id;this.actions=dndActionArray;};DNDTarget.prototype.getId=function() {
return this.id;};DNDTarget.prototype.getActions=function(){
return this.actions;};DNDTarget.prototype.toString=function() {
var str="DNDTarget.toString() - (id: " + this.getId() +
"), (actions: ";var actions_array=this.getActions();for (var i=0; i < actions_array.length; i++) {
if (i > 0) {
str=str + ", ";}str=str + "[" + actions_array[i].toString() + "]";};str=str + ")";return str;};DNDSource.prototype=new Object();DNDSource.prototype.constructor=DNDSource;DNDSource.superclass=null;function DNDSource(id, dndPropertyArray, cssClassName, dragClone, multiselectable) {
this.id=id;this.properties=dndPropertyArray;this.cssClassName=cssClassName;this.dragClone=dragClone;this.multi=multiselectable;};DNDSource.prototype.getId=function() {
return this.id;};DNDSource.prototype.optionalOnDragJavascript=function(){
return this.oodj();};DNDSource.prototype.hasOptionalOnDragJavascript=function(){
if (this.oodj == null) {
var dynFuncArray=document._DNDBroker.dynamicFunctions;for (var i=0; i < dynFuncArray.length; i++) {
if (dynFuncArray[i].name == this.getId()) {
this.oodj=dynFuncArray[i].dFnc;}};}return this.oodj != null;};DNDSource.prototype.getDNDProperties=function(){
return this.properties;};DNDSource.prototype.getCssClassName=function(){
return this.cssClassName;};DNDSource.prototype.getDragClone=function(){
return this.dragClone;};DNDSource.prototype.getMultiselectable=function(){
return this.multi;};DNDSource.prototype.toString=function() {
var str="DNDSource.toString() - (id: " + this.getId() +
"), (cssClassName: " + this.getCssClassName() +
"), (dragClone: " + this.getDragClone() +
"), (DNDProperties: ";var properties_array=this.getDNDProperties();for (var i=0; i < properties_array.length; i++) {
if (i > 0) {
str=str + ", ";}str=str + "[" + properties_array[i].toString() + "]";};str=str + ")";return str;};DNDBrowserDimensions.prototype=new Object();DNDBrowserDimensions.prototype.constructor=DNDBrowserDimensions;DNDBrowserDimensions.superclass=null;function DNDBrowserDimensions(){
this.body=document.body;if (this.isStrictDoctype() && !this.isSafari()) {
this.body=document.documentElement;}};DNDBrowserDimensions.prototype.getScrollFromLeft=function(){
return this.body.scrollLeft ;};DNDBrowserDimensions.prototype.getScrollFromTop=function(){
return this.body.scrollTop ;};DNDBrowserDimensions.prototype.getViewableAreaWidth=function(){
return this.body.clientWidth ;};DNDBrowserDimensions.prototype.getViewableAreaHeight=function(){
return this.body.clientHeight ;};DNDBrowserDimensions.prototype.getHTMLElementWidth=function(){
return this.body.scrollWidth ;};DNDBrowserDimensions.prototype.getHTMLElementHeight=function(){
return this.body.scrollHeight ;};DNDBrowserDimensions.prototype.isStrictDoctype=function(){
return (document.compatMode && document.compatMode != "BackCompat");};DNDBrowserDimensions.prototype.isSafari=function(){
return (navigator.userAgent.toLowerCase().indexOf("safari") >= 0);};document._DNDBroker=new DNDBroker();document._DNDB=document._DNDBroker;document._DNDBroker.oldOnKeyDown=document.onkeydown;document._DNDBroker.oldOnKeyUp=document.onkeyup;document.onkeydown=keydown;document.onkeyup=keyup;
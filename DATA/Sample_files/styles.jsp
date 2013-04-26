


























body, html {
width: 100%;
margin: 0;
padding: 0;
} 
body {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: x-small;
	background-color: #F2F2F2;
	color: #000000;
	margin: 0px;
	padding: 0px;
}

table, input, textarea, button, select {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: xx-small; 
}




div, span, p, ul, li, td, th { 

font-family: Arial, sans-serif;
}

pre {
	font-family: monospace;
	font-size: small;
}

img{
	vertical-align:middle;
}
a, .wpsLink{
	color: #3366CC;
}
a:visited, .wpsLink:visited { 
	color: #666699;
}

a:active, .wpsLink:active {
	color: #3366CC;
}
.generalErrorText {
	color: red;
}

.clearing {
	clear: both;
}

.layoutRow {width: 100%; }
.layoutColumn {width: 100%; }

#FLYParent {min-width: 1000px;}

#mainContent {
	padding: 5px;
}

.themeHeader {
	width:100%;
	margin: 0px;
	padding: 0px;
	clear: both;
	
}


.banner {
	color: #000000;
	background: ;
	background-color: #E8EBF1;
	border-bottom: 1px solid;
	border-bottom-color: ;
	margin: 0px;
	padding: 0px;
}

.bannerTitle{
	font-family: Arial, Helvetica, Verdana, sans-serif;
	font-size: large;
	color: #3161A5;
	font-weight: bold;
	padding-left: 20px;
}


.launch {
	float:left;
	border: 0px;
	color: #FFFFFF;
	font-family: Arial, Helvetica, Verdana, sans-serif;
	font-size: small;
	font-weight: bold;
	cursor: pointer;
	padding-top: 4px;
	padding-bottom: 4px;
	margin-top: 0px;
	margin-bottom: 0px;
	margin-left: 0px;
	background: ;
	background-color: #3880DE;
}
.launch img {
	vertical-align: baseline;   
}

.launch a, .launch a:visited, .launch a:hover, .launch a:active{
	text-decoration: none;
}
.launch:hover {
	background: ;
	background-color: #3880DE;
}

.main-menu {
	color: #000000;
	background-color: #EBF1F7;
	border: 1px solid;
	border-color: #3161A5;
	-moz-border-radius-topright: 2px;
	-moz-border-radius-bottomright: 2px;
	-moz-border-radius-bottomleft: 2px;
}

.main-menu-border {
	border: 0px;	
}

.main-menu-item, .main-menu-item:visited  {
	background-color: #EBF1F7;
	color: #000000 !important;
	text-decoration: none;	
	padding:3px;
	white-space:nowrap;
	font-size: x-small
}

.main-menu-item-selected {
	background:none;
	background-color: #E2EEFF;
	color: #000000 !important;
	border-top: 1px solid;
	border-bottom: 1px solid;
	border-color: #B9CEEA;
	cursor:pointer;
	white-space:nowrap;
	text-decoration: none;	
	padding:3px;
	font-size: x-small
}

.main-menu-item-selected a{
	background: none;
	background-color: transparent;
}
/* prevent border on selected item from getting inherited by  menu icons */
.main-menu-item-selected img, .main-menu-item img{
	border: 0px;
	background: none;
	background-color: transparent;
	height: 16px;
	width: 16px;
}

.main-menu-item .portlet-separator { 
	margin:0px; 
	line-height:1px;
	background-color: #999999;
}
.portlet-separator { 
	margin:0px; 
	line-height:1px;
	background-color: #444444;
}




.breadcrumbNav {
    float:left;
    padding: 7px 5px;

}    

.breadcrumbNav a, .breadcrumbNav a:visited, .breadcrumbNav a:hover, .breadcrumbNav a:active{
    color: #000000;
    text-decoration: none; 
}



.searchControl {
    float:right;
    color: #000000;
    background-color: transparent;
    margin-right: 5px;
    margin-top: 3px;
}


.searchControl input{
    margin-right: -2px;
    margin-top: 0px; 
	padding: 2px;
}



.toolbar {
    float:right;
    color: #000000;
    background-color: transparent;
    margin-right: 5px;
}

.wpsToolBar p{
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: x-small;
	width:100%;
	color:white;
}

.toolbarLink {
    background-color: transparent;
    text-decoration: none;
}

.toolbarLink img {
    padding: 2px 2px;
    border: 0px;
    vertical-align: middle;
}

a.toolbarLink, a.toolbarLink:visited, a.toolbarLink:hover, a.toolbarLink:active{
    color: #000000;
    text-decoration: none;
}




.wpsPageBarFirstRow, .wpsPageBar {
	margin:0px;		
	clear: both;
	white-space: nowrap;
	width: 100%;
	float:left;
	padding-left: 0px;  

}

.wpsPageBarFirstRow {
	font-family: Arial, Helvetica, Verdana, sans-serif;
	font-size: small;
	
	background: ;
	background-color: #B7CBE7;
	
}
.wpsPageBar {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: x-small;
	color: #000000;
	background:  ;
	background-color: #EEF0F5;
	padding: 3px 0px;
	clear: both;
}

.pageBarSeparator {
	background-color:none;
	width: 100%;
	height: 6px;
	border-top: 1px solid;
	border-bottom: 1px solid;
	border-top-color: none;
	border-bottom-color: none;
	clear: both;
	padding: 0px;

}

.pageBarSeparator1 {
	background-color:none;
	width: 100%;
	height: 1px;
	clear: both;
	padding: 0px;
}

.wpsPageBarFirstRow li, .wpsPageBar li {
	font-family: Arial, Helvetica, Verdana, sans-serif;
	margin-left: 2px;
	float:left;
	list-style: none;  
}
.wpsPageBarFirstRow li {
	margin-top: 3px;
	margin-bottom: -1px; 
	padding: 4px 8px; 
}
.wpsPageBar li {
	padding: 3px 8px;
}


.wpsSelectedPage{
	color: #ec1895;
	background:none;
	background-color: none;
	border: 1px solid;
	border-color: none;       
	border-bottom-color:none;       
}

.wpsPageBar .wpsSelectedPage{
	color: #000000;
	background: none;
	background-color: #F7F8FA;
	border: 1px solid;
	border-color: #BBC5D8;
	
	-moz-border-radius: 4px;
	margin-bottom: -1px;
	
}

.wpsSelectedPage a, .wpsSelectedPage a:visited, .wpsSelectedPage a:hover, .wpsSelectedPage a:active{
	color: #ec1895;
	text-decoration: none;
}


.wpsPageBarFirstRow .wpsUnSelectedPage{
	color: #000000;
	background: ;
	background-color: #c9d4e3;
	border: 1px solid;
	border-color: #6D7E96;       
}

.wpsUnSelectedPage{
	color: #000000;
}


.wpsUnSelectedPage a, .wpsUnSelectedPage a:visited, .wpsUnSelectedPage a:hover, .wpsUnSelectedPage a:active{
	color: #000000;
	text-decoration: none;
}


.menuLink {
	border: 0;
	margin-left: 4px;
}




.wpsSideNav{
    font-size: x-small;
    border: 1px solid;
    border-color: #9EB0CB;
    text-decoration: none;
    white-space:nowrap;
    background-color:#EBF1F7;
    margin-top:0px;
    margin-bottom:0px;
    margin-left: 0px;
    padding-left: 0px;
    /* This is a fix for the IE peekaboo bug */
    
}
/* first sublist is not indented */
.wpsSideNav ul{
    margin-left: 1.5em;
    padding-left: 0px;
}
/* indent sublists nested 2 levels or deeper  */
.wpsSideNav ul ul{
    margin-left: 1.5em;
    padding-left: 0px;
}


.wpsSideNav li{
    display:inline;
    list-style: none;
    margin-left: 0px;
    padding-left: 0px;

}

.wpsNavItem{
	text-decoration: none;
	padding: 3px 3px; 
	display:block;
	white-space:nowrap;
	color:#000000 !important;
}

.wpsNavItem a {
	display: inline;
}

.selected{
	color: #000000 !important;
	background-color: #9EB0CB;
	text-decoration: none;
	padding:3px 3px;
	display:block;
	cursor:default;
	white-space:nowrap;
}

.selected a {
	background-image:none;
	background-color:transparent;
	display: inline;
	cursor: pointer; 
	text-decoration: none;
}

.wpsNavIcon{
    height: 9px;
    width: 9px;
    border: 0px;
    padding: 0px;
    margin: 0px;
    vertical-align: baseline;
}


.menuLinkSideNav {
    border: 0px;
    margin-left: -10px;
    padding: 0px 10px;
}

.wpsNavLevel1{
	color: #ec1895 !important;
	font-size: small;
	padding-top: 3px;
	font-family: Arial, Helvetica, Verdana, sans-serif;
}

.selected .wpsNavLevel1{
	color: #000000 !important;
    
}

.wpsNavLevel2 wpsNavLevel3 wpsNavLevel4 wpsNavLevel5 wpsNavLevel6 wpsNavLevel7 wpsNavLevel7{
	text-indent:36px;    
}


.portalFlyout{
	position: absolute; 
	left: -390px; 
	width: 382px;
	background-color: #F2F2F2;
}

.portalFlyoutExpanded{
	position: absolute;
	border-top: 1px solid;
	border-left: 1px solid;
	border-bottom: 1px solid;
	border-top-color: #97A9C1;
	border-left-color: #97A9C1;
	border-bottom-color: #97A9C1;
	background-color: #F2F2F2; 
}

.portalFlyoutCollapsed{
	position: absolute;
	background-color: #F2F2F2;
}	
	
.portalFlyoutIframe{
	border: 0px;
}


.footer {
	clear:both;
	
	width:100%;
	height:26px;
	min-height:26px;
	bottom: 0;
	background-color: #444444;
	color:#FFFFFF;
	background: ;
	border-top: 1px solid;       	
}

.quickLinks {
	font-size: xx-small;
	background:;
	background-color: #444444;
	color:#FFFFFF;
	margin:0px;		
	white-space: nowrap;
	border-spacing: 5px 0px;
	padding-left: 2px; 
}

.quickLinks li {
	margin-right: 4px;
	margin-top: 4px;
	margin-bottom: 2px;
	float:left;
	list-style: none;
	padding: 2px 4px 2px 4px;
}

.quickLinkItem{
    color: #FFFFFF;
}

.quickLinkItem a, .quickLinkItem a:visited, .quickLinkItem a:hover, .quickLinkItem a:active{
    color: #FFFFFF;
    text-decoration: none;
}



.wpsFLYflyout{
	border: 10px solid;
	border-color: #9EB0CB;
	text-decoration: none;
	white-space:nowrap;
	background-color: #F2F2F2;
	color:#000000;
}



.dndDropAware{
	border: 0px; 
	background-color: #FFEBC5;
}
.dndDropActive{
	border: 0px; 
	background-color: #FF9000;
}
.dndDragging{
	width: 100%; 
	
		-moz-opacity: .4;
	
	
}
.dndDragSelected{
   	border: 1px; 
	background-color: #DDDDDD;
}
.dndMoveCursor{
	cursor:move;
}
.dndDropCursor{
	cursor: pointer; 
}
.dndNoDropCursor{
	cursor: not-allowed;
}


.contentPaletteDragClass{
    width: 100%; 
    
		-moz-opacity: .4;
	
	
}
.contentPaletteDragClass div
{
    background-color: #B7CBE7; 
    background: ;
    font-weight: normal;
    font-family: arial;
    font-size: xx-small;
}





.wpsPortlet{
	margin:5px;
	border-left: 1px solid;
	border-right: 1px solid;
	border-bottom: 1px solid;
	border-color: #CACACA;
	background-image:none;
}
.wpsPortletBody{
	margin: 5px;
	background-image:none;
}

.wpsPortletTitleBar{
	font-size: small;
	color: #616161;
	background: ;
	background-color: #FFFFFF;
	padding-left: 5px;
	width:100%;
	white-space: nowrap;
}

.wpsPortletTitleBar img{
	vertical-align:middle;
}

.wpsPortletIcons{
	text-align: right;
	vertical-align: top;
	padding-right: 3px;
}



.wpsPortletTitleIconNonStandardSize, .wpsPortletTitleToolsIconNonStandardSize {
}



.wpsThinSkinContainerBar{
	height: 12px;
	border: 1px solid white;
	margin-bottom: 2px;
}

.wpsThinSkinContainerBarBorder{
	background: ;
	background-position: bottom;
	background-color: #FFFFFF;
}

.wpsThinSkinDragZoneContainer{
	width: 75%; 
	display: inline; 
	float: left;
}

.wpsThinSkinInvisible{
	visibility: hidden;
}

.wpsThinSkinVisible{
	visibility: visible;
}

.wpsThinSkinMenuContainer{
	display: inline; 
	float: right; 
	padding-right: 3px;
}










.portlet-dlg-icon-label {
    font-weight: bold;
    color: #000000; 
    white-space: nowrap;
}


.portlet-icon-label {
    color: #000000;
}


.portlet-section-header {
    font-weight: bold;
    color: #333333;
}


.portlet-section-header-highlight {
    background-color: #F0F0F0;
}


.portlet-font {
    font-family: Verdana, Arial, Helvetica, sans-serif;
    font-size: x-small;
    color: #333333;
}


.portlet-section-body {
}

.portlet-section-alternate {
}

.portlet-section-selected {
}

.portlet-section-footer {
}


.portlet-section-subheader {
    color: #333333;
}





.portlet-table-text {
}


.portlet-table-selected {
    color: #333333;
    background-color: #c5d1de;
}


.portlet-table-alternate {
    color: #333333;
}


.portlet-table-header {
    font-weight: normal;
    color: #000000;
    text-align: left;
    background-color: #ffffff;
    border-width: 0px 0px 0px 0px;
    border-style: none;
    border-color: #aaaaaa;
}




.portlet-table-body {
    text-align: left;
    border-width: 1px 0px 0px 0px ! important;
    border-style: solid ! important;
    border-color: #aaaaaa ! important;
}

.portlet-table-footer{
}





.portlet-table-subheader {
    font-weight: bold;
    color: #000000;
    text-align: left;
}


.portlet-form-input-field {
    border: 1px solid #999999;
}


.portlet-form-button {  
    text-decoration: none;
	text-align: center;
    background-image: url("./colors/default/ButtonBackground.gif");
    background-repeat: repeat-x;
    background-position: left center; 
    border: 1px solid #919191;
    padding: 0px 2px;
	margin: 0px;
	overflow: visible;
	font-weight: normal;
	color: #000000;
	cursor: pointer;
}



.portlet-form-field, .portlet-form-field-label {
    color: #333333;
}


.portlet-font-dim {
    color: #808080;
}


.portlet-form-label {
    color: #333333;
}





.portlet-msg-error {
    color: #000000;
}


.portlet-msg-alert {
    color: #000000;
}


.portlet-msg-success {
    color: #000000;
}


.portlet-msg-info {
    color: #000000;
}


.portlet-section-text {
    color: #666666;
}


.portlet-msg-status {
    color: #333333;
}




.portlet-menu {
	background-color: #EEEEEE;  
	border-style: solid;
	border-color: #333333; 
	border-width: 1px;
    padding: 3px;
}


.portlet-menu-item {
	background-color: #EEEEEE;
	border-style: solid;
	border-color: #333333;
	border-width: 1px;
    padding: 3px;
}


.portlet-menu-item-selected {
	background-color: #aaaaaa;
	border-style: solid;
	border-color: #333333;
	border-width: 1px;
    padding: 3px;
}


.portlet-menu-item-hover {
	background-color: #cccccc;
	border-style: solid;
	border-color: #333333;
	border-width: 1px;
    padding: 3px;
}


.portlet-menu-item-hover-selected {
	background-color: #cccccc;
	border-style: solid;
	border-color: #333333;
	border-width: 1px;
    padding: 3px;
}


.portlet-menu-cascade-item {
	background-color: #eeeeee;
   	border-style: solid;
	border-color: #333333;
	border-width: 1px;
    padding: 3px 3px 3px 3px;
}


.portlet-menu-cascade-item-selected {
	background-color:#cccccc;
    border-style: solid;
	border-color: #333333;
	border-width: 1px;
    padding: 3px 3px 3px 3px;
}


.portlet-menu-description {
}


.portlet-menu-caption {
	border-style: solid;
	border-color: #333333; 
	border-width: 1px;
}


.portlet-separator {
    background-color: #999999;
    height: 1px;
}

div.portlet-separator {
    background-color: #999999;
	margin: 2px 0 2px 0;
}


.help {
	font-size: xx-small; COLOR: #000000; font-family: Verdana, Arial, Helvetica, sans-serif;
}
.help_indent {
	font-size: xx-small; COLOR: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; BACKGROUND-COLOR: #ffffff
}
A.help {
	font-family: Verdana, Arial, Helvetica, sans-serif; font-size: xx-small; COLOR: #3366CC
}
A.help:visited {
	font-family: Verdana, Arial, Helvetica, sans-serif; font-size: xx-small; COLOR: #666699
}
A.help:active {
	font-family: Verdana, Arial, Helvetica, sans-serif; font-size: xx-small; COLOR: #3366CC
}
A.help:hover {
	font-family: Verdana, Arial, Helvetica, sans-serif; font-size: xx-small; COLOR: #3366CC
}
H2.help {
	PADDING-left: 8px; font-weight: bold; font-size: x-small; COLOR: #000000; PADDING-TOP: 22px; BORDER-BOTTOM: 1px solid #B0B0B0; HEIGHT: 16px; BACKGROUND-COLOR: #F0F0F0; TEXT-ALIGN: left
}
H3.help {
	font-size: x-small; PADDING-left: 8px; font-weight: bold; PADDING-TOP: 3px; HEIGHT: 20px; BACKGROUND-COLOR: #F0F0F0
}
H3 A.help {
	font-size: x-small; COLOR: #000000; BACKGROUND-COLOR: #F0F0F0; TEXT-DECORATION: none
}
H4.help {
	PADDING-left: 8px; MARGIN: 16px 20px 0px 20px; COLOR: #000000; PADDING-TOP: 3px; HEIGHT: 20px; BACKGROUND-COLOR: #F0F0F0; TEXT-ALIGN: left
}
H4 A.help {
	font-weight: normal; font-size: xx-small; COLOR: #000000; font-style: italic; BACKGROUND-COLOR: #F0F0F0
}
P.help {
	PADDING-BOTTOM: 0px; MARGIN: 2px 20px 0px 30px; PADDING-TOP: 4px
}
P.help_indent {
	PADDING-BOTTOM: 0px; MARGIN: 2px 20px 0px 0px; PADDING-TOP: 4px
}
UL.help {
	MARGIN-left: 56px; MARGIN-right: 20px
}
OL.help {
	MARGIN-left: 56px; MARGIN-right: 20px
}
DL.help {
	MARGIN-left: 56px; MARGIN-right: 20px
}
PRE.help {
	MARGIN-left: 30px; font-family: monospace;
}
DT A.help {
	FONT-WEIGHT: 900; COLOR: #000000
}
DD.help {
	PADDING-BOTTOM: 20px; PADDING-TOP: 2px
}
LI.help {
	PADDING-BOTTOM: 2px; PADDING-TOP: 2px
}
TABLE.help {
	PADDING-right: 20px; PADDING-left: 30px; MARGIN-left: 28px
}
TH.help {
	TEXT-ALIGN: center; PADDING-TOP: 5px; PADDING-BOTTOM: 5px; VERTICAL-ALIGN: top;
}
TD.help {
	PADDING-BOTTOM: 3px; VERTICAL-ALIGN: top; PADDING-TOP: 3px; TEXT-ALIGN: left
}
samp {
    font-size: x-small;
}

TABLE.dataTable {
	color              : black; 
	width              : 90%;
	border-collapse    : collapse;
	border-color	   : Black;
	background-color   : white;  
	margin-left  : 28px;
}
.dataTable TH {
   font-weight: bold;
   font-size			: 0.7em;
   color                : black; 
   background-color  	: #F0F0F0;  
	
}

/* Basic Portlet Structure */

div.header {
   width: 100%;
   float: left;
}

div.headlines {
   width: 100%;
   float: left;
}

div.portletTools {
   float: right;
}

div.subheader {
   width: 100%;
   float: left;
}

div.content {
   width: 100%;
   float: left;
}

div.column {
   margin: 0;
   padding: 0;
   float: left;
}

div.grouping {}

div.endfloat {
   padding: 0;
   border: 0;
   clear: both;
}



div.OOB h1 {
   margin: 0;
   padding: 0;
   font: normal normal normal x-large Helvetica, Arial, Verdana, sans-serif;  /* for IE5/Win */
   voice-family: "\"}\""; 
   voice-family: inherit;
   font: normal normal normal xx-large Helvetica, Arial, Verdana, sans-serif; /* for Compliant Browsers */
}
	html>div.OOB h1 {
	   font: normal normal normal xx-large Helvetica, Arial, Verdana, sans-serif; /* Be nice to Opera */
	}

div.OOB h2 {
   margin: 0;
   padding: 0;
   font: normal normal normal large Helvetica, Arial, Verdana, sans-serif; /* for IE5/Win */
   voice-family: "\"}\""; 
   voice-family: inherit;
   font: normal normal normal x-large Helvetica, Arial, Verdana, sans-serif; /* for Compliant Browsers */
}
	html>div.OOB h2 {
	   font: normal normal normal x-large Helvetica, Arial, Verdana, sans-serif; /* Be nice to Opera */
	}

div.OOB h3 {
   margin: 0;
   padding: 0;
   font: normal normal normal medium Helvetica, Arial, Verdana, sans-serif; /* for IE5/Win */
   voice-family: "\"}\""; 
   voice-family: inherit;
   font: normal normal normal large Helvetica, Arial, Verdana, sans-serif; /* for Compliant Browsers */
}
	html>div.OOB h3 {
	   font: normal normal normal large Helvetica, Arial, Verdana, sans-serif; /* Be nice to Opera */
	}

div.OOB h4 {
   margin: 0;
   padding: 0;
   font: normal normal normal small Helvetica, Arial, Verdana, sans-serif; /* for IE5/Win */
   voice-family: "\"}\""; 
   voice-family: inherit;
   font: normal normal normal medium Helvetica, Arial, Verdana, sans-serif; /* for Compliant Browsers */
}
	html>div.OOB h4 {
	   font: normal normal normal medium Helvetica, Arial, Verdana, sans-serif; /* Be nice to Opera */
	}

div.OOB h5 {
   margin: 0;
   padding: 0;
   font: normal normal normal x-small Helvetica, Arial, Verdana, sans-serif; /* for IE5/Win */
   voice-family: "\"}\""; 
   voice-family: inherit;
   font: normal normal normal small Helvetica, Arial, Verdana, sans-serif; /* for Compliant Browsers */
}
	html>div.OOB h5 {
	   font: normal normal normal small Helvetica, Arial, Verdana, sans-serif; /* Be nice to Opera */
	}

div.OOB h6 {
   margin: 0;
   padding: 0;
   font: normal normal normal xx-small Helvetica, Arial, Verdana, sans-serif; /* for IE5/Win */
   voice-family: "\"}\""; 
   voice-family: inherit;
   font: normal normal normal x-small Helvetica, Arial, Verdana, sans-serif; /* for Compliant Browsers */
}
	html>div.OOB h6 {
	   font: normal normal normal x-small Helvetica, Arial, Verdana, sans-serif; /* Be nice to Opera */
	}

div.OOB p {
   font: normal normal normal xx-small Helvetica, Arial, Verdana, sans-serif;
}



/* Grouping Controls  */

div.grouping {
  float: left;
} 

div.grouping a {
   text-decoration: none;
}

div.grouping a img.float {
   border: 0;
   float: left;
}

div.grouping a img.inline {
   border: 0;
}



/* Getting Started Portlet Specific Styles  */
div#OOBgettingStarted div.header {
   width: 100%;
   background: #5598e9 url(images/oob/stars.gif) top left no-repeat;
}

div#OOBgettingStarted div.headlines {
   color: #fff;
   background: transparent url(images/oob/largeHelpIcon.gif) top right no-repeat;
}
	div#OOBgettingStarted div.headlines h1 {
	   padding-top: 22px;
  	   padding-left: 15px;
   	   padding-bottom: 0;
   	   padding-right: 183px;
	}
	div#OOBgettingStarted div.headlines h3 {
         padding-top: 4px;
  	   padding-left: 15px;
   	   padding-bottom: 18px;
   	   padding-right: 183px;
	   width: 502px;
	}

div#OOBgettingStarted div.portletTools {
   display: none;
}

div#OOBgettingStarted div.subheader {
   color: #fff;
   background: #1467cd;
}
	div#OOBgettingStarted div.subheader h4 {
	   padding: 20px 15px;
	}

div#OOBgettingStarted div.content {
   background: #e0edfd url(images/oob/corner-b-l-6.gif) bottom left no-repeat;
}


div#OOBgettingStarted div.one,
div#OOBgettingStarted div.two {
   	margin-top: 15px;
	width: 48%;
}


div#OOBgettingStarted div.grouping {
   margin: 8px;
}
	div#OOBgettingStarted div.grouping h5 {
  	   padding-left: 73px;
	   color: #2A7DE3;
	   background: transparent;
	   font-weight: bold;
	}
	div#OOBgettingStarted div.grouping p {
	   margin: 0;
  	   padding-left: 73px;
	   color: #404040;
	   background: transparent;
	   font-size:x-small;
	   font-family:Verdana, Arial, Helvetica, sans-serif
	}

div#OOBgettingStarted div.corner-b-r-6 {
   height: 6px;
   background: transparent url(images/oob/corner-b-r-6.gif) bottom right no-repeat;
}



/* Getting Started Help Portlet Specific Styles */
div#OOBgettingStartedHelp{
	/* IE bidi fix */
	padding-right: 5px;
	width: 94%;
}

div#OOBgettingStartedHelp div.header {
   display: none;
}

div#OOBgettingStartedHelp div.subheader {
   display: none;
}

div#OOBgettingStartedHelp h3 {
   	color: #222;
	padding: 5px 0 3px 0;
	background: #fff;
	margin: 0 0 4px 0;
}

div#OOBgettingStartedHelp h3.help {
	color: #222;
}

div#OOBgettingStartedHelp h6 {
   padding: 0 0 7px 0;
   margin: 0;
   color: #666;
   font-size:small;
   font-family: Arial, Helvetica, sans-serif;
}

div#OOBgettingStartedHelp h6 a { 
   color: #1C66C1;
   font-weight: normal;
   text-decoration: none;
}

div#OOBgettingStartedHelp h6 a:hover {
	color: #164ead;
	text-decoration: underline; }

div#OOBgettingStartedHelp h6.link {
	   margin-left: 3px;
  	   padding-left: 13px;
         background: transparent url(images/oob/bullet.gif) left 5px no-repeat; }



/* Home Apps Portlet Specific Styles */

#OOBportalApps {
   width: 250px;
   /* Fixes bidi bug in IE */	
   padding-right: 5px;		
}

#OOBportalApps div.headlines {
   color: #000;
   background: #e4edfb url(images/oob/corner-t-l-6.gif) top left no-repeat;
}

#OOBportalApps div.headlines h4{
   width: 224px;
   margin-left: 6px;
   padding-top: 13px;
   padding-left: 13px;
   padding-bottom: 10px;
   padding-right: 7px;
   font-weight: bold;
   background: transparent url(images/oob/corner-t-r-6.gif) top right no-repeat;
}

#OOBportalApps div.portletTools {
   display: none;
}

#OOBportalApps div.subheader {
   display: none;
}

#OOBportalApps div.content {
   padding: 0;
   background: #E4EDFB url(images/oob/corner-b-l-6.gif) bottom left no-repeat;
} 

#OOBportalApps div.columnone {
   padding: 0 6px;
}

#OOBportalApps a {
   color: #767676;
   background: transparent;
   text-decoration: none;
}

#OOBportalApps a img {
   margin-top: 0;
   border: 0;
   padding-top: 0;
   padding-left: 6px;
   padding-bottom: 0;
   padding-right: 7px;
}

#OOBportalApps div.grouping {
   padding: 1px 0;
   color: #767676;
   background: transparent;
   display: block;
}

#OOBportalApps div.grouping a {
   width: 238px;
   background: #e4edfb;
   float: left;
   -moz-border-radius: 4px;
    padding: 1px 0;
}

#OOBportalApps div.grouping a:hover {
   background: #B8D3FD;
}

#OOBportalApps div.grouping a h5 {
   margin-top: 0;
   padding-top: 7px;
   padding-left: 60px;
   padding-bottom: 0;
   padding-right: 6px;
   font-weight: bold;
}

#OOBportalApps div.grouping a p {
   margin: 0;
   padding-top: 1px;
   padding-left: 60px;
   padding-bottom: 3px;
   padding-right: 6px;
}

#OOBportalApps div.corner-b-r-6 {
   height: 6px;
   background: transparent url(images/oob/corner-b-r-6.gif) bottom right no-repeat;
}



/* Home New Portlet Specific Styles */

#OOBportalWhatsNew {}

#OOBportalWhatsNew  .header h2 {
/* fixes bidi bug in IE */
   padding-right: 5px;
   padding-bottom: 2px;
   color: #1C66C1;
   background: transparent;
   font-family: Arial, Helvetica, sans-serif;
   font-size: x-large;
}

#OOBportalWhatsNew .header h6 {
/* fixes bidi bug in IE */
   padding-right: 5px;
   margin-right: 5px;
   background: transparent;
   font-family:Verdana, Arial, Helvetica, sans-serif;
   font-size: small;
   color: #888;
}

#OOBportalWhatsNew .columnone {
/* fixes bidi bug in IE */
   padding-right: 5px;
   margin-top: 20px;	
   width: 49%;
   float: left;
}

#OOBportalWhatsNew .columnone h4 {
   margin: 0 0 2px 0;
   color: #1C66C1;
   font-family:Arial, Helvetica, sans-serif;
   font-size: large;
   background: transparent;
}

#OOBportalWhatsNew .columnone p {
   margin: 0 0 15px 0;
   color: #888;
   background: transparent;
   font-family:Verdana, Arial, Helvetica, sans-serif;
   font-size: small;
}

#OOBportalWhatsNew .columnone .grouping {
   padding-bottom: 10px;
}

#OOBportalWhatsNew .columntwo {
   margin: 20px 0 0 0;
   width: 49%;
   float: right;
}

#OOBportalWhatsNew .columntwo h4 {
   margin: 0 0 2px 0;
   color: #1C66C1;
   font-family:Arial, Helvetica, sans-serif;
   font-size: large;
   background: transparent;
}

#OOBportalWhatsNew .columntwo p {
   margin: 0 0 15px 0;
   margin-right: 5px;
   color: #888;
   background: transparent;
   font-family:Verdana, Arial, Helvetica, sans-serif;
   font-size: small;
}

#OOBportalWhatsNew .columntwo .grouping {
   margin: 0 5px 0 5px;
   padding-bottom: 10px;
   background: #FFFFFF
}

/* Home Start Portlet Specific Styles  */

div#OOBportalStart{
	width: 96%;
	padding-right: 5px;
}

div#OOBportalStart h4 {
		padding: 0;
		margin: 0 0 5px 0;
		font: normal medium "Helvetica", "Arial", "Verdana", sans-serif; }
		
div#OOBportalStart h4 a {
			display: block;
   			padding-top: 4px;
   			padding-left: 20px;
   			padding-bottom: 4px;
   			padding-right: 6px;
			background: transparent url(images/oob/arrow_left.gif) left 50% no-repeat;
			text-decoration: none;
			color: #e05f00; }
			
div#OOBportalStart h4 a:hover {
				color: #af4a00;
				background-color: #fff;
				text-decoration: underline; }

#OOBportalStart .portletTools { display: none; }

#OOBportalStart .subheader {display: none; }

#OOBportalStart h2 {
   padding: 15px 0 0 0;
   color: #2871CB;
   background: transparent
}

#OOBportalStart h5 {
   padding: 2px 0 0 0;
   color: #898989;
   background: transparent;
}


/* Home Welcome Portlet Specific Styles   */

#OOBportalWelcome div.col1 {
   margin: 0;
   float: left;
}

#OOBportalWelcome div.col2 {
   float: right;
} 

#OOBportalWelcome div.endfloat {
   border: 0;
   clear: both;
}

#OOBportalWelcome h1 {
   margin: 0;
   padding: 0;
   font: normal normal normal x-large Helvetica, Arial, Verdana, sans-serif;
}

div#OOBportalWelcome h1 {
   padding-top: 16px;
   padding-left: 30px;
   padding-bottom: 0;
   padding-right: 0;
   color: #fff;
   background: transparent url(images/oob/corner-t-l.gif) top left no-repeat;
}

#OOBportalWelcome h2 {
   margin: 0;
   padding: 0;
   font: normal normal normal large Helvetica, Arial, Verdana, sans-serif;
}

div#OOBportalWelcome h2 {
   color: #fff;
   background: transparent;
}

div#OOBportalWelcome h2 span {
   color: #1d477c;
   background: transparent;
}

div#OOBportalWelcome h2 {
   color: #1d477c;
   padding-top: 0;
   padding-left: 30px;
   padding-bottom: 6px;
   padding-right: 0;
}

#OOBportalWelcome h3 {
   margin: 0;
   padding: 0;
   font: normal normal normal medium Helvetica, Arial, Verdana, sans-serif
}

div#OOBportalWelcome h3 {
   padding-top: 36px;
   padding-left: 301px;
   padding-bottom: 0;
   padding-right: 27px;
   color: #2871cb;
   background: transparent;
   font-weight: bold;
}

#OOBportalWelcome h4 {
   margin: 0;
   font: normal normal normal small Helvetica, Arial, Verdana, sans-serif;
}

div#OOBportalWelcome h4 {
   padding-top: 14px;
   padding-left: 301px;
   padding-bottom: 0;
   padding-right: 27px;
   color: #fe9a2e;
   background: transparent;
   font-weight: bold;
}

div#OOBportalWelcome h4 a {
			margin-left: 3px;
			display: block;
			padding-top: 4px;
   			padding-left: 21px;
   			padding-bottom: 4px;
   			padding-right: 4px;
			background: transparent url(images/oob/arrow_left.gif) left 50% no-repeat;
			text-decoration: none;
			color: #e05f00; }
			
div#OOBportalWelcome h4 a:hover {
				color: #af4a00;
				text-decoration: underline; }

#OOBportalWelcome h6 {
   margin: 0;
   padding: 0;
   font: normal normal bold x-small Helvetica, Arial, Verdana, sans-serif;
}

div#OOBportalWelcome h6 {
   padding-top: 0;
   padding-left: 301px;
   padding-bottom: 0;
   padding-right: 27px;
   color: #515151;
   background: transparent;
   font-weight: normal;
   line-height: 16px;
}
div#OOBportalWelcome {
	/* fixes bidi bug in IE */
	padding-right: 5px;
 }

div#OOBportalWelcome div.header {
   width: 700px;
   background: #b8c2c9 url(images/oob/corner-t-r.gif) top right no-repeat;
}

div#OOBportalWelcome div.content {
   margin: 0;
   background: #eee;
}

div#OOBportalWelcome div.col1 {
   width: 237px;
   padding-top: 15px;
   padding-left: 27px;
   padding-bottom: 0;
   padding-right: 0;
   float: left; 
}

div#OOBportalWelcome div.col2 {
   float: none;
   display: block;
}

div#OOBportalWelcome div.content {
    background: #eee url(images/oob/corner-b-l.gif) bottom left no-repeat;
    line-height: 1.2;
}

#OOBportalWelcome div.br {
    background: url(images/oob/corner-b-r.gif) 100% 100% no-repeat
}

/* Product Blurb Portlet Specific Styles  */

#OOBproductWelcomeBlurb {}

#OOBproductWelcomeBlurb .header { display: none; }

#OOBproductWelcomeBlurb .subheader {display: none; }

#OOBproductWelcomeBlurb .content {
	width: 710px;}

#OOBproductWelcomeBlurb h6{
   margin-top: 0;
   margin-left: 30px;
   margin-bottom: 0;
   margin-right: 15px;
   color: #606060;
   background: transparent;
   font-family: Arial, Helvetica, sans-serif;
   font-size:small;
}

#OOBproductWelcomeBlurb h6 a { 
   color: #1C66C1;
   font-weight: normal;
   text-decoration: none;
}

#OOBproductWelcomeBlurb h6 a:hover {
	color: #164ead;
	text-decoration: underline;
 }

/* Product Welcome Portlet Specific Styles */

#OOBproductWelcome {
   width: 725px;}

#OOBproductWelcome .headerWCM {
   color: #5377AB;	
   background: transparent url(images/oob/message_header_left.gif) top left no-repeat;
   height: 140px;
   width: 720px;
}

#OOBproductWelcome .headerSearch {
   color: #5377AB;	
   background: transparent url(images/oob/welcome_search_left.gif) top left no-repeat;
   height: 140px;
   width: 720px;
}

#OOBproductWelcome .headerDM {
   color: #5377AB;	
   background: transparent url(images/oob/welcome_documents_left.gif) top left no-repeat;
   height: 140px;
   width: 720px;
}

#OOBproductWelcome .headerMessage {
   color: #5377AB;	
   background: transparent url(images/oob/welcome_messaging_left.gif) top left no-repeat;
   height: 140px;
   width: 720px;
}

#OOBproductWelcome .headerDomino {
   color: #5377AB;	
   background: transparent url(images/oob/welcome_domino_left.gif) top left no-repeat;
   height: 140px;
   width: 720px;
}

#OOBproductWelcome .headerPersonal {
   color: #5377AB;	
   background: transparent url(images/oob/welcome_personalization_left.gif) top left no-repeat;
   height: 140px;
   width: 720px;
}

#OOBproductWelcome .headerTemplates {
   color: #5377AB;	
   background: transparent url(images/oob/welcome_templates_left.gif) top left no-repeat;
   height: 140px;
   width: 720px;
}

#OOBproductWelcome h1 {
   margin-top: 12px;
   margin-left: 130px;
   margin-bottom: 0;
   margin-right: 20px;
   padding-top: 22px;
   padding-left: 28px;
   padding-bottom: 0;
   padding-right: 0px;
   color: #1C66C1;
   font-family:Arial, Helvetica, sans-serif;
   font-size:xx-large;
}

#OOBproductWelcome h3 {
   margin-top: 0;
   margin-left: 130px;
   margin-bottom: 0;
   margin-right: 20px;
   padding-top: 3px;
   padding-left: 28px;
   padding-bottom: 0;
   padding-right: 0px;
   color: #888888;
   font-family:Arial, Helvetica, sans-serif;
   font-size:large;
}

#OOBproductWelcome .subheader {
   padding-top: 31px;
   padding-left: 19px;
   padding-bottom: 0;
   padding-right: 0;
}

#OOBproductWelcome .content {
   background: #fff;
   padding: 10px 0 0 0;
   width: 700px;
}

#OOBproductWelcome .columnone {
   width: 330px;
   float: left;
}

#OOBproductWelcome .columntwo {
   width: 330px;
   float: right;
}

#OOBproductWelcome .grouping {
   padding-left: 20px;
   padding-right: 20px;
   padding-bottom: 15px;
}

#OOBproductWelcome p {
   background: transparent url(images/oob/arrowCon_left.gif) top left no-repeat;
   margin: 0 0 20px 0;
   margin-left: 10px;
   font-family:Verdana, Arial, Helvetica, sans-serif;
   font-size:small;
   color:#888888;
   padding-left: 28px;
}

#OOBproductWelcome img.float {
   display: none;
}




/* Workcenter Portlet Specific Styles */

#OOBworkcenter {
   width: 300px;
}

#OOBworkcenter div.headlines {
   padding: 17px 17px 7px 17px;
   color: #3966CD;
   background: transparent;
}

#OOBworkcenter div.headlines h4{
   padding-top: 30px;
   color: #77A1ED;
   background: transparent url(images/oob/corner-t-r-6.gif) top right no-repeat;
}

#OOBworkcenter div.portletTools {display: none;}
#OOBworkcenter div.subheader {display: none;}

#OOBworkcenter div.content {
   padding: 0;
} 

#OOBworkcenter div.columnone {
   padding: 0 6px;
}

#OOBworkcenter a {
   color: #767676;
   background: transparent;
   text-decoration: none;
   display: block;
}

#OOBworkcenter a img {
   margin: 5px;
   border: 0;
   padding: 0 0 0 0;
}

#OOBworkcenter div.grouping {		
   padding: 4px 0;
   color: #767676;
   background: transparent;
   display: block;
}

#OOBworkcenter div.grouping a {
   width: 288px;	
   background: #fff;
   float: left;
   -moz-border-radius: 4px;
}

#OOBworkcenter div.grouping a:hover {
   background: #B8D3FD;
}

#OOBworkcenter div.grouping a p {
   margin: 0;
   padding-top: 9px;
   padding-left: 80px;
   padding-bottom: 8px;
   padding-right: 6px;
   font-family:Verdana, Arial, Helvetica, sans-serif;
   font-size:x-small;
   color:#404040
}

#OOBworkcenter div.endfloat {
   clear: both;
}


/* Admin Section Portlet Specific Styles */

#OOBadminSection{
	width: 725px;
}

#OOBadminSection .headerUI {
   color: #5377AB;	
   background: transparent url(images/oob/welcome_portalUI_left.gif) top left no-repeat;
   height: 140px;
   width: 720px;
}

#OOBadminSection .headerAccess {
   color: #5377AB;	
   background: transparent url(images/oob/welcome_access_left.gif) top left no-repeat;
   height: 140px;
   width: 720px;
}

#OOBadminSection .headerSettings {
   color: #5377AB;	
   background: transparent url(images/oob/welcome_settings_left.gif) top left no-repeat;
   height: 140px;
   width: 720px;
}

#OOBadminSection .headerContent {
   color: #5377AB;	
   background: transparent url(images/oob/welcome_content_left.gif) top left no-repeat;
   height: 140px;
   width: 720px;
}

#OOBadminSection .headerSearch {
   color: #5377AB;	
   background: transparent url(images/oob/welcome_search_left.gif) top left no-repeat;
   height: 140px;
   width: 720px;
}

#OOBadminSection .headerAnalysis {
   color: #5377AB;	
   background: transparent url(images/oob/welcome_analysis_left.gif) top left no-repeat;
   height: 140px;
   width: 720px;
}

#OOBadminSection .headerVirtual {
   color: #5377AB;	
   background: transparent url(images/oob/welcome_vps_left.gif) top left no-repeat;
   height: 140px;
   width: 720px;
}

#OOBadminSection .headerPortlets {
   color: #5377AB;	
   background: transparent url(images/oob/welcome_portlets_left.gif) top left no-repeat;
   height: 140px;
   width: 720px;
}

#OOBadminSection a{
	display: block;
	text-decoration: none;
}

#OOBadminSection a:hover{
	text-decoration: underline;
}

#OOBadminSection div.headlines h1 {
   margin-top: 12px;
   margin-left: 130px;
   margin-bottom: 0;
   margin-right: 20px;
   padding-top: 20px;
   padding-left: 16px;
   padding-bottom: 0;
   padding-right: 0px;
   color: #1c66c1;
}

#OOBadminSection .headlines h3 {
   margin-top: 0;
   margin-left: 130px;
   margin-bottom: 0;
   margin-right: 20px;
   padding-top: 7px;
   padding-left:16px;
   padding-bottom: 25px;
   padding-right: 0px;
   color: #888;
}

#OOBadminSection .wrap h3,
#OOBadminSection .wrap h5 {
   padding-top: 0;
   padding-left: 16px;
   padding-bottom: 0;
   padding-right: 21px;
}

#OOBadminSection .one h3,
#OOBadminSection .one h5 {
   padding-top: 0;
   padding-left: 16px;
   padding-bottom: 0;
   padding-right: 8px;
   padding: 0 8px 0 16px;
}

#OOBadminSection .two h3,
#OOBadminSection .two h5 {
   padding-top: 0;
   padding-left: 8px;
   padding-bottom: 0;
   padding-right: 16px;
}

#OOBadminSection .content h3 {
   color: #3071c7;
}

#OOBadminSection h3special {
   color: #F86000;
   background: transparent;
   font-family:Arial, Helvetica, sans-serif;
   font-size:large;
   margin-left:7px
}

#OOBadminSection h5 {
   color: #888;
   background: transparent;
}

#OOBadminSection h5.title {
   color: #585858;
   background: transparent;
   font-weight: bold;
}

#OOBadminSection h5.title em {
   color: #F86000;
   background: transparent;
   font-style: normal;
}

#OOBadminSection h5.break {
   margin-top: 15px;
   display: block;
}

#OOBadminSection div.header {
   background: #e0edfd;
}

#OOBadminSection div.headlines {
   background: transparent;
}

#OOBadminSection div.headlines img {
   margin-top: 17px;
   margin-left: 0;
   margin-bottom: 0;
   margin-right: 19px;
   float: right;
}

#OOBadminSection div.subheader {
   height: 4px;
   margin-bottom: 17px;
   background: #e0edfd;
}

#OOBadminSection div.subheader img {
   float: right;
}

div#OOBadminSection div.one,
div#OOBadminSection div.two {
   width: 49%;
}


/* Admin Welcome Portlet Specific Styles */
#OOBadminWelcome{
	width: 725px;
}

#OOBadminWelcome .header {
   color: #5377AB;	
   background: transparent url(images/oob/welcome_administration_left.gif) top left no-repeat;
   height: 140px;
   width: 720px;
}

div#OOBadminWelcome h1 {
   margin-top: 30px;
   margin-left: 120px;
   margin-bottom: 0;
   margin-right: 20px;
   padding-top: 0;
   padding-left: 9px;
   padding-bottom: 0;
   padding-right: 0px;
   color: #1963c6;
   background: transparent;
   font-size:x-large;
}

div#OOBadminWelcome h3 {
   margin-top: 0;
   margin-left: 120px;
   margin-bottom: 0;
   margin-right: 20px;
   padding-top: 12px;
   padding-left: 9px;
   padding-bottom: 24px;
   padding-right: 0;
   color: #888;
   background: transparent;
}

div#OOBadminWelcome a{
   display: block;
   text-decoration: none;
   padding-top: 0;
   padding-left: 0;
   padding-bottom: 10px;
   padding-right: 5px;
   -moz-border-radius: 4px;
}

div#OOBadminWelcome a:hover{
   background: #e0edfd;
}

div#OOBadminWelcome div.portletTools {
   display: none;
}

div#OOBadminWelcome div.subheader {
   display: none;
}

div#OOBadminWelcome div.one,
div#OOBadminWelcome div.two {
   width: 48%;
}

div#OOBadminWelcome div.grouping {
   width: 93%;
   margin: 8px;
   font-size:small;
}
div#OOBadminWelcome h6 {
	margin: 0;
  	padding-top: 0;
 	padding-left: 73px;
      padding-bottom: 10px;
      padding-right: 0;
	color: #5C5C5C !important;
	background: transparent;
	font-size: x-small;
}

div#OOBadminWelcome h6.more{
	margin: 0;
  	padding-top: 0;
  	padding-left: 73px;
  	padding-bottom: 15px;
  	padding-right: 0;
	color: #5C5C5C !important;
	background: transparent;
	font-size: x-small;
}

div#OOBadminWelcome h6.less{
	margin: 0;
  	padding-top: 0;
  	padding-left: 73px;
  	padding-bottom: 4px;
  	padding-right: 0;
	color: #5C5C5C !important;
	background: transparent;
	font-size: x-small;
}

div#OOBadminWelcome h5 {
	padding: 12px 0 0 0;
	text-indent: 10px;
   	font-size: small;
	margin: 0 0 0 0;
	color: #1C66C1;
	background: transparent;
}

div.OOB div.grouping img.float {
	border: 0;
	float: left;
}

div#OOBadminWelcome div.endfloat h4 {
   margin: 0 20px 0 20px;
   padding: 19px 6px 0 6px;
   color: #606060;
   background: transparent;
   font-family:Arial, Helvetica, sans-serif;
   font-size:small;
}









.wpsTableAdminHead {
    color: #333333;
    background-color: #CCCCCC;
}


.wpsAdminHeadSeparator {
    background-color: #999999;
    height: 1px;
}


.wpsStatusMsg {
    color: #000000;
    background-color: #E7EFF7; 
    margin: 0px; 
    border: solid 2px #ABCACA; 
    -moz-border-radius: 8px;
    
}






.wpsInstructionText {
    color: #6B6B6B;
    margin: 0.6em 0px 0px 0px;
}



.wpsInstructionText em {
     font-weight: bold;
     font-style: normal;
     color: #8A59A6;
}



.wpsInstructionHeadText {
     font-weight: bold;
     font-size: x-small;
     color: #405380;
}











.wpsIndentXSmall {
        padding-left: 4px; 
}


.wpsIndentSmall {
        padding-left: 8px; 
}


.wpsIndentMedium {
        padding-left: 16px; 
}


.wpsIndentLarge {
        padding-left: 32px; 
}


.wpsIndentXLarge {
        padding-left: 48px; 
}




.wpsTaskIconText {
    font-weight: bold;
    color: #000000; 
    white-space: nowrap;
}


.wpsTaskDisabledIconText {
    font-weight: bold;
    white-space: nowrap;
    color: #888888; 
}


.wpsTaskIconBorderTable, .wpsTaskDisabledIconBorderTable {
    border: 0px;
}


.wpsTaskIconTextBackground {
    background-color: #DDDDDD; 
    background-image: url("./colors/default/ButtonBackground.gif");
    background-repeat: repeat-x;
    background-position: left center;     
    border: 1px solid #919191;
    padding: 2px 4px;
    margin: 0px;
    text-align: center;
    vertical-align: middle;
    white-space: nowrap;
}


.wpsTaskDisabledIconTextBackground {
    background-color: #DDDDDD; 
    background-image: url("./colors/default/ButtonBackground.gif");
    background-repeat: repeat-x;
    background-position: left center;     
    border: 1px solid #919191;
    padding: 2px 4px;
    margin: 0px;
    text-align: center;
    vertical-align: middle;
    white-space: nowrap;
}


.wpsDialogIconText {
    color: #000000;
}


.wpsDialogDisabledIconText {
    color: #888888;
}


.wpsDialogIconBackground {
    text-align: center;
    vertical-align: middle;
    background-color: #DDDDDD;
    background-image: url("./colors/default/DialogIconBackground.gif");
    background-repeat: repeat-x;
    background-position: left center; 
    border-top: 1px solid #919191;
    border-right: 0px none #919191;
    border-bottom: 1px solid #919191;
    border-left: 1px solid #919191;
    padding: 0px 0px;
    margin: 0px;
}


.wpsDialogIconTextBackground {
    text-align: center;
    vertical-align: middle;
    background-color: #DDDDDD; 
    background-image: url("./colors/default/DialogIconTextBackground.gif");
    background-repeat: repeat-x;
    background-position: left center; 
    border-top: 1px solid #919191;
    border-right: 1px solid #919191;
    border-bottom: 1px solid #919191;
    border-left: 0px none #919191;
    padding: 2px 4px;
    margin: 0px;
    white-space: nowrap;
}


.wpsDialogDisabledIconBackground {
    text-align: center;
    vertical-align: middle;
    background-color: #DDDDDD;
    background-image: url("./colors/default/DialogIconBackground.gif");
    background-repeat: repeat-x;
    background-position: left center; 
    border-top: 1px solid #919191;
    border-right: 0px none #919191;
    border-bottom: 1px solid #919191;
    border-left: 1px solid #919191;
    padding: 0px 0px;
    margin: 0px;
}


.wpsDialogDisabledIconTextBackground {
    text-align: center;
    vertical-align: middle;
    background-color: #DDDDDD; 
    background-image: url("./colors/default/DialogIconTextBackground.gif");
    background-repeat: repeat-x;
    background-position: left center; 
    border-top: 1px solid #919191;
    border-right: 1px solid #919191;
    border-bottom: 1px solid #919191;
    border-left: 0px none #919191;
    padding: 2px 4px;
    margin: 0px;
    white-space: nowrap;
}


.wpsDialogIcon {
    width: 16px;
    height: 16px;
}


.wpsButtonBarTop, .wpsButtonBarBottom {
    background-color: #DFDFDF; 
}





.wpsPortletBack {
    background-color: #FFFFFF;
}


.wpsEditBack, .wpsConfigureBack {
    background-color: #FFFFFF;
}


.wpsAdvancedOptions { 
    background-color: #e4e4e4;
    border: solid 1px #4A4A4A;
    margin-left: 10px;
}


.wpsPortletColorBack {
    background-color: #CCCCCC;
}


.wpsPortletHead, .wpsEditHead {
    font-weight: bold;
    color: #333333;
}


.wpsPortletText, .wpsEditText, .wpsPortletSmText, .wpsEditSmText, .wpsPortletTinyText {
    font-family: Verdana, Arial, Helvetica, sans-serif;
    font-size: x-small;
    color: #333333;
}

 
.wpsCopyrightText {
	font-size: xx-small;
    color: #999999;
}


.wpsPortletBody {
}


.wpsTableHead {
    font-weight: bold;
    color: #989898;
    text-align: left;
}


.wpsTableHead th {
	padding: 3px;
}

.wpsTableText {
}


.wpsTableRow, .wpsTableNrmRow {
    color: #333333;
    background-color: #ffffff;
}


.wpsTableSelectedRow {
    color: #333333;
    background-color: #c5d1de;
}



.wpsTableShdRow {
    color: #333333;
}



.wpsTableRow td, .wpsTableNrmRow td, .wpsTableShdRow td {
    border-width: 1px 0px 0px 0px;
    border-style: solid;
    border-color: #aaaaaa;
    padding: 3px;
}



.wpsTableHeadLink, .wpsTableHeadLink:visited, .wpsTableHeadLink:hover, .wpsTableHeadLink:active {
    font-weight: normal;
    color: #000000;
}


.wpsTable {
    border-width: 1px;
    border-style: solid;
    border-color: #aaaaaa;
}

.wpsTable td {
	vertical-align:top;
}


.wpsTableHeadStart, .wpsTableHeadMiddle, .wpsTableHeadEnd {
    font-weight: normal;
    color: #000000;
    text-align: left;
    background-color: #ffffff;
    border-width: 0px 0px 0px 0px;
    border-style: none;
    border-color: #aaaaaa;
}


.wpsTableHeadStartAlignCenter, .wpsTableHeadMiddleAlignCenter, .wpsTableHeadEndAlignCenter {
    font-weight: normal;
    color: #000000;
    text-align: center;
    background-color: #ffffff;
    border-width: 0px 0px 0px 0px;
    border-style: none;
    border-color: #aaaaaa;
}


.wpsTableHeadStartNumeric, .wpsTableHeadMiddleNumeric, .wpsTableHeadEndNumeric {
    font-weight: normal;
    color: #000000;
    text-align: right;
    background-color: #ffffff;
    border-width: 0px 0px 0px 0px;
    border-style: none;
    border-color: #aaaaaa;
}



.wpsTableDataStart, .wpsTableDataMiddle, .wpsTableDataEnd {
    text-align: left;
    border-width: 1px 0px 0px 0px ! important;
    border-style: solid ! important;
    border-color: #aaaaaa ! important;
}



.wpsTableDataStartAlignCenter, .wpsTableDataMiddleAlignCenter, .wpsTableDataEndAlignCenter {
    text-align: center;
    border-width: 1px 0px 0px 0px ! important;
    border-style: solid ! important;
    border-color: #aaaaaa ! important;
}



.wpsTableDataStartNumeric, .wpsTableDataMiddleNumeric, .wpsTableDataEndNumeric {
    text-align: right;
    border-width: 1px 0px 0px 0px ! important;
    border-style: solid ! important;
    border-color: #aaaaaa ! important;
}


.wpsPagingTable, .wpsPagingTableHeader, .wpsPagingTableFooter, .wpsPagingTableBody {
    border: 0px;
}


.wpsPagingTableHeaderIcon, .wpsPagingTableFooterIcon {
    width: 16px;
    height: 16px;
}


.wpsPagingTableHeaderStart {
    background-color: #F0F0F0;
    border-top: 1px solid #aaaaaa;
    border-right: 0px none #aaaaaa;
    border-bottom: 0px none #aaaaaa;
    border-left: 1px solid #aaaaaa;
}


.wpsPagingTableHeaderMiddle {
    background-color: #F0F0F0;
    border-top: 1px solid #aaaaaa;
    border-right: 0px none #aaaaaa;
    border-bottom: 0px none #aaaaaa;
    border-left: 0px none #aaaaaa;
}


.wpsPagingTableHeaderEnd {
    background-image: url("./colors/default/PagingTableTopRight.gif");
    background-repeat: no-repeat;
    background-position: right top;
    background-color: transparent;
}


.wpsPagingTableFooterStart {
    background-color: #F0F0F0;
    border-top: 0px none #aaaaaa;
    border-right: 0px none #aaaaaa;
    border-bottom: 1px solid #aaaaaa;
    border-left: 1px solid #aaaaaa;
}


.wpsPagingTableFooterMiddle {
    background-color: #F0F0F0;
    border-top: 0px none #aaaaaa;
    border-right: 0px none #aaaaaa;
    border-bottom: 1px solid #aaaaaa;
    border-left: 0px none #aaaaaa;
}


.wpsPagingTableFooterEnd {
    background-image: url("./colors/default/PagingTableBottomRight.gif");
    background-repeat: no-repeat;
    background-position: right bottom; 
    background-color: transparent;
}


.wpsPagingTableHeaderEmpty {
	height:7px;
	width:7px;
	line-height:1px;
}


.wpsTableRowDetail td {
	border-width:0px;
   	text-align: left;
   	border-width: 0px ! important;
	padding:2px 3px 5px 3px;
}


.wpsTableSectionHead {
    font-weight: bold;
    color: #000000;
    text-align: left;
}


.wpsTableSectionHead th {
    border-width: 1px 0px 0px 0px;
    border-style: solid;
    border-color: #aaaaaa;
    padding: 3px 0 3px 5px;
}


.wpsTableTopRow td {
    border-color: #aaaaaa ! important;
}


.wpsPagingTableHeaderEmpty {
	height: 7px;
	width: 7px;
	line-height: 1px;
}


.wpsTableRowDetail td {
	border-width: 0px;
   	text-align: left;
   	border-width: 0px ! important;
	padding: 2px 3px 5px 3px;
}




.wpsCompactCheckBox, .wpsCompactRadioButton {
   height: 16px;
   margin-top: 0px;
   margin-bottom: 0px;
}


.wpsEditField{
    border: 1px solid #999999;
}


.wpsButtonText{ 
    font-weight: bold;
    color: #000000;
    background-color: #DDDDDD;
    background-image: url("./colors/default/ButtonBackground.gif");
    background-repeat: repeat-x;
    background-position: left center; 
    border: 1px solid #919191;
    padding: 2px 4px;
    margin: 0px;
    text-align: center;
}


.wpsButtonDisabledText { 
    font-weight: bold;
    color: #888888;
    background-color: #DDDDDD; 
    background-image: url("./colors/default/ButtonBackground.gif");
    background-repeat: repeat-x;
    background-position: left center; 
    border: 1px solid #919191;
    padding: 2px 4px;
    margin: 0px;
    text-align: center;
}


.wpsBrowseButton {
}



.wpsLabelText, wpsRequiredLabelText {
    color: #333333;
}


.wpsRequiredLabelText strong {
    color: #ff0000;
}


.wpsDescriptionText {
    color: #808080;
}




.wpsFieldErrorText {
    color: #000000;
}


.wpsFieldWarningText {
    color: #000000;
}


.wpsFieldSuccessText {
    color: #000000;
}


.wpsFieldInfoText {
    color: #000000;
}


.wpsInlineHelpText {
    color: #666666;
}


.wpsFieldMonospaced {
    font-family: monospace;
    font-size: x-small;
}


.wpsFlagText {
   font-size: xx-small;
   color: #FF0000;
}




.wpsPortletTabBar { 
}


.wpsPortletTabBarSeparator {
    background: url("./colors/default/portletTabSeparator.gif");
	background-repeat: repeat-x;
    background-color: #95a5b9;
    margin: 0px;
    padding: 0px;
    height: 3px;
}


.wpsPortletTabSet {
    border: 0px;
    background-color: transparent;
}


.wpsPortletTab {
    border: 0px;
    background-color: transparent;
}


.wpsPortletSelectedTab {
    border: 0px;
    background-color: transparent;
}


.wpsPortletTabTopStart {
	background-image: url("./colors/default/PortletTabTopLeft.jpg");
    background-repeat: no-repeat;
    background-position: bottom left;
    padding: 0px 2px 0px 2px;
    width: 5px;
    height: 5px;
}


.wpsPortletTabTopCenter {
    background-image: url("./colors/default/PortletTabTopMiddle.jpg");
	background-repeat: repeat-x;
	background-position: bottom;
}


.wpsPortletTabTopEnd {
    background-image: url("./colors/default/PortletTabTopRight.jpg");
    background-repeat: no-repeat;
    background-position: bottom right;
    border-style: none;
    background-color: transparent;
    padding: 0px 2px 0px 2px;
    width: 5px;
    height: 5px;
}


.wpsPortletTabMiddleStart {
    background-image: url("./colors/default/PortletTabCenter.jpg");
    background-repeat: repeat-x;
    background-color: #FFFFFF;
    border-top: 0px none #C0C0C0;
    border-right: 0px none #C0C0C0;
    border-bottom: 0px none #C0C0C0;
    border-left: 1px solid #C0C0C0;
}


.wpsPortletTabMiddleCenter {
    background-image: url("./colors/default/PortletTabCenter.jpg");
    background-repeat: repeat-x;
    background-color: #FFFFFF;
    white-space: nowrap;
    border-style: none;
}


.wpsPortletTabMiddleEnd {
    background-image: url("./colors/default/PortletTabCenter.jpg");
    background-repeat: repeat-x;
    background-color: #FFFFFF;
    border-top: 0px none #C0C0C0;
    border-right: 1px solid #C0C0C0;
    border-bottom: 0px none #C0C0C0;
    border-left: 0px none #C0C0C0;
}


.wpsPortletTabBottomStart {
    background-color: #FFFFFF;
    border-top: 0px none #C0C0C0;
    border-right: 0px none #C0C0C0;
    border-bottom: 0px none #C0C0C0;
    border-left: 1px solid #C0C0C0;
    width: 5px;
    height: 5px;
}


.wpsPortletTabBottomCenter {
    background-color: #FFFFFF;
    border-style: none;
}


.wpsPortletTabBottomEnd {
    background-color: #FFFFFF;
    border-top: 0px none #C0C0C0;
    border-right: 1px solid #C0C0C0;
    border-bottom: 0px none #C0C0C0;
    border-left: 0px none #C0C0C0;
    width: 5px;
    height: 5px;
}



.wpsPortletSelectedTabTopStart {
    background-image: url("./colors/default/PortletSelectedTabTopLeft.jpg");
    background-repeat: no-repeat;
    background-position: bottom left;
    padding: 0px 2px 0px 2px;
    width: 5px;
    height: 5px;
}


.wpsPortletSelectedTabTopCenter {
    background-image: url("./colors/default/PortletSelectedTabTopMiddle.jpg");
    background-repeat: repeat-x;
    background-position: bottom;
    border-top: 0px solid #AAC2E6;
    border-right: 0px none #AAC2E6;
    border-bottom: 0px none #AAC2E6;
    border-left: 0px none #AAC2E6;
}


.wpsPortletSelectedTabTopEnd {
    background-image: url("./colors/default/PortletSelectedTabTopRight.jpg");
    background-repeat: no-repeat;
    background-position: bottom right;
    border-style: none;
    background-color: transparent;
    padding: 0px 2px 0px 2px;
    width: 5px;
    height: 5px;
}


.wpsPortletSelectedTabMiddleStart {
    background-image: url("./colors/default/portletSelectedTabCenterMid.jpg");
    background-repeat: repeat-x;
    border-top: 0px none #AAC2E6;
    border-right: 0px none #AAC2E6;
    border-bottom: 0px none #AAC2E6;
    border-left: 1px solid #AAC2E6;
}


.wpsPortletSelectedTabMiddleCenter {
    background-image: url("./colors/default/portletSelectedTabCenterMid.jpg");
    background-repeat: repeat-x;
    border-style: none;
    white-space: nowrap;
}


.wpsPortletSelectedTabMiddleEnd {
    background-image: url("./colors/default/portletSelectedTabCenterMid.jpg");
    background-repeat: repeat-x;
    border-top: 0px none #AAC2E6;
    border-right: 1px solid #AAC2E6;
    border-bottom: 0px none #AAC2E6;
    border-left: 0px solid #AAC2E6;
}


.wpsPortletSelectedTabBottomStart {
    background-color: #FFFFFF;
    border-top: 0px none #AAC2E6;
    border-right: 0px none #AAC2E6;
    border-bottom: 0px none #AAC2E6;
    border-left: 1px solid #AAC2E6;
    width: 5px;
    height: 5px;
}


.wpsPortletSelectedTabBottomCenter {
    background-color:  #FFFFFF;
    border-style: none;
}


.wpsPortletSelectedTabBottomEnd {
    background-color:  #FFFFFF;
    border-top: 0px none #AAC2E6;
    border-right: 1px solid #AAC2E6;
    border-bottom: 0px none #AAC2E6;
    border-left: 0px none #AAC2E6;
    width: 5px;
    height: 5px;
}


.wpsPortletTabLink, .wpsPortletTabLink:visited, .wpsPortletTabLink:active, .wpsPortletTabLink:hover {
    color: #333333;
}


.wpsPortletSelectedTabLink, .wpsPortletSelectedTabLink:hover, .wpsPortletSelectedTabLink:visited, .wpsPortletSelectedTabLink:active {
    color: #2056A0;
	font-weight: bold;
}




.wpsPortletToolbar {
    background-color: #c5d1de;
    border-top: 1px solid #e4edf5;
    border-right: 1px solid #95a5b9;
    border-bottom: 1px solid #95a5b9;
    border-left: 1px solid #e4edf5;
}


.wpsPortletToolbarSection {
   border-width: 0px;
}


.wpsPortletToolbarSet {
}


.wpsPortletToolbarButton {    
    background-color: #c5d1de;
    padding: 3px;
    border-width: 1px;
    border-style: solid;
    border-color: #c5d1de;
}


.wpsPortletToolbarButtonRollover {
    background-color: #c5d1de;
    padding: 3px;
    border-top: 1px solid #e4edf5;
    border-right: 1px solid #95a5b9;
    border-bottom: 1px solid #95a5b9;
    border-left: 1px solid #e4edf5;
}


.wpsPortletToolbarButtonPressed {
    background-color: #dadfe5;
    padding: 3px;
    border-top: 1px solid #95a5b9;
    border-right: 1px solid #e4edf5;
    border-bottom: 1px solid #e4edf5;
    border-left: 1px solid #95a5b9;
}


.wpsPortletToolbarButtonSelected {
    background-color: #aeb8c4;
    padding: 3px;
    border-top: 1px solid #95a5b9;
    border-right: 1px solid #e4edf5;
    border-bottom: 1px solid #e4edf5;
    border-left: 1px solid #95a5b9;
}


.wpsPortletToolbarButtonSelectedRollover {
    background-color: #aeb8c4;
    padding: 3px;
    border-top: 1px solid #e4edf5;
    border-right: 1px solid #95a5b9;
    border-bottom: 1px solid #95a5b9;
    border-left: 1px solid #e4edf5;
}


.wpsPortletToolbarButtonIcon {
    width: 16px;
    height: 16px;
}


.wpsPortletToolbarControl {
    padding: 3px;
}


.wpsPortletToolbarText {
    color: #333333;
}


.wpsPortletToolbarDisabledText {
    color: #999999;
}


.wpsPortletToolbarLink, .wpsPortletToolbarLink:hover, .wpsPortletToolbarLink:visited, .wpsPortletToolbarLink:active {
    color: #333333;
}



.wpsPortletToolbarSeparator {
    background-color: #95a5b9;
    width: 1px;
    margin: 0px;
    padding: 0px;
    border-top: 0px none #95a5b9;
    border-right: 1px solid #e4edf5;
    border-bottom: 0px none #e4edf5;
    border-left: 0px none #95a5b9;
}


.wpsPortletToolbarSpacer {
    padding: 0px 2px 0px 2px; 
}


.wpsPortletToolbarHandle {
    background-color: #c5d1de;
    padding: 0px;
    margin: 0px;
    width: 1px;
    border-top: 1px solid #e4edf5;
    border-right: 1px solid #95a5b9;
    border-bottom: 1px solid #95a5b9;
    border-left: 1px solid #e4edf5;
}





.wpsBreadcrumbTrail {
    font-weight: bold;
}


.wpsBreadcrumbTrailLink, .wpsBreadcrumbTrailLink:hover, .wpsBreadcrumbTrailLink:visited, .wpsBreadcrumbTrailLink:active {
    font-weight: bold;
    color: #3366CC;
    text-decoration: underline;
}












.wpsPortletAccentArea {
    background-color: #c5d1de;
    color: #333333;
}


.wpsPortletAccentArea3DHighlight {
    background-color: #e4edf5;
    color: #333333;
}


.wpsPortletAccentArea3DShadow {
    background-color: #95a5b9;
    color: #333333;
}





.wpsWizardTitle {
    font-weight: bold;
    background-color: #c1c1c1;
    color: black;
    padding-left: 5px;
    padding-top: 5px;
    padding-bottom: 5px;
}


.wpsWizardStepNotification {
    background-color: #dfdfdf;
    color: black;
    padding-left: 5px;
    padding-top: 5px;
    padding-bottom: 5px;
}


.wpsWizardBottomSubmit {
    background-color: #c1c1c1;
    color: black;
    padding-left: 5px;
    padding-top: 5px;
    padding-bottom: 25px;
}





.wpsCursorPointer {
	cursor: pointer;
}








.weekday_header {
    font-size: x-small;
    background-color: #999999;
    color: #333333;
}


.other_month_header {
    background-color: #E4E3E3;
    color: #7E7001;
    height: 20px;
}


.current_month_header {
    background-color: #CBDBF3;
    color: #333333;
    height: 20px;
}


.other_month_cell {
    background-color: #F0F0F0;
}


.current_month_cell {
    background-color: #FFFFFF;
    color: Black;
}


.current_day_header {
    font-size: x-small;
    background-color: #92B5E6;
    color: #333333;
    height: 20px;
}


a.current_day_header:link {
    background-color: transparent;
    color: #333333;
}


a.other_month_header:link {
    background-color: transparent;
    color: #0000ff;
}


a.current_month_header:link {
    background-color: transparent;
    color: #0050C9;
}









a.wpsPersonName {
	text-decoration: none;
	white-space: nowrap;
	color: #3366CC;
}

a.wpsPersonName:visited {
	text-decoration: none;
	white-space: nowrap;
	color: #666699;
}

a.wpsPersonName:hover {
	text-decoration: underline;
	white-space: nowrap;
	color: #666699;
}







.wpsGettingStartedTitle
{
    font-size: small;
	font-weight: normal;
    color: #2055A3;
}

.wpsGettingStartedHeader
{
    font-size: x-small;
	font-weight: normal;
    color: #2055A3;
}

.wpsGettingStartedBody
{
    font-size: xx-small;
	color: #616161;
    padding-top: 10px;
}

.gsTableOutside
{
    background-color: #E0EDFC;
    vertical-align : top;
}

.gsTableInside
{
    background-color: #E0EDFC;
    padding-top: 5px;
    padding-left: 5px;
    padding-right: 5px;
    vertical-align : top;
}

.gsTableEnd
{
    background-image: url("./colors/default/gs_end.gif");
    background-repeat: repeat-x;
}









.wpsSearchInfoBar{
    font-family: Verdana, Arial, Helvetica, sans-serif;
    font-size: x-small;
    color: #333333;
	background-color: #c7d9f1;
}

.wpsSearchUrl, a.wpsSearchUrl {
	font-weight: bold;
}

.wpsSearchUrlAddressText{
	color: #008000;
	font-style: italic;
}

.wpsSearchAttributeText{
	color: #c1c1c1;
	font-style: italic;
}














.lwp-teamSpace-title, .lwp-webConference-title {
    font-weight: bold;
    background-color: #5C5C5C;
    color: #FFFFFF;
}


.popup-background {
	background-color: #eeeeee;
}


.lwp-middleToolbar {
    font-size: x-small;
    color: #737373; 
    background-color: #FFFFFF;
    border-bottom: 0px solid #D8D8E0;
    padding: 4px 4px;
    margin: 0px;
}


.lwpAdminButton {
    font-size: x-small;
    color: #FFFFFF; 
    background-color: #A0A0A0;
	text-decoration: none;
	padding: 0px 5px;
    margin: 0px;
}


.lwpAdminButtonLink, .lwpAdminButtonLink:hover, .lwpAdminButtonLink:active, .lwpAdminButtonLink:visited {
    font-size: x-small;
    font-weight: normal;
    color: #FFFFFF; 
    background-color: #A0A0A0;
    margin: 0px;
    text-decoration: none;
}


.lwpNavButton {
    color: #FFFFFF; 
    background-color: #70A8F0;
    margin: 0px;
	text-decoration: none;
	padding: 0px 5px;       
}


.lwpNavButtonLink, .lwpNavButtonLink:hover, .lwpNavButtonLink:active, .lwpNavButtonLink:visited {
    font-weight: normal;
    color: #FFFFFF; 
    background-color: #70A8F0;
    margin: 0px;
    text-decoration: none;
}


.button-link, a.button-link, a.button-link:hover, a.button-link:visited {
	text-decoration: none;
	color: #000000;
}



.lwpButtonGroup{
	margin: .25em 4px;
}


.lwpIconOnly, .lwpIconOnlyDisabled {
	border:0px;
	background-color:white;
}


.lwpDialogIconBackground {
	text-decoration: none;
	text-align: center;
	vertical-align: top;
	background-color: #DDDDDD;
	background-image: url("./colors/default/DialogIconTextBackground.gif");
	background-repeat: repeat-x;
	border: 1px solid #919191;
    padding: 0px 2px;
	margin: 0px;
	overflow: visible;
	font-weight: normal;
	color: #000000;
	cursor: pointer;
}


.lwpDialogDisabledIconBackground, .lwpDialogIconBackgroundDisabled {
	text-decoration: none;
	text-align: center;
	vertical-align: top;
	background-color: #DDDDDD;
	background-image: url("./colors/default/DialogIconTextBackground.gif");
	background-repeat: repeat-x;
	background-position: left center;
	border: 1px solid #919191;
    padding: 0px 2px;
	margin: 0px;
	overflow: visible;
	font-weight: normal;
	color: #888888;
}


.lwpButtonText { 
    font-weight: bold;
    text-decoration: none;
	color: #000000;
	vertical-align: middle;
    background-color: #DDDDDD; 
    background-image: url("./colors/default/ButtonBackground.gif");
    background-repeat: repeat-x;
    background-position: left center; 
    border-top: 1px solid #919191;
    border-bottom: 1px solid #919191;
    border-right: 1px solid #919191;
    border-left: 1px solid #919191;
    padding: 0px 2px;
	overflow: visible;
    margin: 0px;
    text-align: center;
}



.lwpButtonTextDisabled {
	text-decoration: none;
	text-align: center;
	vertical-align: middle;
	background-color: #DDDDDD;
	background-image: url("./colors/default/ButtonBackground.gif");
	background-repeat: repeat-x;
	background-position: left center;
	border-top: 1px solid #919191;
    border-bottom: 1px solid #919191;
    border-right: 1px solid #919191;
    border-left: 1px solid #919191;
    padding: 0px 2px;
	margin: 0px;
	overflow: visible;
	font-weight: bold;
	color: #888888;
}


.lwpButtonSpacer {
	margin-right: 2px;
}








.lwpSeparatorBg {
    background-color: #999999;
    height: 1px;
}

div.lwpSeparatorBg {
    background-color: #999999;
	margin: 2px 0 2px 0;
}


.borderNone {
	border-width: 0 ! important;
}


.lwpPortletTitleBorder {
   background-image: url("./colors/default/skin_border.gif");
   background-position: bottom;
   background-repeat: repeat-x;
}


.lwpAlignRight {
	text-align: right; 
}


.lwpBorderAll {
	border-right: 1px solid #DCDCDC;
	border-left: 1px solid #DCDCDC;	
	border-top: 1px solid #DCDCDC;	
	border-bottom: 1px solid #DCDCDC;	
}


.lwpShadowBorder {
	border-right: 1px solid #888888;
	border-bottom: 1px solid #888888;	
}


.lwpSearchBar{
	margin: 5px 0;
	background-color: #ECECEC;			
	text-align: right;
}	
	
.lwpSearchBar table{
	margin-right: 0;
	margin-left: auto;
}

.lwpSearchBar td{		
	padding: 5px 3px 5px 2px;
}

.lwpSearchBar .portlet-form-field-label{
	padding-left: 10px;
}


.lwpInlineHelp td{
	padding: 5px 10px 5px 1px;
	vertical-align: top;
}


.lwpMenuHeader, a.lwpMenuHeader, a.lwpMenuHeader:visited, a.lwpMenuHeader:hover {
	background-color: #F0F0F0;
	color: #000000;
	text-decoration: none;
	font-weight: normal;
	cursor: pointer;
}


.lwpMenuBackground {
	background-color: #ffffff;
}


.lwpMenuItem, a.lwpMenuItem, a.lwpMenuItem:visited, a.lwpMenuItem:hover  a.lwpMenuItem:active {
	color: #000000;
	text-decoration: none;
	background-color: #ffffff;
}


.lwpSelectedMenuItem, a.lwpSelectedMenuItem:visited, a.lwpSelectedMenuItem:hover, a.lwpSelectedMenuItem:active{
	background-color: #284888;
	color: #ffffff;
	text-decoration: none;
	cursor: pointer;
}


.lwpMenuItemDisabled, a.lwpMenuItemDisabled, a.lwpMenuItemDisabled:visited, a.lwpMenuItemDisabled:hover, a.lwpMenuItemDisabled:active {
	color: #888888;
	text-decoration: none;
	background-color: #ffffff;
	font-style: italic;
}


.unreadMailText, a.unreadMailText {
    font-weight: bold;
	text-decoration: underline;
	color: #3366CC;
}


.lwpLastReadMark {
	font-weight: bold;
	color: #FFFFFF;
	background-color: #666666;
	text-align: center;
	padding: 3px 0;
}


.lwpDateStampMark {
	font-weight: bold;
	color: #666666;
	background-color: #999999;
	text-align: center;
	padding: 3px 0px;
}





.lwpCalFsizeX {
	font-size: small;
}

.lwpCalViewMenuPosition {
	padding-left: 2px;
	padding-top: 8px;
	padding-bottom: 8px; 
}

a.lwpCalLinkText {
	text-decoration: none;
}

a.lwpCalLinkText:hover {
	text-decoration: underline;
}

a.lwpCalDateLinkText, a.lwpCalDateLinkText:visited {
	text-decoration: none;
	color: #000000;
}

a.lwpCalDateLinkText:hover {
	text-decoration: underline;
	color: #666699;
}

a.lwpCalInactiveDateLinkText, a.lwpCalInactiveDateLinkText:visited {
	text-decoration: none;
	color: #a0a0a0;
}

a.lwpCalInactiveDateLinkText:hover {
	text-decoration: underline;
	color: #666699;
}

.lwpCal1WeekCellRow {
	height: 6em;
	font-weight: normal;
}

.lwpCalCellRow {
	height: 2.2em;
	font-weight: normal;
}

.lwpCalLDivider {
	border-left: solid 1px #aaaaaa;
}

.lwpCalTDivider {
	border-top: solid 1px #aaaaaa;
}

.lwpCalNoBottom {
	border-bottom: none;
}

.lwpCalHeader {
	color: #3366CC;
    font-weight: bold;
	vertical-align: top;
}

.lwpCalHeaderImage {
   padding: 12px 3px 2px 0px; 
   margin-bottom: 5px;
}

.lwpCalAttendeeHeading { 
	color: #898989; 
}

.lwpCalSectionHeader {
   font-weight: bold;
   color: black;
   padding-top: 12px;
   padding-bottom: 2px;
   margin-bottom: 5px;
   display: block;
}

.lwpCalInviteeSection {
   padding-left:2px;   
}

.lwpCalWeekNumber {
	color: #808080;
}

.lwpCalEntryHoverDetail {
	border : solid 1px #000000;
	position: absolute; 
	visibility: hidden; 
	width: 400px;
	overflow: hidden;
}

.lwpCalEventField { 
	padding:5px 0px 3px 0px; 
}

.lwpCalEntryHoverPosition {
	padding-left: 5px;
}

.lwpCalBgMeeting, .lwpCalBgWebConf {
	background-color: #C3D3E6;
}

.lwpCalBgAppointment{
	background-color: #D8F8D8;
}

.lwpCalBgAnniversary{
	background-color: #F8E8D0;
}

.lwpCalBgReminder{
	background-color: #F8F8D0;
}

.lwpCalBgAllDayEvent{
	background-color: #F8E0E0;
}

.lwpCalTodayCell {
	border: solid 1px #000000;
}

.lwpCalMonthDayCell {
	border-top: solid 1px #AAAAAA;
	height: 6.4em;
	width: 14%;
}

.lwpCalInactiveDayCell {
	background-color: #efefef;
}

.lwpCalInactiveDay {
	color: #a0a0a0;
}

.lwpCalSeperator {
	border-bottom: solid 1px #ffffff;
}

.lwpCalConflict {
	border-left: solid 2px #000000;
}

.lwpCalTimeText {
	text-align: right;
}

.lwpCalEntryPosition {
	padding-top: 2px;
}

.lwpCalBDivider {
	border-bottom: solid 1px #aaaaaa;
}







.lwpPpkList {
    width: 250px;
    height: 200px;
    padding-left: 2px;
    border-right: 1px solid #c0c0c0;
    border-bottom: 1px solid #c0c0c0;
    border-left: 1px solid black;
    border-top: 1px solid black;
    overflow: auto;
}

.lwpPpkListBorder {
    width: 250px;
    height: 200px;
    border-left: 1px solid #a0a0a0;
    border-top: 1px solid #a0a0a0;
}

.lwpPpkNormalText {
    background-color: white; 
    color: black;
}

.lwpPpkSelectedText {
    background-color: #284888;
    color: white;
}








.lwpMailboxRecipientAnchor, a.lwpMailboxRecipientAnchor {	
	color: black;
	text-decoration: underline;
	cursor: pointer;
}

.lwpMailboxRecipientAnchor:hover, a.lwpMailboxRecipientAnchor:hover {
	color: black;
	text-decoration: underline;
	cursor: pointer;
}

.lwpMailboxRecipientAnchor:visited, a.lwpMailboxRecipientAnchor:visited {
	color:black;
}







.chat_background {
    background-color: #FFFFFF;
}

.chat_partner_presence {
	border-top : 1px solid #AAAAAA;
	border-left : 1px solid #AAAAAA;
	border-color : #AAAAAA;
	padding: 3px;
    background-color: #EEEEEE;
}

.chat_partner_presence_corner {

    background-image: url("./colors/default/chat_presence_corner.gif");
    background-repeat: no-repeat;
    background-position: top;
    background-color: transparent;
    background-color: #FFFFFF;
}

.chat_partner_alert {
	border-top : 1px solid #AAAAAA;
	border-left : 1px solid #AAAAAA;
	border-right : 1px solid #AAAAAA;
	border-color : #AAAAAA;
	padding: 3px;
    background-color: #FFFFFF;
	color: #666666;
}

.chat_transcript {
	border-left : 1px solid #AAAAAA;
	border-right : 1px solid #AAAAAA;
	border-bottom : 1px solid #AAAAAA;
	border-top : 1px solid #AAAAAA;
	border-color : #AAAAAA;
}

.chat_transcript_nway {
	border-top : 1px solid #456A8B;
	border-left : 1px solid #456A8B;
	border-right : 1px solid #456A8B;
	border-bottom : 1px solid #456A8B;
	border-color : #456A8B;
}

.chat_message_input {
	border-top : 1px solid #AAAAAA;
	border-left : 1px solid #AAAAAA;
	border-right : 1px solid #AAAAAA;
	border-bottom : 1px solid #AAAAAA;
	border-color : #AAAAAA;
    background-color: #FFFFFF;
}

.chat_statusbar {
	border-top : 1px solid #AAAAAA;
	border-color : #AAAAAA;
	background-color: #EEEEEE;
	color: #AAAAAA;
}

.chat_participants {
	border-bottom : 1px solid #D8D8D8;
	border-color : #D8D8D8;
}












.lwp-agendaItemDocument {
	color: #585858;
	padding-top: 3px;
	padding-bottom: 3px;
}


.lwp-agendaItem-ul {
	padding-top: 3px;
	list-style-type: none;
	margin-left: 0px;
	margin-right: 20px;
	padding-bottom: 0px;
}


.lwp-agendaItem-li {
	padding-top: 0px;
	padding-bottom: 0px;
}


.lwp-agendaItem, .lwp-agendaItem:visited, a.lwp-agendaItem, a.lwp-agendaItem:active, a.lwp-agendaItem:visited, .lwp-agendaItemPage, a.lwp-agendaItemPage, .lwp-agendaItemSlide, .lwp-agendaItemPage:visited, .lwp-agendaItemSlide:visited {
	background-color: rgb(246,246,246);
	text-decoration: none;
	color: #7080A8;
	font-weight: normal;
	padding-top: 1px;
	padding-bottom: 1px;
}


a.lwp-agendaItem:hover, .lwp-agendaItemPage:hover, .lwp-agendaItemSlide:hover {
	text-decoration: underline;
	color: #639ACE;
	font-weight: normal;
}


.lwp-selectedAgendaItem, a.lwp-selectedAgendaItem {
    background-color: rgb(49, 106, 197);
	padding-top: 1px;
	padding-bottom: 1px;
	color:#FFFFFF;
	line-height: 150%;
	text-decoration: none;
	font-weight: bold;
}

.lwp-selectedAgendaItem:visited, a.lwp-selectedAgendaItem:visited {
	color: #FFFFFF;
}

a.lwp-selectedAgendaItem:hover {
    background-color: rgb(49, 106, 197);
	padding-top: 1px;
	padding-bottom: 1px;
	color:#FFFFFF;
	line-height: 150%;
	text-decoration: underline;
	font-weight: bold;
}


.lwpProjectorHeaderStart { 
	background-color: #70A8F0; 
	border-top: 1px solid #777777;
	border-right: 0px none #777777;
	border-bottom: 0px none #777777;
	border-left: 1px solid #777777;	
}


.lwpProjectorHeaderMiddle {
	background-color: #70A8F0;
	border-top: 1px solid #777777;
	border-right: 0px none #777777;
	border-bottom: 0px none #777777;
	border-left: 0px none #777777;	
	color: #343434;
    font-weight: bold;
}


.lwpProjectorHeaderEnd {
	background-image: url("./colors/default/projectorTableTopRight.gif");
	background-repeat: no-repeat;
	background-position: right top;
	background-color: transparent;
}


.lwpSlideTable {
	border-width: 1px;
	border-style: solid;
	border-color: #000000;
}



.lwpSlideTableHeadStart, .lwpSlideTableHeadMiddle, .lwpSlideTableHeadEnd {
    font-weight: bold;
	color: #989898;
	text-align: left;
	background-color: #ffffff;
	border-width: 0px 0px 0px 0px;
	border-style: solid;
	border-color: #000000;
}


.lwpSlideBorder
{
	border-color: #b0b0c0;
	border-style: solid;
	border-width: 1px 1px 1px 1px;
}


.lwpAgendaFrameDiv
{
	position:absolute;
	width:100%;
	visibility:hidden;
	bottom:0;
	border:1px solid rgb(233, 233, 233);
	background-color: rgb(246, 246, 246);
	top:80px;
}


.lwpAttendeesFrameDiv
{
	width:100%;
	position:absolute;
	bottom:0;
	border:1px solid rgb(233, 233, 233);
	background-color: rgb(246, 246, 246);
	visibility:hidden;
	overflow:auto;
	top:26px;
}


.lwpDownloadsFrameDiv
{
	width:100%;
	position:absolute;
	bottom:2px;
	visibility:hidden;
	top:26px;
	
}

.lwpHostingStarted {
	font-size: small;
	font-weight: bold;
	color: #FFFFFF;
}

.lwpHostingStartedLarge {
	font-size: small; 
	font-weight: bold;
	color: #FFFFFF;
}










.lwp_labelNormalStyle, a.lwp_labelNormalStyle, a.lwp_labelNormalStyle:visited, a.lwp_labelNormalStyle:active {
    color: #000000; 
	text-decoration: none;
}

.lwp_tdStyle {
	white-space:nowrap; 
	padding:0px; 
}

.lwp_linkTextStyle {
	text-decoration:none;
}

.lwp_nodeStyle {
	border-collapse: collapse; 
	border-spacing:0px;
}


.lwp_nodeImageStyle {
	border-top: 0px; 
	border-right: 0px; 
	border-left: 0px; 
	border-bottom: 0px; 
}


.lwp_labelHighlightStyle, a.lwp_labelHighlightStyle, a.lwp_labelHighlightStyle:active, a.lwp_labelHighlightStyle:visited { 
	font-weight: bold;
    text-decoration: none;
	color: #FFFFFF; 
	background-color: #A0A0A0; 
	padding-right: 5px;
}


.lwp_labelMouseoverStyle, a.lwp_labelMouseoverStyle:hover, a.lwp_labelMouseoverStyle:active {
	font-weight: normal;
    text-decoration: underline;
	color: #000000; 
}


.lwp_labelDragoverStyle{
	font-weight: normal;
	text-decoration: underline;
	color: #000000; 
}


.lwpFldNodeLableSpacing, .lwpFldNodeLabelSpacing {
	padding-left: 5px;
}


.lwpTreePanel {
	overflow: auto;
	height: 100%;
	width: 18em;
}


.lwpTreePanelBody {
	border-left: 1px solid #aaaaaa;
	border-right: 0px;
	border-top: 0px;
	border-bottom: 0px;
}


.lwpTreePanelHeader {
	background-color: #F0F0F0;
	border-left: 1px solid #aaaaaa;
	border-right: 0px;
	border-top: 1px solid #aaaaaa;
	border-bottom: 1px solid #aaaaaa;
}


.lwpTreePanelFooter {
	background-color: #F0F0F0;
	border-left: 1px solid #aaaaaa;
	border-right: 0px;
	border-top: 1px solid #aaaaaa;
	border-bottom: 1px solid #aaaaaa;
}










.lwpPeopleFlyoutExpanded {
	background-color: #DEDEDE;
	border-left: 1px solid #9A9A9A;
	border-right: 0px;
	border-top: 0px;
	border-bottom: 1px solid #DEDEDE;
}


.lwpPeopleFlyoutCollapsed {
	background-color: #DEDEDE;
	border-left: 1px solid #686868;
	border-right: 0px;
	border-top: 0px;
	border-bottom: 1px solid #DEDEDE;
}


.lwpPeopleFlyoutFrame {
	background-color: #DEDEDE;
	border-left: 1px solid #686868;
	border-right: 1px solid #686868;
	border-top: 1px solid #686868;
	border-bottom: 1px solid #686868;
}









.lwpTimeDateBorder {
	border:0px;
}
 
.lwpTimeDateCalBorder { 
	background-color: white;
	border-top: 1px none #aaaaaa;
	border-right: 1px solid #aaaaaa;
	border-bottom: 1px solid #aaaaaa;
	border-left: 1px solid #aaaaaa;
}

.lwpTimeDateCalText { 
	font-weight: bold; 
}

.lwpTimeDateDayName { 
	text-align: center;
	font-weight: normal;
	vertical-align: middle;
	background-color: white;
	border-top: 1px none #aaaaaa;
	border-right: 1px none #aaaaaa;
	border-bottom: 1px solid #aaaaaa;
	border-left: 1px none #aaaaaa;
}

.lwpTimeDateDay { 
	text-align: center;
	vertical-align: middle;
	background-color: white;
	border-width: 0px 0px 0px 0px;
	border-style: solid;
	border-color: #aaaaaa;
}

.lwpTimeDateWeekendDay { 
	text-align: center;
	vertical-align: middle;
	background-color: white;
	border-width: 0px 0px 0px 0px;
	border-style: solid;
	border-color: #aaaaaa;
}

.lwpTimeDateDayLink { 
	text-decoration:none;
}

.lwpTimeDateCalTop {
	border: 1px solid #aaaaaa;
	background-color: #eeeeee;
}

.lwpTimeDateSelectedCalTop { 
	border: 1px solid #606098;
	background-color: #d0d0d0;
}

.lwpTimeDateSelectedDay { 
	text-align: center;
	vertical-align: middle;
	background-color: #ffffff;
}

.lwpTimeDateSelectedDayLink { 
	text-decoration:none;
	text-align: center;
	vertical-align: middle;
	background-color: #d0d0d0;
}

.lwpTimeDateSelectedWeek { 
	text-decoration:none;
	text-align: center;
	vertical-align: middle;
	background-color: #d0d0d0;
}

.lwpTimeDateSelectedAllWeeks { 
	text-decoration:none;
	text-align: center;
	vertical-align: middle;
	background-color: #e8e8e8;
}

.lwpTimeDateWeek { 
	text-decoration:none;
	text-align: center;
	vertical-align: middle;
	background-color: #ffffff;
	border: 1px solid #aaaaaa;
}

.lwpTimeDateMonthRadio { 
	text-decoration:none;
	text-align: center;
	vertical-align: middle;
	width:15px;
	border-right: 1px solid #aaaaaa;
}

.lwpTimeDateWeekRadioOn { 
	text-decoration:none;
	text-align: center;
	vertical-align: middle;
	background-color: #d0d0d0;
	width:15px;
	border-color: #aaaaaa;
	border-right: 1px solid #aaaaaa;
	border-left: 1px solid #aaaaaa;
}

.lwpTimeDateWeekRadioOff { 
	text-decoration:none;
	text-align: center;
	vertical-align: middle;
	background-color: #ffffff;
	width:15px;
	border-color: #aaaaaa;
	border-right: 1px solid #aaaaaa;
	border-left: 1px solid #aaaaaa;
}

.lwpTimeDateEmptyDayName { 
	font-weight: normal;
	text-align: center;
	vertical-align: middle;
	background-color: #ffffff;
	width:15px;
	border-right: 1px solid #aaaaaa;
	border-left: 1px none #aaaaaa;
	border-bottom: 1px solid #aaaaaa;
}











.outerTreeStyle{
	color: WindowText;
	border-width: 0px;
	border-style: none;
	padding:0px;
	font-weight: 400;
}


.nodeStyle{
	padding: 0px;
	letter-spacing: 0;
	border-collapse: collapse;
}


.scrollStyle{
 	overflow: auto;
 	width: 200px;
}


.tdStyle{
	padding: 0px;
	width: 200px;	
}



.labelDragoverStyle{
	font-size: 11px;
	color: #000000;
	font-family: Tahoma, Verdana, Geneva, Arial, Helvetica, sans-serif;
	font-style: italic;
}

.linkTextStyle{
	text-decoration: none
}


.classForTreeSysIcons {
	
	
}


.tdTreeTabStyle{
	padding: 0px;
	width: 200px;
	margin:0px
}


.tdTableStyle{
	width: 200px;
	padding:0px;
	margin:0px
}


.headerStyle{
	width: 200px;
	background-color: ThreeDFace;
	color: WindowText;
	border-width: 1px;
	border-style: solid;
	border-color: ThreeDShadow;
	margin:0px;
	padding:0px;
}



.tree{
}


.tree_outerTreeStyle
{
	color: WindowText;
	border-width: 0px;
	border-style: none;
	padding: 0px;
	font-weight: 400;
}


.tree_nodeStyle {
	padding: 0px;
	letter-spacing: 0;
	border-collapse: collapse;
	margin: 0px;
}


.tree_scrollStyle{
 	overflow: auto;
 	width: 200px;
}


.tree_tdStyle{
	padding: 0px;
	width: 200px;	
}


.tree_labelNormalStyle {
	font-size: 11px;
	color: #000000;
	font-family: Tahoma, Verdana, Geneva, Arial, Helvetica, sans-serif; 
}


.tree_nodeImageStyle {
	border-right: 0px;
	border-top: 0px;
	border-left: 0px;
	width: 19px;
	border-bottom: 0px;
	height: 16px
}


.tree_labelHighlightStyle{
	font-size: 11px;
	color: #000000;
	font-family: Tahoma, Verdana, Geneva, Arial, Helvetica, sans-serif;
	font-weight: bold;
}

.tree_labelMouseoverStyle{
	font-size: 11px;
	color: #000000;
	font-family: Tahoma, Verdana, Geneva, Arial, Helvetica, sans-serif;
	font-style: italic;
}


.tree_labelDragoverStyle{
	font-size: 11px;
	color: #000000;
	background-color: #bbbbbb;
	font-family: Tahoma, Verdana, Geneva, Arial, Helvetica, sans-serif;
	font-style: italic;
}


.tree_linkTextStyle{
	text-decoration: none
}


.tree_classForTreeSysIcons {
	
	
}


.tree_tdTreeTabStyle{
	padding: 0px;
	width: 200px;
	margin:0px
}


.tree_tdTableStyle{
	width: 200px;
	padding:0px;
	margin:0px
}


.tree_headerStyle{
	width: 200px;
	background-color: ThreeDFace;
	color: WindowText;
	border-width: 1px;
	border-style: solid;
	border-color: ThreeDShadow;
	margin:0px;
	padding:0px;
}


.wpsEditorToolbar {
    max-height: 24px;
    background-color: #D8D8D8;
    border-top: 1px solid #aebccf;
    border-right: 1px solid #355787;
    border-bottom: 1px solid #355787;
    border-left: 1px solid #aebccf;
    border-top: 1px solid #cccccc;
}

.wpsEditorToolbarSection {
   border-width: 0px;
}

/* Table displaying the tools in this section */
.wpsEditorToolbarSet {
}

tr.wpsEditorToolbar {
    padding: 0px 2px 0px 2px;
} 

table.wpsEditorToolbar {
    padding: 0px 0px 0px 0px;
    width: 100%;
    height: 24px;   
    background-color: #f0f0f0;
    border-top: 1px solid #cccccc;
    border-bottom: 0px solid #cccccc;
    border-left: 1px solid #cccccc;
    border-right: 1px solid #cccccc;
    background-color: white;
    background-image: url(//DocEditor/images/editor_toolbar_gradient.gif);
    background-repeat:  repeat-x;
    background-position: 0px 0px;
}    

/* A normal toolbar button */
.wpsEditorToolbarButton {
    padding: 3px;
    margin: 0px
    border-width: 1px;
    border-style: none;
}

/* A toolbar button with the mouse hovering over it */
.wpsEditorToolbarButtonRollover {

/*    background-color: #d8d8d8;
    margin:0px;
    padding: 2px;
    border-top: 1px solid #d8d8d8;
    border-right: 1px solid #888888;
    border-bottom: 1px solid #888888;
    border-left: 1px solid #d8d8d8; */

    background-color: WHITE;
    margin:0px;
    padding: 2px;
    border-top: 1px solid WHITE;
    border-right: 1px solid WHITE;
    border-bottom: 1px solid WHITE;
    border-left: 1px solid WHITE;
}

/* A toolbar button with the mouse button pressed or selected */
.wpsEditorToolbarButtonPressed {
    background-color: #d8d8d8;
    margin:0px;
    padding: 2px;
    border-top: 1px solid #888888;
    border-right: 1px solid #d8d8d8;
    border-bottom: 1px solid #d8d8d8;
    border-left: 1px solid #888888;
}

/* A selected toolbar button */
.wpsEditorToolbarButtonSelected {
    background-color: #aeb8c4;
    margin:0px;
    padding: 2px;
    border-top: 1px solid #95a5b9;
    border-right: 1px solid #e4edf5;
    border-bottom: 1px solid #e4edf5;
    border-left: 1px solid #95a5b9;
}

/* A toolbar button with the mouse hovering over it */
.wpsEditorToolbarButtonSelectedRollover {
    background-color: #aeb8c4;
    margin:0px;
    padding: 2px;
    border-top: 1px solid #e4edf5;
    border-right: 1px solid #95a5b9;
    border-bottom: 1px solid #95a5b9;
    border-left: 1px solid #e4edf5;

}

/* An icon displayed on a toolbar button */
.wpsEditorToolbarButtonIcon {
    width: 18px;
    height: 18px;
    margin:0px
    padding:0px;
}

/* A toolbar area displaying non-button controls such as text, or a dropdown */
.wpsEditorToolbarControl {
    padding: 1px 1px;
}

/* A toolbar area displaying non-button controls such as text, or a dropdown */
select.wpsEditorToolbarControl {
    border-top: 1px solid #cccccc;
    border-bottom: 1px solid #cccccc;
    border-left: 1px solid #cccccc;
    border-right: 1px solid #cccccc;
}

/* Text on the toolbar */
.wpsEditorToolbarText {
    color: #333333;
}

/* A link on the toolbar */
.wpsEditorToolbarLink, .wpsEditorToolbarLink:hover, .wpsEditorToolbarLink:visited, .wpsEditorToolbarLink:active {
    color: #333333 ;
}

/* A separator between groups of toolbar items */
.wpsEditorToolbarSeparatorNew {
    background-color: #355787;
    height: 18px;
    width: 5px;
    margin: 0px;
    padding: 0px;
    border-top: 0px none #305A8B8C8;
    border-bottom: 0px none #305080;
    border-left: 1px none #aebccf;
}

/* A separator between groups of toolbar items */
.wpsEditorToolbarSeparator {
    background-image: url(//DocEditor/images/separator.gif);
    margin: 0px;
    padding: 0px 7px 0px 7px;
}

/* A spacer between groups of toolbar items  */
.wpsEditorToolbarSpacer {
    padding: 0px 2px 0px 2px;
}

/* A separator between groups of toolbar items */
.wpsEditorToolbarHandle {
    background-color: #c5d1de;
    padding: 0px;
    margin: 0px;
    width: 1px;
    border-top: 1px solid #e4edf5;
    border-right: 1px solid #95a5b9;
    border-bottom: 1px solid #95a5b9;
    border-left: 1px solid #e4edf5;
}

.wpsEditorTextArea {
    background-color: #fff;
    border: 1px solid #cccccc;
    padding: 0px;
    margin: 0px;
}

.wpsEditorTextAreaText {
    margin: 0px;  
    padding: 0px;
    border: 0px none;
}



/* Header */
.palette h5
{
    color: #FFFFFF !important;
    background-color: #B7CBE7;
    background: ;
    font-size: medium;
    border: 1px solid;
    border-right: 0px;
    border-color: #97A9C1;
	height: 48px;
    margin-top: 0px; 
    margin-bottom: 0px;
}

.palette h5 div
{
	margin-top: 18px;
	margin-left: 10px;
}

/* Hidden forms cause extra whitespace if display is not set to inline */
.palette form
{
    display: inline;
}

/* Search box */
.contentTypeSearch
{
    background-color: #E8EBF1;
    color: #7A93BB;
    margin-top: 0px;
    margin-bottom: 0px;
}

.contentTypeSearch table
{
	margin-left: 10px;
}	

/* Selected category title */
.categoryTitleExpanded
{
    background: ;
	background-position: top;
	background-color: #E8EBF1;
	font-size: xx-small;
    font-family: arial;
    padding: 5px 10px;
	color: #7A93BB;
    margin-bottom: 0px;
    
}

/* Unselected category title */
.categoryTitleCollapsed
{
    background: ;
    background-position: top;
    background-color: #E8EBF1;
    font-family: arial;
    font-size: xx-small;
    color: #7A93BB;
    padding: 5px 10px;
    margin-bottom: 0px;
    
}

/* hide the contents of a category when unselected */
.contentItemListCollapsed
{
    display: none;
}

/* An Item in a category */
.contentItem
{
    font-weight: normal;
    font-family: arial;
    font-size: xx-small;
    color: #4E4E4E;
}

/* An Item in a category */
.contentItemGrayed
{
    font-weight: normal;
    font-family: arial;
    font-size: xx-small;
    color: #C6C6C6;
}


.contentItemHover
{
    font-weight: normal;
    font-family: arial;
    font-size: xx-small;
    color: #4E4E4E;
}

.contentItemGrayedHover
{
    font-weight: normal;
    font-family: arial;
    font-size: xx-small;
    color: #C6C6C6;
}


/* the icon associated with the item */
.contentItemIcon
{
    vertical-align: middle; 
    border: 0px;
}

/* Only display the item context menu when hovering over the item */ 
.contentItem button
{
    visibility: hidden;
}

.contentItemHover button
{
    visibility: visible;
}

.contextMenu
{
	border: 0px; 
	background-color: transparent;
}	

.actionMainArea
{
    margin: 4px;
}

.actionFooter
{
    margin-top: 4px;
}

.dropActive{
	border: 1px solid #FF9000;
}

.dropAware{
	border: 1px solid #FFEBC5;
}

 
 



  
        





body {
background:url(/themes/spwsSchoolV2_DMIT/images/line-media.gif) repeat-x 0 0 #f2f2f2;
font-size:0.875em;
padding-top:5px;
}

.spws {
position:relative;
z-index:0;
}

.spws_container {
margin:0 auto;
padding: 0 15px;
width:1000px;
}

.spws_main {
margin:0 0 20px;
}

table, input, textarea, button, select {
font-family:Arial, sans-serif;
font-size:12px;
}

h1,h2,h3,h4,h5 {
margin:0;
}

h2 {
font-size:19px;
}

h4 {
font-size:15px;
text-transform:uppercase;
}

.spws_bold {
font-weight:bold;
}

ul {
list-style:none;
margin:0;
padding:0;
}

a, a:visited {
color:#000;
text-decoration:none;
}

a:hover {
color:#000;
}

.clearfix:before, .clearfix:after {
content:" ";
display:table;
}

.clearfix:after {
clear:both;
}

.clearfix {
*zoom:1;
}

img {
border:0;
}

.left {
float:left;
}

.right {
float:right;
}

.text-left {
text-align:left;
}

.text-center {
text-align:center;
}

.text-right {
text-align:right;
}

.block {
display:block!important;
}

.visible {
visibility:visible!important;
}

.pointer {
cursor:pointer;
}

.cursor {
cursor:default;
}

.spws_bg-white {
background:#fff;
}

.spws_border, .spws_banner img, .wpsPortletBody .option-body {
border:1px solid #cfcfcf;
}

.spws_rounded, .spws_maskhead_rotator, .spws_maskhead_rotator_pane img, .spws_banner_rotator, .spws_banner_rotator_pane img, .spws_maskhead .spws_nav-bullets a, .spws_banner img, .wpsPortletBody .option-body {
-moz-border-radius:8px;
-webkit-border-radius:8px;
border-radius:8px;
-moz-background-clip:padding;
-webkit-background-clip:padding-box;
background-clip:padding-box;
}

.spws_shadow, .spws_banner img {
-moz-box-shadow:0 1px 3px 0 rgba(0,0,0,.2);
-webkit-box-shadow:0 1px 3px 0 rgba(0,0,0,.2);
box-shadow:0 1px 3px 0 rgba(0,0,0,.2);
}

.spws_header {
position:relative;
z-index:999;
}

.spws_nav {
font-size:11px;
font-weight:bold;
margin-top:10px;
}

.spws_nav ul li {
float:left;
}

.spws_nav li {
margin-left:10px;
}

.spws_nav li:first-child {
margin-left:0;
}

.spws_nav li a {
color: #000;!important;
}

.spws_nav li a:hover {
text-decoration:underline;
}

.spws_nav .spws_eservices {
position:relative;
z-index:99999;
}

.spws_header .spws_org li a {
line-height:15px;
}

.spws_nav .spws_eservices:hover table {
display:block;
}

.spws_nav .spws_eservices table {
background:#fff;
border:1px solid #b6b6b6;
-moz-border-radius:0;
-webkit-border-radius:0;
border-radius:0;
display:none;
position:absolute;
top:13px;
right:0;
width:135px;
z-index:9999;
border-spacing: 0;
}

.spws_nav .spws_eservices ul > li {
width:100%;
margin:0px;
font-size:11px;
}

.spws_nav .spws_eservices ul > li > a {
color:#000;
display:block;
font-weight:normal;
line-height:18px;
padding:1px 2px 1px 5px;
}

.spws_nav .spws_eservices ul > li > a:hover {
text-decoration:none;
background:#525050;
color:#FFF;
}

.spws_nav .spws_eservices .spws_eservices_break {
padding: 4px 0px 1px 2px;
}

.spws_logo-wrapper {
position:relative;
z-index:9999;
}

a.spws_logo {
background:url(/themes/spwsSchoolV2_DMIT/images/logo-media.png) no-repeat;
width:250px;
height:58px;
margin:20px 15px 0 0;
display:block;
}

a.spws_logo p {
display:none;
}

a.spws_school_logo {
background:url(/themes/spwsSchoolV2_DMIT/images/logo-media.png) no-repeat;
width:250px;
height:58px;
margin:4px 15px 0 0;
display:block;
}

a.spws_school_logo p {
display:none;
}

.spws_quicklinks-and-search {
margin-top:10px;
position:relative;
}

.spws_quicklinks-and-search ul li {
float:left;
}

.spws_quicklinks-and-search > ul > li:first-child:hover table {
display:block;
}

.spws_quicklinks-and-search .spws_quicklinks .spws_icon-quicklinks {
background:url(/themes/spwsSchoolV2_DMIT/images/icon-dropdown.png) no-repeat 174px 5px #fff;
-webkit-box-shadow:inset 0 1px 1px 0 rgba(0, 0, 0, 0.2);
box-shadow:inset 0 1px 1px 0 rgba(0, 0, 0, 0.2);
color:#000;
display:block;
font-size:14px;
line-height:29px;
margin-right:5px;
-moz-border-radius:15px;
-webkit-border-radius:15px;
border-radius:15px;
-moz-background-clip:padding;
-webkit-background-clip:padding-box;
background-clip:padding-box;
border:1px solid #b6b6b6;
padding-left:12px;
width:190px;
}

.spws_quicklinks-and-search .spws_quicklinks .spws_icon-quicklinks:hover {
text-decoration:none;
}

.spws_quicklinks-and-search .spws_quicklinks table {
background:#fff;
border:1px solid #b6b6b6;
border-top:1px solid #fff;
-moz-border-radius:0;
-webkit-border-radius:0;
border-radius:0;
display:none;
left:14px;
position:absolute;
top:29px;
width:176px;
z-index:9999;
border-spacing: 0;
}

.spws_quicklinks-and-search .spws_quicklinks ul > li {
width:100%;
}

.spws_quicklinks-and-search .spws_quicklinks ul > li > a {
color:#000;
display:block;
font-size:11px;
line-height:18px;
padding: 1px 2px 1px 5px;
text-decoration: none;
}

.spws_quicklinks-and-search .spws_quicklinks ul > li > a:hover {
background: #525050;
color:#FFF;
}

#es_search_form {
background: #fff;
background: #fff -moz-linear-gradient(bottom, rgba(255,255,255,.2) 85%, rgba(153,153,153,.2) 100%);
background: #fff -webkit-gradient(linear, left bottom, left top, color-stop(85%, rgba(255,255,255,.2)), color-stop(100%, rgba(153,153,153,.2)));
background: #fff -webkit-linear-gradient(bottom, rgba(255,255,255,.2) 85%, rgba(153,153,153,.2) 100%);
background: #fff -o-linear-gradient(bottom, rgba(255,255,255,.2) 85%, rgba(153,153,153,.2) 100%);
background: #fff -ms-linear-gradient(bottom, rgba(255,255,255,.2) 85%, rgba(153,153,153,.2) 100%);
background: #fff linear-gradient(bottom, rgba(255,255,255,.2) 85%, rgba(153,153,153,.2) 100%);
border:1px solid #b6b6b6;
-moz-border-radius:15px;
-webkit-border-radius:15px;
border-radius:15px;
-webkit-box-shadow:inset 0 1px 1px 0 rgba(0, 0, 0, 0.2);
box-shadow:inset 0 1px 1px 0 rgba(0, 0, 0, 0.2);
color:#000;
display:block;
font-size:14px;
height:29px;
outline:none;
padding:0 4px 0 12px;
width:200px;
-moz-background-clip:padding;
-webkit-background-clip:padding-box;
background-clip:padding-box;
}

.spws_quicklinks-and-search .spws_search input[type=text] {
border:none;
font-size:14px;
margin-top:5px;
width:170px;
}

.spws_quicklinks-and-search .spws_search input[type=text]:focus {
outline:none;
}

.spws_quicklinks-and-search .spws_search input[type=submit] {
background:url(/themes/spwsMainInnerPageV2/images/icon-search.png) no-repeat 0 0;
-moz-border-radius:0;
-webkit-border-radius:0;
border-radius:0;
border:none;
height:19px;
padding:0;
position:absolute;
right:8px;
text-shadow:none;
top:6px;
width:20px;
}

.spws_main-nav {
font-size:15px;
text-transform:uppercase;
margin:20px 0 0;
position:relative;
z-index:999;
}

.spws_main-nav li {
border-top:3px solid transparent;
margin-left:1px;
}

.spws_main-nav li.current {
border-top:3px solid #9a3234;
text-decoration:none;
}

.spws_main-nav li.hover {
background:url(/themes/spwsSchoolV2_DMIT/images/arrow-up-dark.png) no-repeat center bottom #fff;
border-top:3px solid #3f3f3f;
-webkit-box-shadow:0 -1px 2px 0 rgba(0, 0, 0, 0.2);
box-shadow:0 0 2px 3px rgba(0, 0, 0, 0.2);
}

.spws_main-nav a {
color:#000!important;
display:block;
line-height:48px;
padding:0 10px;
position:relative;
text-transform:uppercase!important;
z-index:99999;
}

.spws_main-nav li a:hover {
text-decoration:none;
}

.spws_megamenu {
background-color:#FFFFFF;
display:none;
font-size:12px;
left:0;
position:absolute;
text-transform:uppercase;
width:1000px;
}

.spws_megamenu_1 {
background-color:#3f3f3f;
border-bottom:4px solid #fff;
-webkit-box-shadow:0 -1px 2px 0 rgba(0, 0, 0, 0.2);
box-shadow:0 0 2px 3px rgba(0, 0, 0, 0.2);
display:block;
visibility:hidden;
z-index:999999;
}

.spws_megamenu li {
border-top:none;
margin:0;
}

.spws_megamenu_1 li.hover {
background-color:transparent;
border-top:none;
-webkit-box-shadow:none;
box-shadow:none;
}

.spws_megamenu_1 a {
border-left:1px solid #f0f0f0;
color:#fff!important;
line-height:16px;
padding:15px 15px 0 15px;
text-transform:none;
width:112px;
}

.spws_megamenu_1 li:first-child > a {
border-left:none;
}

.spws_megamenu_1 li.current, .spws_megamenu_1 li.hover {
background:url(/themes/spwsSchoolV2_DMIT/images/arrow-up.png) no-repeat center bottom;
border:none;
}

.spws_megamenu_1_special a {
height:62px;
}

.spws_megamenu_1_special .spws_megamenu_2 {
top:77px;
}

.spws_megamenu_2 {
-webkit-box-shadow:0 -1px 2px 0 rgba(0, 0, 0, 0.2);
box-shadow:0 0 2px 3px rgba(0, 0, 0, 0.2);
padding:15px 5px;
visibility:hidden;
display:block;
top:62px;
width:990px;
z-index:9999;
}

.spws_megamenu_2 ul {
float:left;
margin-bottom:10px;
}

.spws_megamenu_2 > ul li {
background:url(/themes/spwsSchoolV2_DMIT/images/border-bottom.gif) no-repeat center bottom;
border-left:1px solid #F2F2F2;
}

.spws_megamenu_2 li:first-child, .spws_megamenu_3 li {
border-left:none!important;
}

.spws_megamenu_2 > ul li.last-child {
border-right:1px solid #F2F2F2;
}

.spws_megamenu_2 > ul li:hover {
background:url(/themes/spwsSchoolV2_DMIT/images/border-bottom.gif) no-repeat center bottom;
border-left:1px solid #F2F2F2;
}

.spws_megamenu_2 a {
border:none;
color:#990000!important;
font-weight:normal;
height:auto;
margin:0 10px;
padding:2px 0;
text-transform:uppercase;
width:226px;
}

.spws_megamenu_2 li a:hover {
text-decoration:underline;
}

.spws_megamenu_2 a.no-child {
color:#5d5d5d;
margin-bottom:10px;
padding-bottom:10px;
}

.spws_megamenu_2 a.no-child.spacer, .spws_megamenu_2 a.no-child.spacer.current, .spws_megamenu_2 a.no-child.spacer:hover {
text-decoration:none;
}

.spws_megamenu_2 a:hover {
text-decoration:underline;
}

.spws_megamenu_3 {
display:block;
top:0;
margin:10px 0;
padding-bottom:10px;
position:relative;
width:230px;
}

.spws_megamenu_3 > ul {
display:block;
}

.spws_megamenu_3 > ul li, .spws_megamenu_3 > ul li:hover {
background:none;
position:relative;
}

.spws_megamenu_3 a {
color:#404040!important;
text-transform:none!important;
}

.spws_megamenu_3 .spws_megamenu_toggle {
color:#000;
cursor:pointer;
display:block;
position:absolute;
right:5px;
top:0;
z-index:999999;
}

.spws_megamenu_3 .spws_megamenu_toggle span {
display:inline-block;
*display:inline;
*zoom:1;
text-align:center;
width:8px;
}

.spws_megamenu_4 {
display:none;
left:10px;
top:0;
position:relative;
width:220px;
}

.spws_megamenu_4 a, .spws_megamenu_4 a:hover {
margin-right:0;
}

.spws_maskhead {
margin-bottom:10px;
position:relative;
width:1000px;
z-index:9;
}

.spws_maskhead_rotator {
-moz-box-shadow:0 1px 3px 0 rgba(0,0,0,.4);
-webkit-box-shadow:0 1px 3px 0 rgba(0,0,0,.4);
box-shadow:0 1px 3px 0 rgba(0,0,0,.4);
height:220px;
overflow:hidden;
width:1000px;
}

.spws_maskhead_rotator_pane {
height:220px;
width:1000px;
}

.spws_maskhead_rotator_pane a {
display:block;
height:100%;
width:100%;
}

.spws_maskhead .spws_caption {
background:-moz-linear-gradient(bottom, rgba(0,0,0,.7) 0%, rgba(0,0,0,.7) 100%);
background:-webkit-gradient(linear, left bottom, left top, color-stop(0%, rgba(0,0,0,.7)), color-stop(100%, rgba(0,0,0,.7)));
background:-webkit-linear-gradient(bottom, rgba(0,0,0,.7) 0%, rgba(0,0,0,.7) 100%);
background:-o-linear-gradient(bottom, rgba(0,0,0,.7) 0%, rgba(0,0,0,.7) 100%);
background:-ms-linear-gradient(bottom, rgba(0,0,0,.7) 0%, rgba(0,0,0,.7) 100%);
background:linear-gradient(bottom, rgba(0,0,0,.7) 0%, rgba(0,0,0,.7) 100%);
bottom:15px;
color:#fff;
font-size:13px;
left:15px;
padding:10px;
position:absolute;
width:290px;
visibility:hidden;
}

.dj_ie .spws_maskhead .spws_caption {
background:url(/themes/spwsSchoolV2_DMIT/images/bg-caption.png) repeat 0 0;
}

.spws_maskhead p {
margin:0;
}

.spws_maskhead .spws_nav-bullets {
margin-top:6px;
}

.spws_maskhead .spws_nav-bullets ul li {
float:left;
}

.spws_maskhead .spws_nav-bullets li {
margin-left:5px;
}

.spws_maskhead .spws_nav-bullets li:first-child {
margin-left:0;
}

.spws_maskhead .spws_nav-bullets a {
background:#2a2a2a;
cursor:pointer;
display:block;
height:6px;
width:25px;
}

.spws_maskhead .spws_nav-bullets a.current, .spws_maskhead .spws_nav-bullets a.hover, .spws_maskhead .spws_nav-bullets a:hover {
background:#9a3234;
}

.spws_maskhead .spws_nav-arrows {
left:-15px;
position:absolute;
top:151px;
width:1030px;
z-index:99999;
}

.spws_maskhead .spws_nav-arrows > div {
cursor:pointer;
display:block;
height:46px;
position:absolute;
width:34px;
}

.spws_maskhead .spws_nav-arrows .spws_nav-arrow-left {
background:url(/themes/spwsSchoolV2_DMIT/images/icon-arrow-maskhead-left.png) no-repeat 0 0;
}

.spws_maskhead .spws_nav-arrows .spws_nav-arrow-right {
background:url(/themes/spwsSchoolV2_DMIT/images/icon-arrow-maskhead-right.png) no-repeat right 0;
right:0;
}

.spws_nav-arrow-fill-div {
display:block;
height:100%;
width:100%;
}

.spws_maskhead-inner .spws_nav-arrows {
top:88px;
}

.spws_breadcrumb {
padding: 10px 20px 0px 20px;
font-family: Arial, sans-serif;
font-size:11px;
}

.spws_breadcrumb a {
font-size:11px;
color:#492f91!important;
text-decoration:underline!important;
}

.spws_breadcrumb a:hover {
text-decoration:none!important;
}

.spws_banner_rotator {
-moz-box-shadow:0 1px 3px 0 rgba(0,0,0,.4);
-webkit-box-shadow:0 1px 3px 0 rgba(0,0,0,.4);
box-shadow:0 1px 3px 0 rgba(0,0,0,.4);
height:77px;
overflow:hidden;
width:286px;
margin-left: 20px;
}

.spws_banner_rotator_pane {
cursor:pointer;
height:77px;
width:286px;
}

.spws_banner_rotator_pane a {
display:block;
height:100%;
width:100%;
}

.main-menu-border .main-menu .main-menu-item-selected, .main-menu-border .main-menu .main-menu-item, .main-menu-border .main-menu .main-menu-item:visited {
font-size:11px;
}

.wpsPortletBody .option-body {
background:#fff;
background:-moz-linear-gradient(top, #fff 0%, #f1f1f1 100%);
background:-webkit-gradient(linear, left top, left bottom, color-stop(0%,#fff), color-stop(100%,#f1f1f1));
background:-webkit-linear-gradient(top, #fff 0%,#f1f1f1 100%);
background:-o-linear-gradient(top, #fff 0%,#f1f1f1 100%);
background:-ms-linear-gradient(top, #fff 0%,#f1f1f1 100%);
background:linear-gradient(to bottom, #fff 0%,#f1f1f1 100%);
filter:progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#f1f1f1',GradientType=0 );
font-size:13px;
margin-top:10px;
min-height:114px;
height:auto!important;
height:114px;
padding:10px;
}

.wpsPortletBody .option-body h5 {
color:#9a3234;
font-size:15px;
margin-bottom:5px;
}

.wpsPortletBody .option-body h5 a {
color:#9a3234;
font-size:15px;
}

.wpsPortletBody .option-body h5 a:hover {
color:#545454;
text-decoration:none;
}

.wpsPortletBody .option-body p {
margin:0;
padding:0;
}

.wpsPortletBody .option-body p.right {
width:68%;
}

.wpsPortletBody .option-body img {
float:left;
margin-right:10px;
}

.wpsPortletBody .option-body div.img_viewport {
width:92px;
height:98px;
overflow:hidden;
float: left;
margin-right:10px
}

.spws_portlet-bottom-link {
-moz-border-radius:0!important;
-webkit-border-radius:0!important;
border-radius:0!important;
border:none!important;
font-size:11px!important;
margin:10px 10px 0 0;
min-height:auto!important;
height:auto!important;
padding:0!important;
}

.spws_portlet-bottom-link a:hover {
text-decoration:underline;
}

.spws_rotating-arrow-right {
-moz-border-radius:0!important;
-webkit-border-radius:0!important;
border-radius:0!important;
border:none!important;
margin:0!important;
min-height:auto!important;
height:auto!important;
padding:0!important;
right:10px;
top:85px;
position:absolute;
}

.spws_rotating-arrow-right a {
background:url(/themes/spwsSchoolV2_DMIT/images/icon-arrow-spotlight-right.png) no-repeat right 0;
display:block;
height:18px;
width:13px;
}

.spws_rotating-arrow-right a:hover {
text-decoration:none;
}

.spws_bigimage .option-body p img {
width:92px;
height:98px;
}

.spws_bigimage .btn-play {
background:url(/themes/spwsSchoolV2_DMIT/images/btn-play.png) no-repeat center center;
cursor:pointer;
display:block;
height:98px;
position:absolute;
width:92px;
}

.wpsPortletBody .spws_bigimage .option-body p.right {
width:62%;
}

.spws_small_image .option-body p img {
width:74px;
height:75px;
}

.spws_noimage_arrow {
position:relative;
}

.spws_noimage_arrow .option-body p {
width:90%;
}

.spws_twosmalloptions div.clearfix {
min-height:auto!important;
height:auto!important;
}

.spws_list ul {
margin-top:10px;
}

.spws_list ul a {
border-top:1px solid #e7e7e7;
color:#545454;
display:block;
font-size:14px;
line-height:25px;
width:286px;
}

.spws_list ul li:first-child a {
border-top:none;
}

.spws_list ul a:hover {
color:#9a3234;
text-decoration:none;
}

.spws_side-links {
width:313px;
}

.spws_side-links ul li {
border-top:1px solid #cfcfcf;
display:block;
font-size:14px;
font-weight:bold;
line-height:38px;
padding:0 20px;
text-transform:uppercase;
vertical-align:middle;
width:273px;
}

.spws_side-links ul li:first-child {
border-top:none;
}

.spws_side-links a {
display:block;
font-size:14px;
font-weight:bold;
line-height:38px;
text-transform:uppercase;
}

.spws_side-links a:hover {
text-decoration:none;
}

.spws_side-links img {
margin-right:10px;
}

.spws_banner {
text-align:center;
}

.spws_connect {
color:#000;
width:304px;
margin-left: 10px;
}

.spws_connect img {
margin:3px 5px;
}

.dijitDialog {
background:#fff;
-moz-border-radius:8px;
-webkit-border-radius:8px;
border-radius:8px;
-moz-background-clip:padding;
-webkit-background-clip:padding-box;
background-clip:padding-box;
webkit-box-shadow:0 0 6px 0 rgba(0,0,0,.75);
box-shadow:0 0 6px 0 rgba(0,0,0,.75);
height:auto!important;
padding:15px 20px;
width:auto!important;
}

.dijitDialogTitleBar {
margin:0 auto 5px;
}

.dijitDialogTitle {
font-size:15px;
font-weight:bold;
text-transform:uppercase;
}

.dijitDialogCloseIcon {
background:url(/themes/spwsSchoolV2_DMIT/images/icon-close.png) no-repeat 0 0;
cursor:pointer;
display:block;
height:30px;
position:absolute;
right:-12px;
top:-12px;
width:30px;
}

.closeText {
color:transparent;
display:block;
overflow:hidden;
text-indent:999999px;
}

.dijitDialogPaneContent {
margin:0 auto;
}

.dijitDialogUnderlayWrapper {
background:-moz-linear-gradient(bottom, rgba(0,0,0,.5) 0%, rgba(0,0,0,.5) 100%);
background:-webkit-gradient(linear, left bottom, left top, color-stop(0%, rgba(0,0,0,.5)), color-stop(100%, rgba(0,0,0,.5)));
background:-webkit-linear-gradient(bottom, rgba(0,0,0,.5) 0%, rgba(0,0,0,.5) 100%);
background:-o-linear-gradient(bottom, rgba(0,0,0,.5) 0%, rgba(0,0,0,.5) 100%);
background:-ms-linear-gradient(bottom, rgba(0,0,0,.5) 0%, rgba(0,0,0,.5) 100%);
background:linear-gradient(bottom, rgba(0,0,0,.5) 0%, rgba(0,0,0,.5) 100%);
height:100%;
overflow:hidden;
position:absolute;
width:100%;
}

.dj_ie .dijitDialogUnderlayWrapper {
background:url(/themes/spwsSchoolV2_DMIT/images/bg-caption.png) repeat 0 0;
cursor:default;
}


.spws_footer {
color:#000;
font-size:11px;
margin:10px 0;
}

.spws_footer ul li {
float:left;
}

.spws_footer .spws_address, .spws_footer .spws_address li {
width:300px;
}

.spws_footer a:hover {
text-decoration:underline;
}

.spws_footer .spws_nav {
margin:0;
}

.spws_footer .spws_nav li {
border-left:1px solid #000;
margin:0 0 0 8px;
padding-left:8px;
}

.spws_footer .spws_nav li:first-child {
border-left:none;
margin:0;
padding-left:0;
}

.spws_footer .spws_nav li a, .spws_footer .text-right a {
color:#000;
margin:0;
}

div.spSitemap {
font-family:Arial, sans-serif;
font-size:12px;
color:#333;
width:500px;
padding:30px;
}

div.spSitemap ul ul {
padding-left:25px;
}

div.spSitemap li a, div.spSitemap li a:visited {
font-family:Arial, sans-serif;
font-size:12px;
padding:3px;
text-decoration:none;
color:#333;
display:block;
float:left;
}

div.spSitemap li a.label, div.spSitemap li a.label:visited, div.spSitemap li a.label:hover {
color:#999;
cursor:text;
}

div.spSitemap li a.link1stLevel, div.spSitemap li a:visited.link1stLevel {
font-size:15px;
color:#492f91;
font-weight:bold;
}

div.spSitemap li a:hover.link1stLevel {
color:#cc424f;
}

div.spSitemap li a.inline {
text-decoration:none;
width:7px;
color:#333;
display:block;
float:left;
}

div.spSitemap li a:hover.inline {
color:#cc424f;
}

div.spSitemap li a.noSubLink {
padding-left:16px;
}

div.spSitemap li {
/* fix for IE blank line bug */
display:inline;
clear:both;
}

div.spSitemap ul > li {
display:list-item;
}

div.spSitemap li > a {
width:auto;
height:auto;
}

div.spSitemap li li a {
background-color:none;
}

div.spSitemap li li li a {
background:none;
}

div.spSitemap li a:hover {
color:#492f91;
background:none;
}

div.spSitemap li li a:hover {
color:#492f91;
background:none;
}

div.spSitemap li li li a:hover {
color:#492f91;
background:none;
}

@media screen and (-webkit-min-device-pixel-ratio:0) {
}

@media all and (-webkit-min-device-pixel-ratio:10000),not all and (-webkit-min-device-pixel-ratio:0) { 
}

#topLeft_title {
float:left;
}

#topLeft_title h1 {
border-left:10px solid #492f91;
color:#000;
font-size:18px;
font-weight:normal;
margin-bottom:15px;
padding-left:10px;
text-transform:uppercase;
}

#topRight_icons {
margin-bottom:15px;
float:right;
}

#skinIcons {
margin-bottom:10px;
clear:both;
}

#content_oneColumn_wrapper h1 {
padding-left:10px;
font-family: Arial, sans-serif;
font-size:20px;
color:#000;
font-weight:normal;
border-left:solid 10px;
border-color:#492f91;
margin-bottom:15px;
}

#content_oneColumn_wrapper {
font-family: Arial, sans-serif;
font-size:12px;
color:#333;
}

#content_oneColumn_wrapper p {
font-family: Arial, sans-serif;
font-size:12px;
color:#333;
margin-bottom:15px;
line-height:15px;
}

#content_oneColumn_wrapper strong, #content_oneColumn_wrapper b {
color:#000;
font-weight:bold;
}

#content_oneColumn_wrapper h3 {
font-family: Arial, sans-serif;
font-size:13px;
color:#000;
font-weight:bold;
margin-bottom:15px;
}

#content_oneColumn_wrapper h4 {
font-family: Arial, sans-serif;
font-size:12px;
color:#492f91;
font-weight:bold;
margin-bottom:15px;
}

#content_oneColumn_wrapper table {
margin-bottom:15px;
font-family: Arial, sans-serif;
font-size:12px;
color:#333;
}

#content_oneColumn_wrapper img {
 border:solid 3px #c3c3c3;
}

#content_oneColumn_wrapper img.noBorder {
 border:none;
}

#content_oneColumn_wrapper hr {
 border:solid 1px #999;
 height:1px;
}

#content_oneColumn_wrapper a {
font-family: Arial, sans-serif;
font-size:12px;
color:#492f91;
text-decoration:underline;
font-weight:bold;
}

#content_oneColumn_wrapper a:hover {
text-decoration:none;
}

#content_oneColumn_wrapper ul {
margin-left:15px;
margin-bottom:15px;
}

#content_oneColumn_wrapper li {
font-family: Arial, sans-serif;
font-size:12px;
color:#333;
padding:2px 8px;
background:url(/themes/spwsSchoolV2_DMIT/images/bullet2.gif) left top no-repeat;
float:none;
}

#content_tabNews {
width:100%;
margin-bottom:10px;
clear:both;
}

#content_tabNews table {
width:100%;
margin:0;
}

#content_tabNews td {
border:solid 2px #fff;
cursor:pointer;
}

#content_tabNews td:hover {
border:solid 2px #666;
background-color:#f3f3f3;
}

#content_tabNews img {
float:left;
border:2px solid #666;
margin-right:10px;
width:100px;
height:auto;
}

#content_tabNews h3 {
font-family: Arial, sans-serif;
font-size:13px;
color:#000;
font-weight:bold;
padding:3px 0;
margin:0 10px;
}

#content_tabNews h3 a {
color:#000;
text-decoration:none;
}

#content_tabNews h3 a:hover {
text-decoration:underline;
}

#content_tabNews p {
font-family: Arial, sans-serif;
font-size:12px;
color:#333;
font-weight:normal;
margin:0 10px 3px 10px;
}

#content_tabNews a {
color:#333;
text-decoration:none;
}

#content_tabNews a:hover {
text-decoration:underline;
}

#content_overviewColumn_wrapper {
width:530px;
font-family: Arial, sans-serif;
font-size:12px;
color:#333;
}

#content_overviewColumn_wrapper p {
font-family: Arial, sans-serif;
font-size:12px;
color:#333;
margin-bottom:15px;
line-height:15px;
}

#content_overviewColumn_wrapper strong, #content_overviewColumn_wrapper b {
color:#000;
font-weight:bold;
}

#content_overviewColumn_wrapper a {
font-family: Arial, sans-serif;
font-size:12px;
color:#492f91;
text-decoration:underline;
font-weight:bold;
}

#content_overviewColumn_wrapper a:hover {
text-decoration:none;
}

#content_overviewColumn_wrapper h3 {
font-family: Arial, sans-serif;
font-size:13px;
color:#000;
font-weight:bold;
margin-bottom:15px;
}

#content_overviewColumn_wrapper h4 {
font-family: Arial, sans-serif;
font-size:12px;
color:#492f91;
font-weight:bold;
margin-bottom:15px;
}

#content_overviewColumn_wrapper img {
border:solid 3px #c3c3c3;
}

#content_overviewColumn_wrapper img.noBorder {
 border:none;
}

#content_overviewColumn_wrapper ul {
margin-left:15px;
margin-bottom:15px;
}

#content_overviewColumn_wrapper li {
font-family: Arial, sans-serif;
font-size:12px;
color:#333;
padding:2px 8px;
background:url(/themes/spwsSchoolV2_DMIT/images/bullet2.gif) left top no-repeat;
float:none;
}

#content_overviewColumn_wrapper select {
width:280px;
height:22px;
background:#333;
border:solid 1px #ab0054;
font-size:11px;
color:#fff;
}

#content_overviewColumn_wrapper button, #content_overviewColumn_wrapper input {
margin-left:5px;
padding:0 20px;
height:22px;
background:#492f91!important;
border:0;
font-size:12px;
color:#fff;
font-weight:bold;
cursor:pointer;
}

#content_overviewColumn_wrapper table {
margin-bottom:15px;
font-family: Arial, sans-serif;
font-size:11px;
color:#999;
}

#content_bigColumn_wrapper {
width:645px;
font-family: Arial, sans-serif;
font-size:12px;
color:#333;
}

#content_bigColumn_wrapper p {
font-family: Arial, sans-serif;
font-size:12px;
color:#333;
margin-bottom:15px;
line-height:15px;
}

#content_bigColumn_wrapper strong, #content_bigColumn_wrapper b {
color:#000;
font-weight:bold;
}

#content_bigColumn_wrapper a {
font-family: Arial, sans-serif;
font-size:12px;
color:#492f91;
text-decoration:underline;
font-weight:bold;
}

#content_bigColumn_wrapper a:hover {
text-decoration:none;
}

#content_bigColumn_wrapper h3 {
font-family: Arial, sans-serif;
font-size:13px;
color:#000;
font-weight:bold;
margin-bottom:15px;
}

#content_bigColumn_wrapper h4 {
font-family: Arial, sans-serif;
font-size:12px;
color:#492f91;
font-weight:bold;
margin-bottom:15px;
}

#content_bigColumn_wrapper img {
border:solid 3px #c3c3c3;
}

#content_bigColumn_wrapper img.noBorder {
 border:none;
}

#content_bigColumn_wrapper ul {
margin-left:15px;
margin-bottom:15px;
}

#content_bigColumn_wrapper li {
font-family: Arial, sans-serif;
font-size:12px;
float:none;
color:#333;
padding:2px 8px;
background:url(/themes/spwsSchoolV2_DMIT/images/bullet2.gif) left top no-repeat;
}

#content_bigColumn_wrapper select {
width:280px;
padding:3px 0;
background:#333;
border:solid 1px #ab0054;
font-size:9px;
color:#fff;
vertical-align:bottom;
margin-bottom:5px;
}

#content_bigColumn_wrapper button, #content_bigColumn_wrapper input, #content_oneColumn_wrapper button, #content_oneColumn_wrapper input {
margin-left:5px;
padding:2px 20px;
background:#492f91!important;
border:0;
font-size:12px;
color:#fff;
font-weight:bold;
cursor:pointer;
margin-bottom:5px;
}

#content_bigColumn_wrapper table {
margin-bottom:15px;
font-family: Arial, sans-serif;
font-size:12px;
color:#333;
}

.blinking {
font-family: Arial, sans-serif;
font-size:11px;
color:#fe0000;
text-decoration:blink;
}

.smallText {
font-family: Arial, sans-serif;
font-size:11px;
}

#tableDetails {
font-family: Arial, sans-serif;
font-size:12px;
border:solid 1px;
border-color:#492f91;
width:565px;
color:#000;
}

#tableDetails a {
font-family: Arial, sans-serif;
font-size:12px;
color:#492f91;
text-decoration:underline;
font-weight:bold;
}

#tableDetails ul {
margin-left:15px;
margin-bottom:15px;
}

#tableDetails li {
font-family: Arial, sans-serif;
font-size:12px;
color:#000;
padding:2px 8px;
background:url(/themes/spwsSchoolV2_DMIT/images/bullet2.gif) left top no-repeat;
}

#tableDetails th {
font-family: Arial, sans-serif;
font-size:12px;
color:#fff;
font-weight:bold;
text-transform:uppercase;
padding:5px;
vertical-align:top;
text-align:left;
background:#492f91;
}

#tableDetails th p {
font-family: Arial, sans-serif;
font-size:12px;
color:#fff;
font-weight:bold;
text-transform:uppercase;
margin:0;
}

#tableDetails th a {
font-family: Arial, sans-serif;
font-size:12px;
color:#fff;
text-decoration:underline;
font-weight:bold;
}

#tableDetails th a:hover {
text-decoration:none;
}

#tableDetails td {
font-family: Arial, sans-serif;
font-size:12px;
color:#000;
padding:5px;
vertical-align:top;
}

#tableDetails td p {
font-family: Arial, sans-serif;
font-size:12px;
color:#000;
}

#tableDetails td strong, #tableDetails td b {
font-family: Arial, sans-serif;
font-size:12px;
font-weight:bold;
color:#000;
}

#tableDetails .rowWhite {
background:#fff;
}

#tableDetails .rowGray {
background:#f0f0f0;
}

#tableDetails img.noBorder {
border:none;
}

#content_tabSubLink {
width:680px;
margin-bottom:20px;
clear:both;
}

#content_tabSubLink table {
width:100%;
margin:0;
}

#content_tabSubLink td {
background:url(/themes/spwsSchoolV2_DMIT/images/icon_tab.gif) no-repeat center right;
border:solid 3px #fff;
cursor:pointer;
}

#content_tabSubLink td:hover {
border:solid 3px #666;
background:url(/themes/spwsSchoolV2_DMIT/images/icon_tab.gif) no-repeat center right;
background-color:#f3f3f3;
text-decoration:underline;
}

#content_tabSubLink img {
float:left;
border:none;
margin-right:15px;
}

#content_tabSubLink h2 {
font-family: Arial, sans-serif;
font-size:18px;
color:#000;
font-weight:bold;
text-transform:uppercase;
padding:6px 0;
margin-left:15px;
padding-right:78px;
}

#content_tabSubLink h2 a {
color:#000;
text-decoration:none;
}

#content_tabSubLink h2 a:hover {
text-decoration:underline;
}

#content_tabSubLink p {
font-family: Arial, sans-serif;
font-size:12px;
color:#333;
font-weight:normal;
margin:0;
margin-bottom:6px;
margin-left:15px;
padding-right:78px;
}

#content_tabSubLink a {
color:#333;
text-decoration:none;
}

#content_tabSubLink a:hover {
text-decoration:underline;
}

#content_tabNoSubLink {
width:400px;
margin-bottom:30px;
margin-right:30px;
float:left;
}

#content_tabNoSubLink img {
float:left;
border:2px solid #ccc;
margin-right:15px;
}

#content_tabNoSubLink h3 {
font-family: Arial, sans-serif;
font-size:14px;
color:#000;
font-weight:bold;
text-transform:uppercase;
padding-bottom:6px;
margin-left:15px;
padding-right:15px;
}

#content_tabNoSubLink h3 a {
color:#000;
text-decoration:none;
}

#content_tabNoSubLink h3 a:hover {
text-decoration:underline;
}

#content_tabNoSubLink hr {
size:1px;
color:#fff;
padding:0;
margin-top:-5px;
}

#content_tabNoSubLink p {
font-family: Arial, sans-serif;
font-size:12px;
color:#333;
font-weight:normal;
margin:0;
margin-bottom:6px;
margin-left:15px;
padding-right:15px;
}

#content_tabNoSubLink a {
color:#333;
text-decoration:none;
}

#content_tabNoSubLink a:hover {
text-decoration:underline;
}

#bulletQuickLinks_tabSubLink {
float:left;
width:auto;
margin-left:15px;
margin-bottom:6px;
}

#bulletQuickLinks_tabSubLink li {
font-family: Arial, sans-serif;
font-size:12px;
color:#333;
padding:2px 8px;
background:url(/themes/spwsSchoolV2_DMIT/images/bullet2.gif) left top no-repeat;
}

#bulletQuickLinks_tabSubLink li a {
color:#492f91;
font-weight:bold;
text-decoration:underline;
}

#bulletQuickLinks_tabSubLink li a:hover {
text-decoration:none;
}

#tableAnnualReport {
margin-top:7px;
}

#tableAnnualReport ul {
padding:7px;
margin:0;
margin-bottom:7px;
}

#tableAnnualReport ul.color1 {
background:#a9122a;
}

#tableAnnualReport ul.color2 {
background:#949fb4;
}

#tableAnnualReport ul.color3 {
background:#dea937;
}

#tableAnnualReport ul.color4 {
background:#c1d96f;
}

#tableAnnualReport ul.color5 {
background:#6d407a;
}

#tableAnnualReport li {
padding-bottom:3px;
}

#tableAnnualReport a {
font-family: Arial, sans-serif;
font-size:12px;
color:#fff;
font-weight:bold;
text-decoration:underline;
}

#tableAnnualReport a:hover {
text-decoration:none;
}

#content_smallColumn_wrapper {
padding:0 0 0 20px;
}

#imageQuote .leftBg {
background:url(/themes/spwsSchoolV2_DMIT/images/bg-imagequote.jpg) left top no-repeat;
width:27px;
height:400px;
float:left;
}

#imageQuote .mainBg {
float:left;
}

#imageQuote h3 {
margin:8px 0;
font-family: Arial, sans-serif;
font-size:16px;
color:#000;
}

#imageQuote p {
margin-bottom:15px;
font-family: Arial, sans-serif;
font-size:11px;
color:#333;
}

#imageQuote li {
margin-bottom:3px;
}

#imageQuote strong, #imageQuote b {
color:#000;
font-weight:bold;
}

#imageQuote img {
border:none;
}

#imageQuote a {
font-family: Arial, sans-serif;
font-size:12px;
color:#492f91;
font-weight:bold;
text-decoration:none;
}

#imageQuote a:hover {
text-decoration:underline;
}

#bulletQuickLinks {
width:auto;
}

#bulletQuickLinks ul a {
font-family: Arial, sans-serif;
font-size:12px;
color:#333;
font-weight:normal;
text-decoration:underline;
}

#bulletQuickLinks ul a:hover {
text-decoration:none;
}

#bulletQuickLinks li {
padding:2px 15px;
padding-right:0;
background:url(/themes/spwsSchoolV2_DMIT/images/cbullet_1.gif) 0 9px no-repeat;
float:none;
}

#tableDetails .moduleCode {
width:15%;
}
#tableDetails .moduleName {
width:70%;
}
#tableDetails .moduleHour {
width:15%;
}

#tableTabbed {
 font-family: Arial, sans-serif;
 font-size:12px;
 border:solid 1px;
 border-color:#492f91;
 color:#000;
}

th.tableTabbed{
font-family: Arial, sans-serif;
color:#fff;
font-weight:bold;
cursor: pointer;
padding:5px;
vertical-align:top;
text-align:left;
background:#492f91;
text-decoration:underline;
}

th.tableTabbedSelected {
font-family: Arial, sans-serif;
color:#fff;
font-weight:bold;
cursor: pointer;
padding:5px;
vertical-align:top;
text-align:left;
background:#630031;
text-decoration:underline;
}

#tableTabbed a {
color:#492f91;
text-decoration:underline;
font-weight:bold;
}

#tableTabbed td {
padding:5px;
vertical-align:top;
}

@media screen and (max-device-width: 320px){
body{
-webkit-text-size-adjust: none;
}
}

@media screen and (max-device-width: 480px){
body{
-webkit-text-size-adjust: none;
}
}
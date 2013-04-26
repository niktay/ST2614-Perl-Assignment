define([
	"dojo/ready",
	"dojo/query", 
	"dojo/dom", 
	"dojo/dom-style", 
	"dojo/dom-attr",
	"dojo/dom-construct",
	"dojo/dom-geometry", 
	"dojo/dom-class",
	"dojo/on",
	"dijit/Dialog",
	"dojo/NodeList-traverse"
], function (ready, domQuery, dom, domStyle, domAttr, domConstruct, domGeom, domClass, dojoOn, Dialog) {
    function processLandingPageMenuList(listId, count, flagReplaceMoreLink) {
      ready(function() {
        // ie fix for recursing <a> - use nodelist and always take last node even tho selector says "last-of-type"
        domQuery("#"+listId+" > ul:first-of-type > li").forEach(function(liNode) {
          nodelist = domQuery("> a", liNode);
          var hrefNodeURL = domAttr.get(nodelist[nodelist.length-1], "href");
          var hrefNodeText = nodelist[nodelist.length-1].innerHTML;

          domConstruct.empty(liNode);
          var newLink = domConstruct.create("a");
          domAttr.set(newLink, "href", hrefNodeURL);
          newLink.innerHTML=hrefNodeText;
          domConstruct.place(newLink, liNode);
        })
        domQuery("#"+listId+" > div.spws_portlet-bottom-link").forEach(function(node) {
          if (domQuery("#"+listId+" > ul:first-of-type > li").length >= count) {
            domStyle.set(node, "display", "block");
            if (flagReplaceMoreLink==1) {
              var morelink="";
              nodelist = domQuery("#"+listId+" > ul:first-of-type > li:first-of-type > a");
              if (nodelist.length>0) {
                morelink=domAttr.get(nodelist[0], "href");
              }
              if (morelink.length>0) {
                domQuery("> a", node).forEach(function(hrefNode) {
                  domAttr.set(hrefNode, "href", morelink);
                })
              }
            }
          }
          else
            domStyle.set(node, "display", "none");
        });
      })
    }
    function processLandingPageMenu(listId, flagReplaceMoreLink) {
      ready(function() {
        // ie fix for recursing <a> - use nodelist and always take last node even tho selector says "last-of-type"
        nodelist = domQuery("#"+listId+" div.option-body h5:first-of-type a:last-of-type");
        var hrefNodeURL = domAttr.get(nodelist[nodelist.length-1], "href");
        var hrefNodeText = nodelist[nodelist.length-1].innerHTML;
        var parentNode = nodelist[nodelist.length-1].parentNode;
        domConstruct.empty(parentNode);
        var newLink = domConstruct.create("a");
        domAttr.set(newLink, "href", hrefNodeURL);
        newLink.innerHTML=hrefNodeText;
        domConstruct.place(newLink, parentNode);
        var selectorUpdateHref;
        if  (flagReplaceMoreLink==1)
          selectorUpdateHref = "#"+listId+" div.spws_rotating-arrow-right a, #"+listId+" div.spws_portlet-bottom-link a";
        else
          selectorUpdateHref = "#"+listId+" div.spws_rotating-arrow-right a";
        domQuery(selectorUpdateHref).forEach(function(targetHrefNode) {
          domAttr.set(targetHrefNode, "href", hrefNodeURL);
        })
      })
    }
	function processMegaMenu(megamenu_id, delay) {
      ready(function(){
        // lvl 2 nav height fix
        lvl1heightfixlist = domQuery(".spws_megamenu_1 > ", megamenu_id);
        for(var i=0; i<lvl1heightfixlist.length; i++) {
          lvl1ahrefheightfixlist = domQuery(".spws_megamenu_1_link", lvl1heightfixlist[i]);
          lvl1ahrefheightfixpositionlist = lvl1ahrefheightfixlist.position();
          var highest=0;
          for(var k=0; k<lvl1ahrefheightfixpositionlist.length; k++) {
            if (lvl1ahrefheightfixpositionlist[k].h>highest)
              highest=lvl1ahrefheightfixpositionlist[k].h;
          }
          for(var k=0; k<lvl1ahrefheightfixlist.length; k++) {
            domStyle.set(lvl1ahrefheightfixlist[k], "height", highest+"px");
          }
          lvl2highest=highest+15;
          lvl2heightfixlist = domQuery(".spws_megamenu_2", lvl1heightfixlist[i]);
          for(var k=0; k<lvl2heightfixlist.length; k++) {
            domStyle.set(lvl2heightfixlist[k], "top", lvl2highest+"px");
          }
        }

        // lvl 3 nav height fix
        lvl2heightfixlist = domQuery(".spws_megamenu_2 >", megamenu_id)
        for(var i=0; i<lvl2heightfixlist.length; i++) {
          lvl2liheightfixlist = domQuery("> li", lvl2heightfixlist[i]);

          lvl2lipositionheightfixlist=lvl2liheightfixlist.position();
          var highest=0;
          for(var k=0; k<lvl2lipositionheightfixlist.length; k++) {
            if (lvl2lipositionheightfixlist[k].h>highest)
              highest=lvl2lipositionheightfixlist[k].h
          }
          for(var k=0; k<lvl2liheightfixlist.length; k++) {
            domStyle.set(lvl2liheightfixlist[k], "height", highest+"px");
          }
        }

		// event bindings - lvl 5 nav (+/-) toggle
		domQuery('.spws_megamenu_toggle', megamenu_id).forEach(function(nodeLvl1LI) {
          dojoOn(nodeLvl1LI, "click", function(evt) {
			  tgt = domQuery(evt.currentTarget, megamenu_id).next()[0];
			  if (domStyle.get(tgt, "display")==='none') {
				domStyle.set(tgt, "display", "block");
				domQuery("span", tgt.parentNode)[0].innerHTML="(<span>-</span>)";
				ul_list = domQuery(tgt, megamenu_id).parents("ul");
				if (ul_list.length>=4) {
				  li_list = domQuery("> li", ul_list[1]);
				  li_list.style("height", "");
				  li_dimension_list=li_list.position();
				  var highest=0;
				  for(var k=0; k<li_dimension_list.length; k++) {
					if (li_dimension_list[k].h>highest)
					  highest=li_dimension_list[k].h
				  }
				  li_list.style("height", highest+"px");
				}
			  }
			  else {
				domStyle.set(tgt, "display", "none");
				domQuery("span", tgt.parentNode)[0].innerHTML="(<span>+</span>)";
				ul_list = domQuery(tgt, megamenu_id).parents("ul");
				if (ul_list.length>=4) {
				  li_list = domQuery("> li", ul_list[1]);
				  li_list.style("height", "");
				  li_dimension_list=li_list.position();
				  var highest=0;
				  for(var k=0; k<li_dimension_list.length; k++) {
					if (li_dimension_list[k].h>highest)
					  highest=li_dimension_list[k].h
				  }
				  li_list.style("height", highest+"px");
				}
			  }
          });
		});

        // event bindings - lvl 1 nav
        domQuery("#spws_nav > ul > li").forEach(function(nodeLvl1LI) {
		  // bind mouse out action
          dojoOn(nodeLvl1LI, "mouseout", function() {
            this._timer = setTimeout(
              function() {
                domQuery("div.spws_megamenu_1, div.spws_megamenu_1 > ul > li , div.spws_megamenu_1 > ul > li > a, div.spws_megamenu_2, div.spws_megamenu_2 > ul > li , div.spws_megamenu_2 > ul > li > a, div.spws_megamenu_3, div.spws_megamenu_3 > ul > li , div.spws_megamenu_3 > ul > li > a, div.spws_megamenu_4, div.spws_megamenu_4 > ul > li , div.spws_megamenu_4 > ul > li > a", nodeLvl1LI).forEach(function(nodeLvl1LIContent) {
                  domClass.remove(nodeLvl1LIContent, "visible");								
                });

                domQuery("div.spws_megamenu_1 > ul > li.hover", nodeLvl1LI).forEach(function(nodeLvl1LIWithHover) {
                  domClass.remove(nodeLvl1LIWithHover, "hover");								
                });

                domClass.remove(nodeLvl1LI, "hover");
              }, 
			 delay);
          });

		  // bind mouse in action
          dojoOn(nodeLvl1LI, "mouseover", function() {
            clearTimeout(this._timer);

            // hide siblings (including all their children)
            domQuery(nodeLvl1LI).siblings().forEach(function(nodeLvl1LISiblings) {
              domClass.remove(nodeLvl1LISiblings, "hover");
              domQuery("div.spws_megamenu_1, div.spws_megamenu_1 > ul > li, div.spws_megamenu_1 > ul > li > a, div.spws_megamenu_2, div.spws_megamenu_2 > ul > li , div.spws_megamenu_2 > ul > li > a, div.spws_megamenu_3, div.spws_megamenu_3 > ul > li , div.spws_megamenu_3 > ul > li > a, div.spws_megamenu_4, div.spws_megamenu_4 > ul > li , div.spws_megamenu_4 > ul > li > a", nodeLvl1LISiblings).forEach(function(nodeLvl1LISiblingsContent) {
                domClass.remove(nodeLvl1LISiblingsContent, "visible");
              });
              domQuery("div.spws_megamenu_1 > ul > li.hover", nodeLvl1LISiblings).forEach(function(nodeLvl1LISiblingsWithHover) {
                domClass.remove(nodeLvl1LISiblingsWithHover, "hover");
              });
            });

            // show self
            domQuery("div.spws_megamenu_1, div.spws_megamenu_1 > ul > li, div.spws_megamenu_1 > ul > li > a", nodeLvl1LI).forEach(function(nodeLvl1LIContent) {
              domClass.add(nodeLvl1LIContent, "visible");
            })

            domClass.add(nodeLvl1LI, "hover");
          });
        });

        // event bindings - lvl 2 nav
        domQuery(".spws_megamenu_1 > ul > li", "spws_nav").forEach(function(nodeLvl2LI) {
          // bind mouse out action

          // bind mouse over action
          dojoOn(nodeLvl2LI, "mouseover", function() {
            clearTimeout(this._timer);

            // hide siblings (including all their children)
            domQuery(nodeLvl2LI).siblings().forEach(function(nodeLvl2LISiblings) {
              domQuery("div.spws_megamenu_2, div.spws_megamenu_2 > ul > li , div.spws_megamenu_2 > ul > li > a, div.spws_megamenu_3, div.spws_megamenu_3 > ul > li , div.spws_megamenu_3 > ul > li > a, div.spws_megamenu_4, div.spws_megamenu_4 > ul > li , div.spws_megamenu_4 > ul > li > a", nodeLvl2LISiblings).forEach(function(nodeLvl2LISiblingsContent) {
                domClass.remove(nodeLvl2LISiblingsContent, "visible");
              });
              domClass.remove(nodeLvl2LISiblings, "hover");
            });

            // show self + all children
            domQuery("div.spws_megamenu_2, div.spws_megamenu_2 > ul > li , div.spws_megamenu_2 > ul > li > a, div.spws_megamenu_3, div.spws_megamenu_3 > ul > li , div.spws_megamenu_3 > ul > li > a, div.spws_megamenu_4, div.spws_megamenu_4 > ul > li , div.spws_megamenu_4 > ul > li > a", nodeLvl2LI).forEach(function(nodeLvl2LIContent) {
              domClass.add(nodeLvl2LIContent, "visible");
            });

            // show arrow
            domClass.add(nodeLvl2LI, "hover");
          });
        });
      });
    }
    function processBanner(bannerId) {
      ready(function(){
        domQuery("#"+bannerId+" > div.spws_maskhead_rotator_pane > div.spws_caption").forEach(function(nodeCaption) {
          domClass.add(nodeCaption, "visible");
        });
      })
    }
    function processLayout(main_id) {
      ready(function(){
        // white background
        nodelist = domQuery(".layoutRow", main_id);
        for(var i=0; i<nodelist.length; i++) {
          if (i==0)
            domClass.add(nodelist[i], ["spws_bg-white", "spws_border", "spws_rounded", "spws_shadow"]); 
          else {
            rownodelist = domQuery("> tbody > tr > td > div", nodelist[i]);
            if (rownodelist.length>0) {
              rownodelist[0].parentNode.innerHTML="";
            }
            if (rownodelist.length>2) {
              rownodelist[rownodelist.length-1].parentNode.innerHTML="";
            }
          }
        }
      })
    }
    function createDialog(button_id, title, content) {
      ready(function(){
        dialog = new Dialog({
          title: "",
		  content: ""
        });
        dojoOn(dialog, "hide", function() {
          dialog.set("title", "");
		  dialog.set("content", "");
		});
        domQuery("#"+button_id).forEach(function(buttonNode) {
          dojoOn(buttonNode, "click", function(evt){
            dialog.set("title", title);
            dialog.set("content", content);
            dialog.show();
          });
        });
      });
    }
    return {
      processLandingPageMenu: processLandingPageMenu,
      processLandingPageMenuList: processLandingPageMenuList, 
      processMegaMenu: processMegaMenu,
      processBanner: processBanner,
      processLayout: processLayout,
      createDialog: createDialog
    }
});
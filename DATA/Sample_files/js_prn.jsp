
function printPage(context_path) {
  window.open('/wps/portal/vp-spws/misc.prn/?WCM_GLOBAL_CONTEXT='+context_path+'&presentationtemplate=Lib-Shared/PT-Print+Friendly', 'print_page', 'scrollbars=1, toolbar=0, menubar=1, resizable=1, statusbar=1, width=1022, height=600, left=' + ((screen.width - 800) / 2) + ', top=' + ((screen.height - 600) / 2));
}
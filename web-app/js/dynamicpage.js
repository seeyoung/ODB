$(function() {

	//newHash = window.location.hash;
	
	function currentTab(idx) {
		$("nav#pressNav li a").removeClass("ui-btn-active");
		$("press_" + idx).addClass("ui-btn-active");
	}

	$("nav#pressNav li").on("click", "a", function() {
		var idx = $(this).parent()[0].id.split("_")[1];
		alert(idx);
		currentTab(idx);
	});

	$("#hello_2").hide();
	$(".ui-controlgroup-controls>a").removeClass("current-btn-mini");
	
	function moveTab(tabIdx) {
		$(".ui-controlgroup-controls>a").removeClass("current-btn-mini");
		$("#menuhello_" + tabIdx).addClass("current-btn-mini");
	}
	$("div#helloControlgroup").on("click", "a", function() {
		var tabIdx = this.id.split("_")[1];
		alert(tabIdx)
		$("#hello_1,#hello_2").slideUp();
		$("#hello_" + tabIdx).slideDown();
		moveTab(tabIdx);
	});
});

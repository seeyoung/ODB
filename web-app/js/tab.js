$(function() {
	hideObject();
	function moveTab(tabIdx) {
		// alert("4")
		$("#tab_container>li").removeClass("current_tab");
		$("#tab_" + tabIdx).addClass("current_tab");

		$("#content_container>div").removeClass("current_tab");
		$("#content_" + tabIdx).addClass("current_tab");
	}

	function hideObject() {
		for ( var i = 1; i < 3; i++) {
			$("#songSub_" + i).slideUp();
			$("span.arrow-up").slideUp();
		}
	}

	function audioPlayToggle(clickIdx) {
		// alert("4")
		if ($('#songSub_' + clickIdx).css("display") == "none") {
			$('#songSub_' + clickIdx).slideDown();
			$("#audio_" + clickIdx)[0].play();
		} else {
			$('#songSub_' + clickIdx).slideUp();
			$("#audio_" + clickIdx)[0].pause();
		}
		$("span.arrow").slideToggle('fast');
	}

	$("#tab_container").on("click", "li", function() {
		var tabIdx = this.id.split("_")[1];
		moveTab(tabIdx);
		hideObject();
		$('audio').each(function() {
			this.pause(); // Stop playing
			// this.currentTime = 0; Reset time
		});
	});

	$(".ui-controlgroup").on("click", "a", function() {
		var clickIdx = this.id.split("_")[1];
		audioPlayToggle(clickIdx);
	});

});

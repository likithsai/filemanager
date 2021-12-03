(function ($) {
	$.fn.loadScrollData = function (start, options) {
		var settings = $.extend({
			limit: 30,
			listingId: '',
			loadMsgId: '',
			ajaxUrl: '',
			loadingMsg: '<div style:"text-align:center;">Please Wait...!</div>',
			loadingSpeed: 10

		}, options);

		action = "inactive";

		$.ajax({
			method: "POST",
			data: {
				'getData': 'ok',
				'limit': settings.limit,
				'start': start
			},
			timeout: 10000,
			beforeSend: function(){
				$(settings.listingId).html('<div class="progress"><div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 0%;"></div></div>');
			},
			error: function(request, status, err) {
				alert("ERROR: " + request + status + err);
			},
			url: settings.ajaxUrl,
			success: function (data) {
				$(settings.listingId).append(data);
				if (data == '') {
					$(settings.loadMsgId).html('');
					action = 'active';
				} else {
					$(settings.loadMsgId).html(settings.loadingMsg);
					action = "inactive";
				}
			}
		});

		if (action == 'inactive') {
			action = 'active';
		}

		$(window).scroll(function () {
			if ($(window).scrollTop() + $(window).height() > $(settings.listingId).height() && action == 'inactive') {
				action = 'active';
				start = parseInt(start) + parseInt(settings.limit);
				setTimeout(function () {
					$.fn.loadScrollData(start, options);
				}, settings.loadingSpeed);
			}
		});

	};
}(jQuery));

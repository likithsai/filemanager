$(function($) {
    $.fn.paginationScroll = function(start, options) {
        loadData = true;
        var settings = $.extend({
            url: '',
            div: '',
            data: '',
            loadingDiv: '',
            limit: 20
        }, options);

        $.ajax({
            method: 'POST',
			beforeSend: function(){
				$(settings.loadingDiv).show();
			},
			error: function(request, status, err) {
				alert("ERROR: " + request + status + err);
			},
            data: {
                'getData': 'ok',
                'limit': settings.limit,
                'start': start
            },
            url: settings.url,
            success: function(data) {
                $(settings.loadingDiv).hide();
                $(settings.div).append(data);
                if(data.length !== 0) {
                    loadData = true;
                } else {
                    loadData = false;
                }
            }
        });

        $(window).scroll(function() {
            var position = $(window).scrollTop();
            var bottom = $(document).height() - $(window).height();
            
            if(position == bottom && loadData == true) {
                $(window).unbind('scroll');
                $.fn.paginationScroll(parseInt(settings.limit) + parseInt(start), options);
            }
        });
    }
} (jQuery));
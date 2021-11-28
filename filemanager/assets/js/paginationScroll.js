$(function($) {
    $.fn.paginationScroll = function(start, options) {
        loadData = true;
        var settings = $.extend({
            url: '',
            div: '',
            data: '',
            limit: 20
        }, options);

        $.ajax({
            method: 'POST',
            data: {
                'getData': 'ok',
                'limit': settings.limit,
                'start': start
            },
            url: settings.url,
            success: function(data) {
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
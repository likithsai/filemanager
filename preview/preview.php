<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Preview</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
    <style>
        * {
            font-family: 'Open Sans', sans-serif;
            margin: 0;
            box-sizing: border-box;
        }

        /* html {
            scroll-snap-type: y mandatory;
            -webkit-overflow-scrolling: touch;
        } */

        body {
            color: white;
            background-color: black;
            height: 100vh;
            display: grid;
            place-items: center;
        }

        video::-webkit-media-controls-fullscreen-button,
        /* video::-webkit-media-controls-mute-button, */
        video::-webkit-media-controls-volume-slider,
        video::-webkit-media-controls-overflow-menu-list-item {
            display: none !important;
        }

        /* video {
            scroll-snap-align: start;
        } */
        #result_data {
            max-width: 580px;
        }

        /* hide scrollbar */
        ::-webkit-scrollbar {
            width: 0;  /* Remove scrollbar space */
            background: transparent;  /* Optional: just make scrollbar invisible */
        }
        
        /* Optional: show position indicator in red */
        ::-webkit-scrollbar-thumb {
            background: #FF0000;
        }
    </style>
</head>

<body style="background-color: #000;">
    <div id="result_data" style="width: 100vw; height: 100vh; overflow-y: scroll; scroll-snap-type: y mandatory; -webkit-overflow-scrolling: touch;">
    </div>
    <script>
        $(function() {
            //  initial page count
            var pagecount = 0;
            var loadData = true;

            function postDataToServer(url) {
                $.ajax({
                    url: url,
                    type: 'POST',
                    data: {
                        page: pagecount
                    },
                    cache: false,
                    success: function(result) {
                        $("#result_data").append(result);
                        if (result.length !== 0) {
                            loadData = true;
                        } else {
                            loadData = false;
                        }
                    }
                });
            }

            //  execute this function at first
            if ($(window).scrollTop() >= $('#result_data').offset().top + $('#result_data').outerHeight() - window.innerHeight) {
                pagecount = parseInt(pagecount) + 1;
                postDataToServer('ajaxPreview.php');
            }

            $('#result_data').scroll(function() {
                //  pause all videos
                // $('video').each(function() {
                //     $(this).get(0).pause();
                // });

                if($(this).scrollTop() + $(this).innerHeight() >= $(this)[0].scrollHeight) {
                    pagecount = parseInt(pagecount) + 1;
                    postDataToServer('ajaxPreview.php');
                }
            });
        });
    </script>
</body>

</html>
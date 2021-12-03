<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
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

        html {
            scroll-snap-type: y mandatory;
        }

        body {
            color: white;
            background-color: black;
            height: 100vh;
            display: grid;
            place-items: center;
        }

        video::-webkit-media-controls-fullscreen-button,
        video::-webkit-media-controls-mute-button,
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
        
    </style>
</head>

<body style="background-color: #000;">
    <div id="result_data" style="width: 100vw; height: 100vh;">
        <!-- <div style="width: 100%; height: 100%; scroll-snap-align: start;">
            <div style="position: sticky; padding: 15px; left: 0; background: rgba(0,0,0,0.5); display: flex; align-items: center; justify-content: space-between; width: 100%;">
                <p style="font-size: 1em;">Sample Exaple</p>
                <div>
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="#fff" class="bi bi-tags" viewBox="0 0 16 16">
                        <path d="M2 2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.777.416L8 13.101l-5.223 2.815A.5.5 0 0 1 2 15.5V2zm2-1a1 1 0 0 0-1 1v12.566l4.723-2.482a.5.5 0 0 1 .554 0L13 14.566V2a1 1 0 0 0-1-1H4z" />
                        <path d="M8 4a.5.5 0 0 1 .5.5V6H10a.5.5 0 0 1 0 1H8.5v1.5a.5.5 0 0 1-1 0V7H6a.5.5 0 0 1 0-1h1.5V4.5A.5.5 0 0 1 8 4z" />
                    </svg>
                </div>
            </div>
            <video controls preload="auto" width="100%" height="90%">
                <source src="https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4">
            </video>
        </div> -->
        <!-- <div style="width: 100%; height: 100%; scroll-snap-align: start;">
            <div style="position: sticky; padding: 15px; left: 0; background: rgba(0,0,0,0.5); display: flex; align-items: center; justify-content: space-between; width: 100%;">
                <p style="font-size: 1em;">Sample Exaple</p>
                <div>
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="#fff" class="bi bi-tags" viewBox="0 0 16 16">
                        <path d="M2 2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.777.416L8 13.101l-5.223 2.815A.5.5 0 0 1 2 15.5V2zm2-1a1 1 0 0 0-1 1v12.566l4.723-2.482a.5.5 0 0 1 .554 0L13 14.566V2a1 1 0 0 0-1-1H4z" />
                        <path d="M8 4a.5.5 0 0 1 .5.5V6H10a.5.5 0 0 1 0 1H8.5v1.5a.5.5 0 0 1-1 0V7H6a.5.5 0 0 1 0-1h1.5V4.5A.5.5 0 0 1 8 4z" />
                    </svg>
                </div>
            </div>
            <video controls preload="auto" width="100%" height="90%">
                <source src="https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4">
            </video>
        </div> -->
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

            if (document.body.scrollHeight - $(this).scrollTop() <= $(this).height()) {
                pagecount = parseInt(pagecount) + 1;
                postDataToServer('ajaxPreview.php');
            }

            $(window).scroll(function() {
                //  pause all videos
                $('video').each(function() {
                    $(this).get(0).pause();
                });

                if (document.body.scrollHeight - $(this).scrollTop() <= $(this).height() && loadData == true) {
                    pagecount = parseInt(pagecount) + 1;
                    postDataToServer('ajaxPreview.php');
                }
            });
        });
    </script>
</body>

</html>
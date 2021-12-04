<?php
    //  https://www.studentstutorial.com/ajax/pagination

    include 'includes/config.php';

    if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
        if(isset($_POST)) {
            $page = $_POST['page'];
            $type = $_POST['type'];
            $limit = 10;
            $start_from = ($page-1) * $limit;

            switch(strtolower($type)) {
                case 'video':
                    $result = $db->query("SELECT * FROM tbl_files WHERE file_type='video' ORDER BY file_creationdate DESC LIMIT $start_from, $limit");

                    foreach($result as $v) {
                        echo '<div style="width: 100%; height: 100%; scroll-snap-align: start;">
                                <div style="position: sticky; padding: 15px; left: 0; background: rgba(0,0,0,0.5); display: flex; align-items: center; justify-content: space-between; width: 100%;">
                                    <p style="font-size: 1em;">' . basename($v['file_path']) . '</p>
                                    <div>
                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="#fff" class="bi bi-tags" viewBox="0 0 16 16">
                                            <path d="M2 2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.777.416L8 13.101l-5.223 2.815A.5.5 0 0 1 2 15.5V2zm2-1a1 1 0 0 0-1 1v12.566l4.723-2.482a.5.5 0 0 1 .554 0L13 14.566V2a1 1 0 0 0-1-1H4z"/>
                                            <path d="M8 4a.5.5 0 0 1 .5.5V6H10a.5.5 0 0 1 0 1H8.5v1.5a.5.5 0 0 1-1 0V7H6a.5.5 0 0 1 0-1h1.5V4.5A.5.5 0 0 1 8 4z"/>
                                        </svg>
                                    </div>
                                </div>
                                <video controls="true" preload="auto" width="100%" height="90%" loop playsinline playsInline>
                                    <source src="' . $v['file_path'] . '">
                                </video>
                            </div>';
                    }
                    break;

                case 'image':
                    $result = $db->query("SELECT * FROM tbl_files WHERE file_type='image' ORDER BY file_creationdate DESC LIMIT $start_from, $limit");

                    foreach($result as $v) {
                        echo '<div style="width: 100%; height: 100%; scroll-snap-align: start;">
                                <div style="position: sticky; padding: 15px; left: 0; background: rgba(0,0,0,0.5); display: flex; align-items: center; justify-content: space-between; width: 100%;">
                                    <p style="font-size: 1em; white-space: nowrap;  width: 70%;  overflow: hidden; text-overflow: ellipsis;">' . basename($v['file_path']) . '</p>
                                    <div>
                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="#fff" class="bi bi-tags" viewBox="0 0 16 16">
                                            <path d="M2 2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.777.416L8 13.101l-5.223 2.815A.5.5 0 0 1 2 15.5V2zm2-1a1 1 0 0 0-1 1v12.566l4.723-2.482a.5.5 0 0 1 .554 0L13 14.566V2a1 1 0 0 0-1-1H4z"/>
                                            <path d="M8 4a.5.5 0 0 1 .5.5V6H10a.5.5 0 0 1 0 1H8.5v1.5a.5.5 0 0 1-1 0V7H6a.5.5 0 0 1 0-1h1.5V4.5A.5.5 0 0 1 8 4z"/>
                                        </svg>
                                    </div>
                                </div>
                                <picture>
                                    <img src="' . $v['file_path'] . '" style="width: 100%; height: 100%; object-fit: contain;" loading="lazy" >
                                </picture>
                            </div>';
                    }
                    break;

                case 'pdf':
                    break;
            }
        }
    }
?>
<?php
    include 'includes/config.php';
    $count = 0;

    if(isset($_POST['getData']) and $_POST['getData']=="ok") {
        $offset  = (int)$_POST['start'];
        $limit = (int)$_POST['limit'];
        $type = $_GET['type'];
        
        $result = $db->query("SELECT * FROM tbl_files WHERE file_type='$type' ORDER BY file_creationdate DESC LIMIT $offset, $limit");
        
        switch(strtolower($type)) {
            case 'image':
                foreach($result as $v) {
                    echo '<div class="col-lg-2 col-md-4 col-sm-6 col-6 p-1 rounded"><img class="bd-placeholder-img card-img-top shadow-sm" src="' . $v['file_path'] . '" width="200" height="200" loading="lazy" /></div>';
                }
                break;

            case 'video':
                foreach($result as $v) {
                    echo '<div class="col-lg-3 col-md-4 col-sm-6 col-12 p-1 rounded bg-white shadow-sm">
                            <video controls="hidden" width="100%" height="100%" preload="metadata">
                                <source src="' . $v['file_path'] . '#t=20">
                            </video>
                        </div>';
                }
                break;

            case 'videopreview':
                foreach($result as $v) {
                    echo '<video controls width="100%" height="100%" style="width: 100vw; height: 100vh;">
                            <source src="' . $v['file_path'] . '#t=20">
                        </video>';
                }
                break;
        }
    }
?>
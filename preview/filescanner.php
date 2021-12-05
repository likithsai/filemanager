<?php
    function getDirContents($dir, $filter = '', &$results = array()) {
        $files = scandir($dir);

        foreach($files as $key => $value){
            $path = realpath($dir.DIRECTORY_SEPARATOR.$value); 

            if(!is_dir($path)) {
                if(empty($filter) || preg_match($filter, $path)) {
                    $results[] = $path;
                }
            } elseif($value != "." && $value != "..") {
                getDirContents($path, $filter, $results);
            }
        }

        return $results;
    } 

    var_dump(getDirContents('../'));
?>
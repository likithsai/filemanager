<?php

    //  check if path is specified in the URL, if not use the default path
    $path = (isset($_GET['path'])) ? urldecode($_GET['path']) : "../";

    //  function to recursively scan files in the path
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

    if(isset($_GET['cmd'])) {
        switch($_GET['cmd']) {
            case 'getFiles' :
                var_dump(getDirContents($path));
                break;

            case 'findDuplicates':
                echo "find duplicates<br />path: " . $path;
                break;

            default:
                echo "Command not found!";
                break;
        }
    } else {
        var_dump(getDirContents('../'));
    }

?>
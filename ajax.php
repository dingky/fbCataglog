<?php

include('./includes/conn.php');

/**
 * Get province call
 *
 *
 */
if (isset($_GET['get-province'])) {
    $selectedPro = mysql_real_escape_string($_GET['pro']);

    $sqlCity = "select  city,rate from provinces where province='".mysql_real_escape_string(strtolower($selectedPro))."' order by city asc";
    $rsCity= $conn->GetArray($sqlCity);

    if (count($rsCity) > 0) {
        foreach ($rsCity as $k => $v) {
            $data[$k] = array('city'=>utf8_encode($v['city']),'rate'=>utf8_encode($v['rate']));
        }

        header("Content-type: application/json");
        print json_encode($data);
    }
}



?>
 

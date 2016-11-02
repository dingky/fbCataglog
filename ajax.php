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
        echo json_encode($data);
        exit;
    }
}

/**
 * Track user call
 *
 *
 */
if (isset($_GET['track-user'])) {
    $_ip = addslashes(base64_decode($_POST['ip']));
    $_country_code = addslashes(base64_decode($_POST['country_code']));
    $_country_name = addslashes(base64_decode($_POST['country_name']));
    $_region_code = addslashes(base64_decode($_POST['region_code']));
    $_region_name = addslashes(base64_decode($_POST['region_name']));
    $_city = addslashes(base64_decode($_POST['city']));
    $_zip = addslashes(base64_decode($_POST['zip']));
    $_time_zone = addslashes(base64_decode($_POST['time_zone']));
    $_lat = addslashes(base64_decode($_POST['lat']));
    $_long = addslashes(base64_decode($_POST['long']));
    $_mc = addslashes(base64_decode($_POST['mc']));

    $sql = "INSERT INTO visitors(ip, country_code, country_name, region_code, region_name, city, zip_code, time_zone, latitude, longitude, metro_code)
                        VALUES('$_ip', '$_country_code', '$_country_name', '$_region_code', '$_region_name', '$_city', '$_zip', '$_time_zone', $_lat, $_long, $_mc)";

    $r = $conn->Execute($sql);
    $return = array('sucess' => false);

    if ($r) {
        $return['sucess'] = true;
    }

    header("Content-type: application/json");
    echo json_encode($return);
    exit;
}

?>
 

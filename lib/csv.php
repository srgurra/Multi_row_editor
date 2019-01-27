<?php

//if ($_POST['action'] == 'add') {
//    $line = isset($_POST['data'][0]) ? $_POST['data'][0] : '';
//    if ($line != '') {
//        addCsvRow($line);
//    }
//} else if ($_POST['action'] == 'remove') {
//    
//}

function addCsvRow($line) {
    unset($line['email']);
    unset($line['age']);
    $id = explode('_', $line['DT_RowId']);
    $line['DT_RowId'] = $id[1];
    $line = preg_replace('/(^|;)"([^"]+)";/','$1$2;',$line);
    $handle = fopen("../employee.csv", "a");
    fputcsv($handle, $line);
    fclose($handle);
}

function deleteCsvRow($id) {
    $data = explode("\n", file_get_contents("../employee.csv"));
    unlink("../employee.csv");
    foreach ($data as $row) {
        $row_data = explode(",", $row);
        if (count($row_data) > 0 && $row_data[0] != '' && $row_data[0] != $id) {
            $row_data = Array
                (
                'DT_RowId' => 'row_' . $row_data[0],
                'first_name' => str_replace('"', '', $row_data[1]),
                'last_name' => str_replace('"', '', $row_data[2]),
                'position' => str_replace('"', '', $row_data[3]),
                'email' => '',
                'office' => str_replace('"', '', $row_data[4]),
                'extn' => str_replace('"', '', $row_data[5]),
                'age' => '',
                'salary' => str_replace('"', '', $row_data[6]),
                'start_date' => str_replace('"', '', $row_data[7])
            );
            addCsvRow($row_data);
        }
    }
}

function updateCsvRow($id, $row) {
    deleteCsvRow($id);
    addCsvRow($row);
}

?>
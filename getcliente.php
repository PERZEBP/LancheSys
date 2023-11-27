<?php

include("database.php");

$result = $mysqli -> query("SELECT * FROM cliente");

while ($row = $result->fetch_row()) {
    echo "{$row[1]}";
}

?>
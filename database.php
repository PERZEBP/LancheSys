<?php

$mysqli = new mysqli("localhost","root","","lanche_sys");

if ($mysqli -> connect_errno) {
    echo "Não foi possível conectar ao banco de dados";
}


?>
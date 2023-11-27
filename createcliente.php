<?php

include("database.php");

$nome = $_POST["nome"];
$cpf = $_POST["cpf"];
$endereco = $_POST["endereco"];
$telefone = $_POST["telefone"];
$numero = $_POST["numero"];
$complemento = $_POST["complemento"];

$mysqli->query("INSERT INTO cliente (nome,cpf,telefone,endereco,numero,complemento) VALUES ($nome,$cpf,$telefone,$endereco,$numero,$complemento);");

?>
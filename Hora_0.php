<?php
$data=new DateTime();

//$data->format('d/m/y H:i:s').PHP_EOL;
$intervalo=new DateInterval('PT5M');
$data->add($intervalo);

var_dump($data);
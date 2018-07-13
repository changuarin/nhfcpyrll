<?php
try 
{
	$bdd = new PDO('mysql:host=localhost;dbname=nhfc_payroll_db;charset=utf8', 'root', '');
}
catch(Exception $e)
{
        die('Erreur : '.$e->getMessage());
}

<?php

include('konekcija.php');
$pageLimit = 10;

// FINDING page number //
$upit = 'SELECT COUNT(id) AS brojKorisnika FROM korisnici';
$primer = $konekcija->prepare($upit);
$rez = $primer->execute();

$broj = $primer->fetch(PDO::FETCH_OBJ);
$employeNumber = (int)$broj->brojKorisnika;

$howMuchPages = ceil($employeNumber / $pageLimit);
// FOUND page number in $howMuchPages

$page = isset($_GET['page']) ? $_GET['page'] : 1;
$start = ($page - 1) * $pageLimit;
$upit = 'SELECT * FROM korisnici LIMIT ?, ?';

$konekcija->setAttribute(PDO::ATTR_EMULATE_PREPARES, FALSE);
$primer = $konekcija->prepare($upit);
$rez = $primer->execute(array($start,$pageLimit));

if($rez){
  $korisnici = $primer->fetchAll(PDO::FETCH_OBJ);
}

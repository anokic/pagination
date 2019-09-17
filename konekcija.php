<?php

  try {
    $konekcija = new PDO("mysql:host=localhost;dbname=pagination","root","");
  }
  catch (PDOException $e){
    echo $e->getMessage();
  }

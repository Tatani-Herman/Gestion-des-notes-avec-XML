<?php 

//This file may be deleted later 
//It shows a usecase of Excel2Xml ; a class, we will be using in our project for converting Excel File to SimpleXml


//NB : First argument is the class(GINF2,...), the second one is the category(eleve, professeur,note,module)
//Respect the format and be sure that the corresponding data exist in "resource" folder
require_once "ExcelToXml.php";

$App=new ExcelToXml();

$xml=$App->Excel2Xml("GINF2","eleve");
var_dump($xml);


?>
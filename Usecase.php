<?php 

//This file may be deleted later 
//It shows a usecase of Excel2Xml ; a class, we will be using in our project for converting Excel File to SimpleXml


//NB : First argument is the class(GINF2,...), the second one is the category(eleve, professeur,note,module)
//Respect the format and be sure that the corresponding data exist in "resource" folder


require_once "ExcelToXml.php";
$array=array(
    "GINF2"=>"students",
    "professeurs"=>"professeurs",
    "GINF2"=>"notes",
    "GINF2"=>"modules"

);

$App=new ExcelToXml();

foreach ($array as $key => $value) {
    $class=$key;
    $categorie=$value;
    $xml=$App->Excel2Xml($class,$categorie);
    $dom = new DOMDocument("1.0");
    $imp = new DOMImplementation;
    $dom->preserveWhiteSpace = false;
    $dom->formatOutput = true;
    $dom->loadXML($xml);

    $ginf2 = $dom->getElementsByTagName($class)->item(0);

    $dom->insertBefore($imp->createDocumentType($categorie, 
    null, 
    $categorie.'.dtd'),$ginf2);
    $dom->save("xmlResources/".$categorie."_".$class.".xml");

}
/*
$class="professeurs";
$categorie="professeurs";
$xml=$App->Excel2Xml($class,$categorie);
//var_dump($xml);
$dom = new DOMDocument("1.0");
$imp = new DOMImplementation;
$dom->preserveWhiteSpace = false;
$dom->formatOutput = true;
$dom->loadXML($xml);

$ginf2 = $dom->getElementsByTagName($class)->item(0);

$dom->insertBefore($imp->createDocumentType($categorie, 
null, 
$categorie.'.dtd'),$ginf2);
//$dom->save($categorie."_'.$class.".xml");


echo "<pre>".htmlentities($dom->saveXML())."</pre>";
*/

?>
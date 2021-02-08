<?php 

//This file may be deleted later 
//It shows a usecase of Excel2Xml ; a class, we will be using in our project for converting Excel File to SimpleXml


//NB : First argument is the class(GINF2,...), the second one is the category(eleve, professeur,note,module)
//Respect the format and be sure that the corresponding data exist in "resource" folder


require_once "ExcelToXml.php";
$arrayClass=array("AP1","AP2","G3EI1","G3EI2","G3EI3","GIL1","GIL2","GIL3",
"GINF1","GINF2","GINF3","GSEA1","GSEA2","GSEA3","GSTR1","GSTR2","GSTR3");
$arrayCat=array(
    "student",
    "note",
    "notes_apr",
   "module"
);

$App=new ExcelToXml();

foreach ($arrayClass as $class) {
    foreach($arrayCat as $categorie)
    {
    $xml=$App->Excel2Xml($class,$categorie);
    $dom = new DOMDocument("1.0","utf-8");
    $imp = new DOMImplementation;
    $dom->preserveWhiteSpace = false;
    $dom->formatOutput = true;
    $dom->loadXML($xml);

    $ginf2 = $dom->getElementsByTagName($categorie.'s')->item(0);

    //Include XSD
    if ($categorie=="notes_apr") {
        $ginf2 = $dom->getElementsByTagName('notes')->item(0);
        //si ton editeur souligne la fonction setAttributeNS , ignore
        $ginf2->setAttributeNS(
           
            // namespace
            'http://www.w3.org/2001/XMLSchema-instance',
            // attribute name including namespace prefix
            'xsi:noNamespaceSchemaLocation',
            // attribute value
            'C://xamp/htdocs/Gestion-des-notes-avec-XML/validationResources/notes.xsd'
           );
        $dom->save("xmlResources/notes_".$class."_apres.xml");
       
    }
    elseif ($categorie=="note") {
        $ginf2->setAttributeNS(
            
            // namespace
            'http://www.w3.org/2001/XMLSchema-instance',
            // attribute name including namespace prefix
            'xsi:noNamespaceSchemaLocation',
            // attribute value
            'C://xamp/htdocs/Gestion-des-notes-avec-XML/validationResources/'.$categorie.'s.xsd'
           );
        $dom->save("xmlResources/notes_".$class."_avant.xml");
       
    }
    else {
        $ginf2->setAttributeNS(
            
            // namespace
            'http://www.w3.org/2001/XMLSchema-instance',
            // attribute name including namespace prefix
            'xsi:noNamespaceSchemaLocation',
            // attribute value
            'C://xamp/htdocs/Gestion-des-notes-avec-XML/validationResources/'.$categorie.'s.xsd'
           );
        $dom->save("xmlResources/".$categorie."s_".$class.".xml");
        
    }
  
  
  //Inlude DTD
    /*
    if ($categorie=="notes_apr") {
        $ginf2 = $dom->getElementsByTagName('notes')->item(0);

        $dom->insertBefore($imp->createDocumentType('notes', 
        null, 
        'C://xamp/htdocs/Gestion-des-notes-avec-XML/validationResources/notes.dtd'),$ginf2);
        $dom->save("xmlResources/notes_".$class."_apres.xml");
       
    }
    elseif ($categorie=="note") {
        $dom->insertBefore($imp->createDocumentType($categorie.'s', 
        null, 
        'C://xamp/htdocs/Gestion-des-notes-avec-XML/validationResources/'.$categorie.'s.dtd'),$ginf2);
        $dom->save("xmlResources/notes_".$class."_avant.xml");
       
    }
    else {
        $dom->insertBefore($imp->createDocumentType($categorie.'s', 
    null, 
    'C://xamp/htdocs/Gestion-des-notes-avec-XML/validationResources/'.$categorie.'s.dtd'),$ginf2);
        $dom->save("xmlResources/".$categorie."s_".$class.".xml");
        
    }*/
}
}


header('Location:dashboard.php');
exit();
?>
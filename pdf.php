<?php
/*require("HTTPPost.php");

// input xml data
$xml2=simplexml_load_file ("xmlResources/carte.xml");
// make request to FOP server
$httppost=new HTTPPost();
$pdfdata=$httppost->post_request("localhost","8087","C:\xampp\htdocs\Gestion-des-notes-avec-XML\xsl_foFiles\carte.fo",$xml2);

// save PDF output to a PDF file
$myFile = "testFile.pdf";
$fh = fopen($myFile, 'w') or die("can't open file");
fwrite($fh, $pdfdata);
fclose($fh);*/


// Stocker le nom du fichier dans une variable
$file = 'carte.pdf'; 
    
// Type de contenu dd l'en-tête
header('Content-type: application/pdf'); 
  
header('Content-Disposition: inline; filename="' . $file . '"'); 
  
header('Content-Transfer-Encoding: binary'); 
  
header('Accept-Ranges: bytes'); 
  
// Lire le fichier
@readfile($file); 


/*function forcerTelechargement($nom, $situation, $poids)
{
  header('Content-Type: application/octet-stream');
  header('Content-Length: '. $poids);
  header('Content-disposition: attachment; filename='. $nom);
  header('Pragma: no-cache');
  header('Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0');
  header('Expires: 0');
  readfile($situation);
  exit();
}
forcerTelechargement('carte.pdf', 'carte.pdf',filesize('carte.pdf'));*/

?>
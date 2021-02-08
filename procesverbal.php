<?php
require("HTTPPost.php");
$_GET['class']='GINF2';
if(isset($_GET['class']))
{
    $doc = new DOMDocument();
    $doc->load('xmlResources/notes_'.$_GET['class'].'_apres.xml');
  

  $studentsXml=$doc->saveXML();
  $httppost=new HTTPPost();
 $pdfdata=$httppost->post_request("localhost","8087","C://xamp/htdocs/Gestion-des-notes-avec-XML/xsl_foFiles/releve_classe.xsl",$studentsXml);

    // save PDF output to a PDF file
    $myFile = $_GET['class']."_procesverbal.pdf";
    $fh = fopen($myFile, 'w') or die("can't open file");
    fwrite($fh, $pdfdata);
    fclose($fh);
   //Display PDF
    header('Content-type: application/pdf'); 
  
    header('Content-Disposition: inline; filename="' . $myFile . '"'); 
      
    header('Content-Transfer-Encoding: binary'); 
      
    header('Accept-Ranges: bytes'); 
      
    // Read the file 
    @readfile($myFile); 
    //DELETE PDF
    unlink($myFile);
    }
else{
    //redirect to dashboard
    header('Location:/dashboard.php');
}
?>
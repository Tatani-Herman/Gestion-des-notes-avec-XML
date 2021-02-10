<?php
require("HTTPPost.php");
$_GET['class']='GINF2';
if(isset($_GET['class']))
{
    $doc = new DOMDocument();
    $doc->load('xmlResources/emploidutemps_'.$_GET['class'].'.xml');

  $emploiXml=$doc->saveXML();
  $httppost=new HTTPPost();
  $pdfdata=$httppost->post_request("localhost","8087","C://xampp/htdocs/Gestion-des-notes-avec-XML/xsl_foFiles/emploidutemps.xsl",$emploiXml);

    // save PDF output to a PDF file
    $myFile = $_GET['class']."_".$_GET['cne']."_attestation.pdf";
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
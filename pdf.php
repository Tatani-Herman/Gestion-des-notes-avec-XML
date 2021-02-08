<?php
require("HTTPPost.php");

if(isset($_GET['class'])&& isset($_GET['cne']))
{
    $doc = new DOMDocument();
    $doc->load('xmlResources/students_'.$_GET['class'].'.xml');
    $xpath = new DOMXPath($doc);
    $query="//students/student[CNE=".$_GET['cne']."]";
    $entries = $xpath->query($query);
    if ($entries->length==0) {
        header('Location:dashboard.php?error=cneinexistant');
        exit();
     } 
   $output = '';
   $i=0;
   $result= new DOMDocument;
   while ( $node = $entries->item($i) ) {
       // import node
       $domNode = $result->importNode($node, true);
       // append node
       $result->appendChild($domNode);
       $i++;
   }

  $studentXml=$result->saveXML();
   /* studentXml Contient un xml de la forme :
        <?xml version="1.0"?>
    <student>
    <firstname>TATANI BOUTCHUENG</firstname>
    <lastname>HERMAN JOEL</lastname>
    <CNE>17008402</CNE>
    </student>
  */
  $httppost=new HTTPPost();
   $pdfdata=$httppost->post_request("localhost","8087","C://xamp/htdocs/Gestion-des-notes-avec-XML/xsl_foFiles/carte.xsl",$studentXml);

    // save PDF output to a PDF file
    $myFile = $_GET['class']."_".$_GET['cne'].".pdf";
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
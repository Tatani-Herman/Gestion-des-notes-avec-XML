<?php $titre="Resultats"; ?>
<?php require 'sidebar.php'; ?>
    <!--sidebar end-->

    <div class="main_content">
      <div class="header">
      <form  action="resultat.php" method="GET">
      <div class="input-group">
  <select class="custom-select" id="inputGroupSelect04" name="choix">
    <option value="">Choisir resultats avant ou après rattrapage</option>
    <option value="1">Avant rattrapage</option>
    <option value="2">Après rattrapage</option>
  </select>
  <div class="input-group-append">
    <input type="submit" class="btn btn-outline-secondary" name="OK">
  </div>
</div>
</form>
      </div>
      <div class="info">

<?php

       if(isset($_GET['OK'])){
           if($_GET['choix']==1){
             echo "<h3> Resultat avant rattrapage du module GINF31 </h3>";
            $xp = new XsltProcessor();
            // Créez un document DOM et charger la feuille de style XSL
            $xsl = new DomDocument;
            $xsl->load('xslfiles/resultats.xsl');
            // importer la feuille de style XSL dans le processus XSLT
            $xp->importStylesheet($xsl);
            // Créer un document DOM et charger les données XML
            $xml_doc = new DomDocument;
            $xml_doc->load('xmlResources/notes_GINF2_avant.xml');
             // Transformer du XML en HTML à l'aide du fichier XSL
             if ($html = $xp->transformToXML($xml_doc)) {
                echo $html;
            } else {
                trigger_error('La transformation XSL a échoée.', E_USER_ERROR);
            }
           }
           else {
            echo "<h3> Resultat apres rattrapage du module GINF31</h3>";
            $xp = new XsltProcessor();
            // Créez un document DOM et charger la feuille de style XSL
            $xsl = new DomDocument;
            $xsl->load('xslfiles/resultats.xsl');
            // importer la feuille de style XSL dans le processus XSLT
            $xp->importStylesheet($xsl);
            // Créer un document DOM et charger les données XML
            $xml_doc = new DomDocument;
            $xml_doc->load('xmlResources/notes_GINF2_apres.xml');
             // Transformer du XML en HTML à l'aide du fichier XSL
             if ($html = $xp->transformToXML($xml_doc)) {
                echo $html;
            } else {
                trigger_error('La transformation XSL a échoée.', E_USER_ERROR);
            }
           }
       }



?>
</div>
</div>
  </div>
  </body>
</html>
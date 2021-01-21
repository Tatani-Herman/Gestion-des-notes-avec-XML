<?php
require 'vendor/autoload.php';  
use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Spreadsheet;


//See the use case for better undestanding of how it works
//The main method is Excel2Xml() : it takes $class( ex: GINF2 ) and $categorie(ex : eleve/professeur/note/module)
//as argument and return a SimpleXml instance
class ExcelToXml 
{

    public function Excel2Xml($class,$categorie)
    {
    $objReader = IOFactory::createReader('Xlsx');
        $file="resources/".$class."/".$categorie.".xlsx";
        $objPHPExcel = $objReader->load($file);
       
    
        $index = 0;
        $data = Array();
        foreach ($objPHPExcel->getWorksheetIterator() as $worksheet) {
    
            $objPHPExcel->setActiveSheetIndex($index);
            
            $sheetData = $worksheet->toArray(null, true, true, true);
            
            $result = Array();
            $keys = $sheetData[1];
            for ($i = 2; $i < count($sheetData); $i++) {
                $rowValue = Array();
                $row = $sheetData[$i];
                foreach($row as $key=>$value) {
                    if ($keys[$key] != "") {
                        $rowValue[$keys[$key]] = $value;
                    }
                }
                for ($j = 0; $j < count($row); $j++) {
                    
                }
                $result[] = $rowValue;
            }
            
            $data[str_replace(array("-"," "), "_", $worksheet->getTitle())] = $result;
            $index++;
        }
        
        $xml = $this->array2xml($data, $class,$categorie,false);
        return $xml;

    }

    private function array2xml($array,$root,$categorie,$xml = false){

        
        
        if($xml === false){
            $base='<'.$root.'/>';
            $xml = new SimpleXMLElement($base);
        }
        foreach($array as $key => $value){
            if(is_array($value)){
                if( is_numeric($key) ){
                    $key = $categorie; 
                }
                $this->array2xml($value,$key,$categorie,$xml->addChild($key));
            } else {
               
                    if($value){
                        $xml->addChild($key, htmlspecialchars($value));
                    }
            }
        }
    
        //return $xml->asXML();
        return $xml;
    }

}


?>
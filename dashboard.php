<?php $titre="Dashboard"; ?>
<?php require 'sidebar.php'; ?>
    <!--sidebar end-->

  <div class="main_content">
      <div class="header">
        <h3>Bienvenue sur votre tableau de bord chèr(e) Admin</h3>
      </div>
    <div class="info">
     <div> Vous pouvez effectuez les opérations suivantes grace à cette plateforme </div>
      <div class="list-group">
  
              <a href="resultat.php" class="list-group-item list-group-item-action list-group-item-primary">Consulter les résultats du modules programmation orientée objet & XML</a>
              <a href="#"   class="list-group-item list-group-item-action list-group-item-secondary">Générer les cartes d'étudiant</a>
              <div>
              <form action="pdf.php" method="get">
              <label for="Class">Choisissez une classe:</label>
                    <select name="class" id="Class">
                      <option value="GINF1">GINF1</option>
                      <option value="GINF2">GINF2</option>
                      <option value="GINF3">GINF3</option>
                      <option value="GIL1">GIL1</option>
                      <option value="GIL1">GIL2</option>
                      <option value="GIL1">GIL3</option>
                    </select>
                    <label for="cne">Entrer le CNE:</label>
                    <input type="number" id="cne" name="cne">
                    <input type="submit" class="btn btn-outline-secondary" name="sub">
                </form>
                </div>
              <a href="#" class="list-group-item list-group-item-action list-group-item-success">Générer des emploi du temps</a>
              <a href="#" class="list-group-item list-group-item-action list-group-item-danger">Générer les relever de notes des étudiants de GINF2</a>
              <a href="#" class="list-group-item list-group-item-action list-group-item-warning">Générer le procès verbal de la filière GINF2</a>
              <a href="#" class="list-group-item list-group-item-action list-group-item-info">Générer des attestation de réussite</a>
              <a href="#" class="list-group-item list-group-item-action list-group-item-light">Elaborer des liste de groupe de TPs</a>
              <a href="#" class="list-group-item list-group-item-action list-group-item-dark">This is a dark list group item</a>
     </div>
    </div>
</div>
  </div>
  </body>
  
</html>
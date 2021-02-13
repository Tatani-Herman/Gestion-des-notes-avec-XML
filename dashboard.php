<?php $titre = "Dashboard"; ?>
<?php require 'sidebar.php'; ?>

<div class="main_content">
  <div class="header">
    <h3>Bienvenue sur votre tableau de bord chèr(e) Admin</h3>
  </div>

  <div class="info">
    <div> Vous pouvez effectuez les opérations suivantes grace à cette plateforme </div>
    <?php
    if (isset($_GET['error'])) {
      if ($_GET['error'] == "cneinexistant")
        echo "<small>CNE INEXISTANT DANS CETTE CLASSE, Redemandez à l'éleve sa classe!</small>";
    }

    ?>
    <div class="container">
      <div class="row align-items-start">

        <div class="col">
          <div class="card text-white bg-success mb-3" style="width: 18rem; height :18rem;">
            <div class="card-body">
              <h5 class="card-title">Consulter les résultats d'un Module de GINF2</h5>
              <a href="resultat.php" class="btn btn-danger">voir</a>
            </div>
          </div>
        </div>

        <div class="col">
          <div class="card text-white bg-danger mb-3" style="width: 18rem; height :18rem;">
            <div class="card-body">
              <h5 class="card-title">Mettre à jour les données</h5>
              <a href="usecase.php" class="btn btn-warning">update</a>
            </div>
          </div>
        </div>


        <div class="col">
          <div class="card text-dark bg-warning mb-3" style="width: 18rem; height :18rem;">
            <div class="card-body">
              <h5 class="card-title">Générer les releves de notes des étudiants de GINF2</h5>
              <form action="generateurpdf/releve.php" method="GET">
                <label for="cne">Entrer le CNE( de 330 à 377):</label>
                <input type="number" id="cne" name="cne">
                <input type="submit" class="btn btn-primary" name="sub">
              </form>
            </div>
          </div>
        </div>
      </div>

      <div class="row align-items-start">


        <div class="col">
          <div class="card text-white bg-primary mb-3" style="width: 18rem; height :18rem;">
            <div class="card-body">
              <h5 class="card-title">Générer le procès verbal de la filière GINF2</h5>
              <form action="generateurpdf/procesverbal.php" method="GET">
                <select name="choix" id="choix">
                  <option value="1">Avec les moyennes des élèves</option>
                  <option value="2">Sans les moyennes des élèves</option>
                </select>
                <input type="submit" class="btn btn-light" name="sub">
              </form>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card text-dark bg-light mb-3" style="width: 18rem; height :18rem;">
            <div class="card-body">
              <h5 class="card-title">Générer des attestation de réussite des étudiants de GINF2</h5>
              <form action="generateurpdf/attestation.php" method="GET">
                <label for="cne">Entrer le CNE( de 330 à 377):</label>
                <input type="number" id="cne" name="cne">
                <input type="submit" class="btn btn-dark" name="sub">
              </form>
            </div>
          </div>
        </div>


        <div class="col">
          <div class="card text-white bg-dark mb-3" style="width: 18rem; height :18rem;">
            <div class="card-body">
              <h5 class="card-title">Générer des emploi du temps</h5>
              <form action="generateurpdf/emploidutemps.php" method="get">
                <label for="Class">Choisissez une periode:</label>
                <select name="periode" id="periode">
                  <option value="4eme">4ieme semaine</option>
                  <option value="avant">Avant CC</option>
                  <option value="apres">Apres CC</option>
                </select>
                <input type="submit" class="btn btn-info" name="sub">
              </form>
            </div>
          </div>
        </div>


      </div>


      <div class="row align-items-start">

        <div class="col">
          <div class="card text-dark bg-info mb-3" style="width: 18rem; height :18rem;">
            <div class="card-body">
              <h5 class="card-title">Générer les cartes d'étudiant </h5>
              <form action="generateurpdf/carte.php" method="GET">
                <label for="Class">Choisissez une classe:</label>
                <select name="class" id="Class">
                  <option value="AP1">AP1</option>
                  <option value="AP2">AP2</option>
                  <option value="GINF1">GINF1</option>
                  <option value="GINF2">GINF2</option>
                  <option value="GINF3">GINF3</option>
                  <option value="GIL1">GIL1</option>
                  <option value="GIL2">GIL2</option>
                  <option value="GIL3">GIL3</option>
                  <option value="GSTR1">GSTR1</option>
                  <option value="GSTR2">GSTR2</option>
                  <option value="GSTR3">GSTR3</option>
                  <option value="GSEA1">GSEA1</option>
                  <option value="GSEA2">GSEA2</option>
                  <option value="GSEA3">GSEA3</option>
                  <option value="G3EI1">G3EI1</option>
                  <option value="G3EI2">G3EI2</option>
                  <option value="G3EI3">G3EI3</option>
                </select>

                <label for="cne">Entrer le CNE:</label>
                <input type="number" id="cne" name="cne">
                <input type="submit" class="btn btn-success" name="sub">
              </form>
            </div>
          </div>
        </div>



        <div class="col">
          <div class="card text-white bg-success mb-3" style="width: 18rem; height :18rem;">
            <div class="card-body">
              <h5 class="card-title">Générer les fichiers XML des listes de groupes</h5>
              <a href="generate_liste_groupe.php" class="btn btn-danger">Génerer</a>
            </div>
          </div>
        </div>


        <div class="col">
          <div class="card text-white bg-danger mb-3" style="width: 18rem; height :18rem;">
            <div class="card-body">
              <h5 class="card-title">Afficher sous format PDF les listes de groupes </h5>
              <form action="generateurpdf/listeGroupe.php" method="GET">
                <label for="Class">Choisissez une classe:</label>
                <select name="class" id="Class">
                  <option value="AP1">AP1</option>
                  <option value="AP2">AP2</option>
                  <option value="GINF1">GINF1</option>
                  <option value="GINF2">GINF2</option>
                  <option value="GINF3">GINF3</option>
                  <option value="GIL1">GIL1</option>
                  <option value="GIL2">GIL2</option>
                  <option value="GIL3">GIL3</option>
                  <option value="GSTR1">GSTR1</option>
                  <option value="GSTR2">GSTR2</option>
                  <option value="GSTR3">GSTR3</option>
                  <option value="GSEA1">GSEA1</option>
                  <option value="GSEA2">GSEA2</option>
                  <option value="GSEA3">GSEA3</option>
                  <option value="G3EI1">G3EI1</option>
                  <option value="G3EI2">G3EI2</option>
                  <option value="G3EI3">G3EI3</option>
                </select>
                <input type="submit" class="btn btn-warning" name="sub">
              </form>
            </div>
          </div>
        </div>

        

      </div>
    </div>
  </div>

</div>
</div>




</body>

</html>
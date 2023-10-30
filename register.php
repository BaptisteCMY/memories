<?php require_once("utils/common.php") ?>
<!DOCTYPE html>
<html lang="fr">
<?= require_once(SITE_ROOT."partials/head.php");?>
<body style="background-color: #151231; background-size: 1520px 800px;">
    
    <div class="under-header" id="top">        
    
        <div class="header">
            
          <a href="index.php" class="lien" style="font-size: 1.5em;">The Power of memory</a>
          <div class="header-right">
          <a href="index.php" class="lien">Accueil</a>
          <a href="games/memory/index.php" class="lien">Jeu</a>
          <a href="games/memory/scores.php" class="lien">Scores</a>
          <a href="login.php" class="lien">Connexion</a>
          <a href="register.php" class="lien">Inscription</a>
          <a href="myAccount.php" class="lien">Mon espace</a>
          <a href="contact.php" class="lien">Nous contacter</a>
            </div>
            
          </div>
        </br></br></br>
          <center><br><h1 style="margin-top: 0px; display: block;">INSCRIPTION</h1></center>
        </div>
<br>
        
    </br>
    <form action="traitement.php" method="post">
<div class="input-container"></div>
<center><label for="email"></label>
    <input type="email" id="email" name="email" placeholder="  Email" style="height: 2vw; width: 31.5vw; font-size: 1.1vw; " required> </center>
</br>

<center><label for="pseudo"></label>
    <input type="text" name="pseudo" id="pseudo" placeholder="  Pseudo" style="height: 2vw; width: 31.5vw; font-size: 1.1vw; " />
</br></br>

    <label for="mdp"></label>
    <input type="password" name="passe" id="mdp" placeholder="  Mot de passe" style="height: 2vw; width: 31.5vw; font-size: 1.1vw; "/></center>

            
</br>
    <center><label for="comfirm_mdp"></label>
        <input type="password" id="comfirm_mdp" name="comfirm_mdp" placeholder="  confirmez le mot de passe" style="height: 2vw; width: 31.5vw; font-size: 1.1vw; " required></center>

          </br>

          <center>
          <button class="button_validation_inscription">Inscription</button>
          <br><br>
        </center>
</center>
</form>
</form>

<footer style="background-color: #0c0b26;">
  <div class="footer-content">
      <div class="info">
          <div class="miniinfo">
              <h4 style="font-size: 1.4vw; color: white">Informations</h4>
              <p class="mot_gris">Quisque commodo facilisis purus,</p>
              <p class="mot_gris"><span class="mot_orange">Tel :</span> 06 66 66 66 66</p>
              <p class="mot_gris"><span class="mot_orange">Email :</span> support@powerofmemory.com</p>
              <p class="mot_gris"><span class="mot_orange">Location :</span> Paris</p>
              <div class="social-media">
                  <button class="logo_marque"><i class="fa-brands fa-facebook"></i></button>
                  <button class="logo_marque"><i class="fa-brands fa-twitter"></i></button>
                  <button class="logo_marque"><i class="fa-brands fa-google"></i></button>
                  <button class="logo_marque"><i class="fa-brands fa-pinterest"></i></button>
                  <button class="logo_marque"><i class="fa-brands fa-instagram"></i></button>
              </div>
          </div>
      </div>
      <div class="pom">
          <div class="pomtitre"> <h4 style="font-size: 1.4vw; color: white">Power of Memory</h4></div>
          <div class="listpom">
              <ul>
                  <li style="color: #ec9123; list-style-type: square;"><a href="jeu.html" class="list">Jouer !</a></li>
                  <li style="color: #ec9123; list-style-type: square;"><a href="score.html" class="list">Les scores</a></li>
                  <li style="color: #ec9123; list-style-type: square;"><a href="contact.html" class="list">Nous contacter</a></li>
              </ul>
          </div>
      </div>
  </div>
  <br>
  <br>
  <div class="ancre"><a href="#top" style="color: #1e1c38; text-align: center; text-decoration: none; font-size: 3vw; padding: 0 1vw;">^</a></div>
  <br>
  <p class="mot_gris" style="margin-left: 13.5vw;">Copyright © 2022 Tous droits réservés</p>
  <br>
</footer>
</body>
</html>

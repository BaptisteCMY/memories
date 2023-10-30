<?php
require_once("common.php");
require_once(SITE_ROOT . "utils/database.php");
if (
    $_SERVER['REQUEST_METHOD'] == "POST" &&
    isset($_POST['registerme'], $_POST['email'], $_POST['pseudo'], $_POST['passe'], $_POST['comfirm_mdp']) &&
    !empty($_POST['email']) &&
    !empty($_POST['pseudo']) &&
    !empty($_POST['passe']) &&
    !empty($_POST['comfirm_mdp']) &&
    filter_var($_POST['email'], FILTER_VALIDATE_EMAIL) &&
    $_POST['passe'] == $_POST['comfirm_mdp'] &&
    strlen($_POST['pseudo']) >= 4 &&
    strlen($_POST['passe']) >= 8 &&
    strtolower($_POST['passe']) != $_POST['passe'] &&
    preg_match('/^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*]).{8,}$/', $_POST['passe'])
) {

    echo 'Valide';
} else {
    echo 'Les donnés reçus sont incorrectes';
}

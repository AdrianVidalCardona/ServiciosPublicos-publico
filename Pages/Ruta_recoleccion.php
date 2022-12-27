<?php 
    require_once('../BD/BDconexion.php');
    require_once('../controlador/ruta_controller.php');

    $controller= new ruta_controller();
    
    if(!empty($_REQUEST['m'])){
        $metodo=$_REQUEST['m'];
        if (method_exists($controller, $metodo)) {
            $controller->$metodo();
        }else{
            $controller->index();
        }
    }else{
        $controller->index();
    }
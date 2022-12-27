<?php 
    require_once('../BD/BDconexion.php');
    require_once('../controlador/super_controller.php');

    $controller= new super_controller();
    
    if(!empty($_REQUEST['m'])){
        $metodo=$_REQUEST['m'];
        if (method_exists($controller, $metodo)) {
            $controller->$metodo();
        }else{
            $controller->index("Supervisor");
        }
    }else{
        $controller->index("Supervisor");
    }
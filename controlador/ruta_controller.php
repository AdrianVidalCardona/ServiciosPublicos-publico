<?php 
    require_once('../modelo/ruta_model.php');

    class ruta_controller{

        private $model_e;
        private $model_p;

        function __construct(){
            $this->model_e=new ruta_model();
        }

        function index(){
            // $data['Empresa_ruta']=$_REQUEST['Empresa_ruta'];
            $query =$this->model_e->get();

            // include_once('../Pages/Header.php');
            include_once('../modelo/consultas/ConsultaRutas.php');
            // include_once('../Pages/Footer.php');
        }
        function ruta(){
            $data=NULL;
            if(isset($_REQUEST['Empresa_ruta'])){
                $data=$this->model_e->get_id($_REQUEST['Empresa_ruta']);    
            }
            $query=$this->model_e->get();
            // include_once('../Pages/Header.php');
            include_once('../modelo/consultas/ConsultaRutas.php');
            // include_once('../Pages/Footer.php');
        }

        function get_datosE(){

            
            $data['Empresa_ruta']=$_REQUEST['Empresa_ruta'];
            $data['Nombre_ruta']=$_REQUEST['Nombre_ruta'];
            $data['Horario_ruta']=$_REQUEST['Horario_ruta'];
            $data['Descripcion_ruta']=$_REQUEST['Descripcion_ruta'];
            if ($_REQUEST['Nombre_ruta']=="") {
                $this->model_e->create($data);
            }
            
            if($_REQUEST['Nombre_ruta']!=""){
                $date=$_REQUEST['Nombre_ruta'];
                $this->model_e->update($data,$date);
            }
            
            header("Location:../modelo/consultas/ConsultaRutas.php");

        }

        // function confirmarDelete(){

        //     $data=NULL;

        //     if ($_REQUEST['id']!=0) {
        //        $data=$this->model_e->get_id($_REQUEST['id']);
        //     }

        //     if ($_REQUEST['id']==0) {
        //         $date['id_music']=$_REQUEST['id_music'];
        //         $this->model_e->delete($date['id_music']);
        //         header("Location:index.php");
        //     }

        //     include_once('vistas/header.php');
        //     include_once('vistas/confirm.php');
        //     include_once('vistas/footer.php');
            


        // }


    }
?>
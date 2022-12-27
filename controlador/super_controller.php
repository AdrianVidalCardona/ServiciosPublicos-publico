<?php 
    require_once('../modelo/super_model.php');

    class super_controller{

        private $model_e;
        private $model_p;

        function __construct(){
            $this->model_e=new super_model();
        }

        function index($data){
            $query =$this->model_e->get($data);

            // include_once('../Pages/Header.php');
            // if ($data=="Supervisor") {
                include_once('../modelo/consultas/Consultasupervisores.php');
            // }elseif ($data=="Oficina") {
            //     include_once('../modelo/consultas/ConsultaOficina.php');
            // }
            
            // include_once('../Pages/Footer.php');
            // return ;
        }
        function supervisor(){
            $data=NULL;
            if(isset($_REQUEST['Id_perso'])){
                $data=$this->model_e->get_id($_REQUEST['Id_perso']);    
            }
            $query=$this->model_e->get();
            // include_once('../Pages/Header.php');
            include_once('../modelo/consultas/Consultasupervisores.php');
            // include_once('../Pages/Footer.php');
        }

        function get_datosE(){

            
            $data['Id_perso']=$_REQUEST['Id_perso'];
            $data['Num_perso']=$_REQUEST['Num_perso'];
            $data['Nombre_perso']=$_REQUEST['Nombre_perso'];
            $data['Celular_perso']=$_REQUEST['Celular_perso'];
            if ($_REQUEST['Nombre_perso']=="") {
                $this->model_e->create($data);
            }
            
            if($_REQUEST['Id_perso']!=""){
                $date=$_REQUEST['Id_perso'];
                $this->model_e->update($data,$date);
            }
            
            header("Location:../modelo/consultas/Consultasupervisores.php");

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
<?php
    
    class ruta_model{
        private $DB;
        private $ruta;

        function __construct(){
            $this->DB=Database::connect();
        }

        function get(){
            ini_set('display_errors','Off');
            $data = $_REQUEST["Empresa_ruta"];
            ini_set('display_errors','On');
            
            if ($data == "V") {
                $sql= 'SELECT * FROM rutas WHERE Empresa_ruta = "VEOLIA S.A E.S.P"';
            }elseif ($data == "P") {
                $sql= 'SELECT * FROM rutas WHERE Empresa_ruta = "PACARIBE S.A E.S.P"';
            }else {
                $sql= 'SELECT * FROM rutas';
            }

            
            
            $fila=$this->DB->query($sql);
            $this->ruta=$fila;
            return  $this->ruta;
        }

        // function create($data){

        //     $this->DB->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        //     $sql="INSERT INTO canciones(clave_music,nombre_music,ritmo_music,duracion_music,album_music,posicionenalbum_music,banda_music,interprete_music,autor_music,fechalanzamiento_music)VALUES (?,?,?,?,?,?,?,?,?,?)";

        //     $query = $this->DB->prepare($sql);
        //     $query->execute(array(
        //         $data['clave_music'],
        //         $data['nombre_music'],
        //         $data['ritmo_music'],
        //         $data['duracion_music'],
        //         $data['album_music'],
        //         $data['posicionenalbum_music'],
        //         $data['banda_music'],
        //         $data['interprete_music'],
        //         $data['autor_music'],
        //         $data['fechalanzamiento_music']));
        //     Database::disconnect();       

        // }
        // function get_id($id){
        //     $this->DB->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        //     $sql = "SELECT * FROM canciones where id_music = ?";
        //     $q = $this->DB->prepare($sql);
        //     $q->execute(array($id));
        //     $data = $q->fetch(PDO::FETCH_ASSOC);
        //     return $data;
        // }

        // function update($data,$date){
        //     $this->DB->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        //     $sql = "UPDATE canciones  set  clave_music=?, nombre_music =?, ritmo_music=?,duracion_music=?, album_music=?, posicionenalbum_music=?, banda_music=?, interprete_music=?, autor_music=?, fechalanzamiento_music=? WHERE id_music = ? ";
        //     $q = $this->DB->prepare($sql);
        //     $q->execute(array($data['clave_music'],$data['nombre_music'],$data['ritmo_music'],$data['duracion_music'],$data['album_music'],$data['posicionenalbum_music'],$data['banda_music'],$data['interprete_music'],$data['autor_music'],$data['fechalanzamiento_music'], $date));
        //     Database::disconnect();

        // }

        // function delete($date){
        //     $this->DB->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        //     $sql="DELETE FROM canciones where id_music=?";
        //     $q=$this->DB->prepare($sql);
        //     $q->execute(array($date));
        //     Database::disconnect();
        // }
    }
?>


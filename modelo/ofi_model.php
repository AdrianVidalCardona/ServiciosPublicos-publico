<?php
    
    class ofi_model{
        private $DB;
        private $ofi;

        function __construct(){
            $this->DB=Database::connect();
        }

        function get(){
            $data = "Oficina";
            $sql= 'SELECT * FROM personal WHERE Cargo_perso = "'.$data.'"';
            $fila=$this->DB->query($sql);
            $this->ofi=$fila;
            return  $this->ofi;
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
        function get_id($id){
            $this->DB->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $sql = "SELECT * FROM personal where id_perso = ?";
            $q = $this->DB->prepare($sql);
            $q->execute(array($id));
            $data = $q->fetch(PDO::FETCH_ASSOC);
            return $data;
        }

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


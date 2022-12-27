<?php 
    require_once('Header.php');
    require_once('../BD/BDconexion.php');
    require_once('../controlador/ruta_controller.php'); 
    ?>

    <div id="post">

        <!-- <h1>Este es el t&iacute;tulo del blog</h1> -->
        <h1>RUTAS DE RECOLECCION</h1>
        <div>
            <form>
                <label>Empresa: </label>
                <select name="Empresa_ruta">
                    <option value="1" selected>--Todos--</option>
                    <option value="P">Pacaribe</option>
                    <option value="V">Veolia</option>
                </select>
                <!-- <input type="text" name="Barrio" placeholder="Barrio"> -->
                <input type="submit" value="Buscar">
            </form>
        </div>
        <table>
            <thead>
                <tr>
                    <!-- <th COLSPAN=2></th> -->
                    <th>Empresa</th>
                    <th>Ruta</th>
                    <th>Horario</th>
                    <th>Recorrido</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach($query as $data): ?>
                    <tr>
                            <td id="Fila1"><?php echo $data['Empresa_ruta']; ?></td>
                            <td><?php echo $data['Nombre_ruta']; ?></td>
                            <td><?php echo $data['Horario_ruta']; ?></td>
                            <td><?php echo $data['Descripcion_ruta']; ?></td>
                    </tr>
                <?php endforeach ?>
            </tbody>
            
        </table>
    </div>

<?php require('Footer.php')?>
<?php 
    require('Header.php');
    require_once('../BD/BDconexion.php');
    require_once('../controlador/super_controller.php');?>

    <div id="post">

        <!-- <h1>Este es el t&iacute;tulo del blog</h1> -->
        <h1><?php echo $data?></h1>
        <table>
            <thead>
                <tr>
                    <!-- <th COLSPAN=2></th> -->
                    <th>#</th>
                    <th>Nombre</th>
                    <th>Celular</th>
                    <!-- <th>Acciones</th> -->
                </tr>
            </thead>
            <tbody>
                <?php foreach($query as $data): ?>
                    <tr>
                        <td id="Fila1"><?php echo $data['Num_perso']; ?></td>
                        <td><?php echo $data['Nombre_perso']; ?></td>
                        <td>
                            <?php $numero = $data['Celular_perso']; ?>
                            <a id="Boton" href="tel: '+57 <?php echo $numero; ?>'">
                                <?php echo $numero; ?>
                            </a>
                        </td>
                        <!-- <td><button>Modificar</button><button>Eliminar</button></td> -->
                    </tr>
                <?php endforeach ?>
            </tbody>

        </table>

        
    </div>

<?php require('Footer.php')?>
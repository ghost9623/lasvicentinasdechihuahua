

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='css/estilo.css'>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    <script src="javascript/funciones.js"></script> 
    <link rel="shortcut icon" type="image/x-icon" href="imagenes/Las Vicentinas de Chihuahua.ico" />  
    <title>Pasteles</title>
</head>
<body>

     <header >
     <nav class="navbar navbar-dark bg-dark rounded" style="background-color: #e3f2fd;">
                
               
                <a class="navbar-brand" href="#">
                    
                
                    <img src="imagenes/Las Vicentinas de Chihuahua.png"    width="100" height="200" class="rounded">
                    
                </a>
    
                <h1 class="zero1"> <i class="display-4"> Repostería y pasteleria Artesanal</i> </h1>
                
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                  <ul class="navbar-nav">
                    <li class="nav-item active">
                    <a class="nav-link" href="index.html">Inicio<span class="sr-only">(current)</span></a>
                    
                </li> <li class="nav-item">
                        <a class="nav-link" href="politicas.html">politicas</a>
                      </li>
    
                    <li class="nav-item">
                      <a class="nav-link" href="historia.html">Historia</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="noticias.php">Noticias</a>
                    </li>
                    <li class="nav-item">
                  <a class="nav-link" href="noticias.php">Eventos</a>
                </li>
                    <li class="nav-item">
                      <a class="nav-link" href="sugerencias.php">Sugerencias</a>
                    </li>
                    <li class="nav-item">
                    <a class="nav-link" href="login.php">Empleados</a>
                   </li>
                    <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Productos
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="productos.html">Pasteles</a>
                        
                        <a class="dropdown-item" href="productos.html">reposteria</a>
                      </div>
                    </li>
                  </ul>
                </div>
              </nav>
     </header>
    
    <section class="tres  rounded">
       <article class="rounded">
           
    
 
</table> <table class="table table-dark">
  <thead>
    <tr>
     
      <th scope="col">Nombre</th>
      <th scope="col">Precio</th>
     
    </tr>
  </thead>
  <tbody>

  <?php
       $hostname='localhost';
       $database='lasvicentinas';
       $username='admin';
       $password='root';

       $conn1=mysqli_connect($hostname,$username,$password,$database);
       $sql="select * FROM producto WHERE nombre LIKE 'pastel%'";
       $res=mysqli_query($conn1,$sql);
      
       while($producto =mysqli_fetch_array($res))
       {
     ?>
    <tr>
      
      <td><?php echo $producto ['nombre'] ?></td>
      <td><?php echo $producto ['precio'] ?></td>
     
    </tr>
    <?php }
      
      ?>
  </tbody>
</table>

       </article>


    </section>
    <section class="sidebar">
           
           <h2 class="encabezado-sidebar">Categorias</h2>
           <section class="categorias">
           <a href="Pasteles.php" class="enlace-sidebar">Pasteles</a>
        <a href="Otros.php"class="enlace-sidebar">Reposteria y Otros productos</a>>
           </section>

       
   
          

       </section>
    <footer class="pie  rounded">
    <p>Las vicentinas de chihuahua 2020 © Todos los Derechos Reservados</p>
        <a href="https://web.whatsapp.com/"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACQAAAAkCAYAAADhAJiYAAABAUlEQVRYhe3WXQ2DMBSG4VcCEiYBCZWAhCNhEupgOBiONgl1UBywi9KELBRK1h+S8SXnjsBDOZwWrlzJnwZoayN8FGCBCbjXpYDgIMuSWph+BVMNJRsYX0V7SkeAbElUDKgoSiJBE/DCjYWsUQdARfqpOYAZcmN8zJkwsD2HimMAujNhfEwAVG2j1QFQXwvUAOMKyAK3yHu0JJ5TegXkB+JehsW1ST+zCaCeEZgs20wbAPm3v+1gsqBkA2WBx/ywEGZZkgq1NyyP1ClRyc7okhCVrKcU8P4RM5LhLKVZH54xpVJjfJoZZg5gJBfmOx3u19/CVd0LFW419FxSC3Plf/IBexkYhFL15N4AAAAASUVORK5CYII="/></a>
        <a href="https://accounts.google.com/signin/v2/identifier?continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&service=mail&sacu=1&rip=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACQAAAAkCAYAAADhAJiYAAAA2UlEQVRYhe2W0Q2DIBCGvxE6AqM4UjeoG9iR2ERHcIP2RRJKEA4Beej9yb3o5e7LlwiCRqO5P29gBT6dawVeEpjeIGHNKaB9ANCaAvIbbUeIcLYICODZ2Np+zIztEgEBmEa27DErtUsE5HLVlm9FuivatACP4L2hzJbl1wrHzOUKkPsCpkhfztaZlYn4GScGumLLIrNSBSSxVWqlGihnywTPclaaAaVsuUyU3YfVQGe2Sqx0AfJtlVrpBtSiFEiB/gdoxC/slgKaBwDNKSAHtd1kJguj0Wha5wuT0G0HRPCjqAAAAABJRU5ErkJggg=="/></a>
        <a href="https://www.facebook.com"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACQAAAAkCAYAAADhAJiYAAABV0lEQVRYhe2W7W2DMBCGnxEyQkbIBmUERugGHaHeIGxQNqk3IBvgDWCD9EdMFSFs3/lDqtS80v0B7vXD4TsML/0TXYAr8A1MwN3H5K9d/TPNZYDlCSAVC/DZAqQHZgXIPmbvUUWmAGQfxdUaK8Js8ZULYwoWvSXuGy1MrwRY/SJnhZdqTzklTKzFu0DeLIUxCpg78J7wCwGJP92qBArpDLwBH5HcJQVzUcLYAMik8IhO9KECkFF6DDEgWwGohsevUvOjBdAUA9IY1QKKNUZZeQOS7MugXAMgm/C8lSTnALkSz1R5c4CK2r5LJC88jqhbHJkNT/clA7JLvZHm12EP8q0if03BgG7SlgIZCdAJeZVKgFa/lkjSA1oJkPrQLxlouUDRzoppbAA05sJsilVKC5Rdmb16jje6FGhFMG+0OvFoU6cAcj5H3E256vxCoUltaFCRl/6kfgDU6CI0Uun7nQAAAABJRU5ErkJggg=="/></a>

    </footer>
    
    

</body>
</html>
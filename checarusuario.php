<?php
          if(isset($_POST['envio'])){
            $hostname='localhost';
            $database='lasvicentinas';
            $username='admin';
            $password='root';
           
            $usuario=$_POST['usuario'];
            $contraseña=$_POST['contraseña'];
            

            $conn1=mysqli_connect($hostname,$username,$password,$database);
            
            $sql1="SELECT * FROM usuario WHERE alias='$usuario' && contra ='$contraseña'";
            $result=mysqli_query($conn1,$sql1);
           
            if($result->num_rows>0){}
            $row=$result->fetch_array(MYSQLI_ASSOC);

          
           
            
            
            if($row['nombre']==$_nombre and $row['contra']==$contraseña)
            {
                $_SESSION['loggedin']=true;
                $_SESSION['username']=$usuario;
                $_SESSION['start']=time();
                $_SESSION['expire']=$_SESSION['start']+(5*60);
                echo"Bienvenido" . $_SESSION['username'];
                echo"<br><br><a herf=usuario.php>Usuario </a>";

                header('Location: http://localhost/pasteleria/usuario.php');
              
            }
            else
            {
                
                echo"usuarios y contraseñas incorrectos";

                header('Location: http://localhost/pasteleria/login.php');
                
            }
            

        }     
          
          ?>

<?php
include 'dbcon.php';    

session_start();
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}



?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Form</title>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="index.css">
</head>

<body>
    <header>
        <div id="logo">
            <img src="media/loginlogo.png" alt="logo">
        </div>
        <h1>Welcome.</h1>
    </header>
    <section>
        <form action="<?php $_PHP_SELF ?>"  method="POST">
            <input type="text" placeholder="Username" name="user" required>
            <input type="password" placeholder="Password" name="pass" required>
            <br>
            <div class="signin-warning" ><p id="alert" style="visibility:hidden; color:red; font-style:bold; font-size: 1.2em">Incorrect username or password</p></div>
            <input type="submit" name="login" onclick = "login()" value="Log In">
        </form>
        <p><a href="signup.php" name="signup" >Sign up</a> for a new account</p>
    </section>
</body>
<?php 
if(isset($_POST['login'])){
    if( $_POST["user"]==''|| $_POST["pass"]==''){
        echo "<script>alert('Incorrect username or pasword');</script>";
    }
    else{
        $username = $_POST["user"];
        $password = $_POST["pass"];
        // echo ("SELECT * FROM users where username='$username' and password='$password'");
        $result = mysqli_query($conn,"SELECT * FROM users where username='$username' and password='$password'");
        
        if(mysqli_num_rows($result) >0){
            $_SESSION["uname"]=$username;
            
            $_SESSION['cart'] = array();

            header("Location:http://localhost/17SW109%20lab%2010%20task%201/17SW109%20lab%2010%20task%201/home.php");
        }
        else if(!empty($username) && !empty($password)){
            echo "asd";
            // echo "<script>document.getElementById('alert').style.visibility='visible'</script>";

        }


    }
}
else if(isset($_POST['signup'])){
    header("Location:http://localhost/17SW109%20lab%2010%20task%201/17SW109%20lab%2010%20task%201/signup.php");


}
?>
<script>
    function login(){
        let user = document.getElementsByName("user")[0];
        let user = document.getElementsByName("user")[0];

    }
</script>
</html>
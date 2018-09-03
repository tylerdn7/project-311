<?php 

    $con = mysqli_connect('localhost','root','','blood_donation');
  
  if($con)
  {
    //echo"success"; 
  }
  else{
    echo "error";
  }
  

  
if(isset($_POST['submit'])){
  
  //echo $_POST['name'];
  
  $name = $_POST['name'];
   $username = $_POST['username'];
    $phone = $_POST['phone'];
     $email = $_POST['email'];
      $bloodgroup = $_POST['bloodgroup'];
       $city = $_POST['city'];


if(empty($name)) {
            echo "<font color='red'>Name field is empty.</font><br/>";
        }

if(empty($username)) {
            echo "<font color='red'>User Name field is empty.</font><br/>";
        }

if(empty($phone)) {
            echo "<font color='red'>Phone Number field is empty.</font><br/>";
        }


if(empty($email)) {
            echo "<font color='red'>Email field is empty.</font><br/>";
        }
if(empty($bloodgroup)) {
            echo "<font color='red'>Bloodgroup field is empty.</font><br/>";
        }
if(empty($city)) {
            echo "<font color='red'>City field is empty.</font><br/>";
        }











$sql_u = "SELECT * FROM donar WHERE username = '$username'";
$sql_e = "SELECT * FROM donar WHERE email = '$email'";

$res_u = mysqli_query($con,$sql_u);
$res_e = mysqli_query($con,$sql_e) or die(mysqli_error($con));


if (mysqli_num_rows($res_u) > 0) {
  # code...
 // $name_error = "sorry.....username already taken";

echo "sorry.....username already taken";


}

if (mysqli_num_rows($res_e) > 0) {
  # code...
  // $name_error = "sorry.....email already used";
echo "<br>";
echo "\r\n sorry.....email already used";

} 


else {
    


  
  $sql = "INSERT INTO donar(name,username,phone,email,bloodgroup,city) VALUES('$name','$username','$phone','$email','$bloodgroup','$city')";
  
  if(mysqli_query($con,$sql))
 {
    echo "succesfully registered";
 }
  
 else{
    echo "error";

 }
    

  
  }

}
  
  ?>
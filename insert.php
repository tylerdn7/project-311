<?php
session_start();

// initializing variables

$name = "";
$username = "";
$phone = "";
$email    = "";
$bloodgroup = "";
$city = "";
$errors = array(); 

// connect to the database
$db = mysqli_connect('localhost', 'root', '', 'blood_donation');

// REGISTER USER
if (isset($_POST['submit'])) {
  // receive all input values from the form
  $name = mysqli_real_escape_string($db, $_POST['name']);
  $username = mysqli_real_escape_string($db, $_POST['username']);
  $phone = mysqli_real_escape_string($db, $_POST['phone']);
  $email = mysqli_real_escape_string($db, $_POST['email']);
  $bloodgroup = mysqli_real_escape_string($db, $_POST['bloodgroup']);
  $city = mysqli_real_escape_string($db, $_POST['city']);

  // form validation: ensure that the form is correctly filled ...
  // by adding (array_push()) corresponding error unto $errors array
  if (empty($name)) { array_push($errors, "name is required"); }
  if (empty($username)) { array_push($errors, "Username is required"); }
  if (empty($phone)) { array_push($errors, "phone number is required"); }
  if (empty($bloodgroup)) { array_push($errors, "bloodgroup is required"); }
  if (empty($email)) { array_push($errors, "Email is required"); }
  if (empty($city)) { array_push($errors, "city is required"); }
  

  // first check the database to make sure 
  // a user does not already exist with the same username and/or email
  $user_check_query = "SELECT * FROM donar WHERE username='$username' OR email='$email' LIMIT 1";
  $result = mysqli_query($db, $user_check_query);
  $user = mysqli_fetch_assoc($result);
  
  if ($user) { // if user exists
    if ($user['username'] === $username) {
      array_push($errors, "Username already exists");
    }

    if ($user['email'] === $email) {
      array_push($errors, "email already exists");
    }
  }

  // Finally, register user if there are no errors in the form
  if (count($errors) == 0) {
  	

  	$query = "INSERT INTO donar(name,username,phone,email,bloodgroup,city) VALUES('$name','$username','$phone','$email','$bloodgroup','$city')";
  	mysqli_query($db, $query);
  	$_SESSION['username'] = $username;
  	$_SESSION['success'] = "You are now registered";
  	
  }
}

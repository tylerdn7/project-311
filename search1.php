





<h1 align="center">Our Donar List</h1>


<table border="1" text-center align="center">
  
<tr>
  
<th>NAME</th>
<th>USERNAME</th>
<th>PHONE</th>
<th>EMAIL</th>
<th>BLOOD GROUP</th>
<th>CITY</th>



</tr>













<?php 

    $con = mysqli_connect('localhost','root','','blood_donation');
  
  if($con)
  {
   // echo"success"; 
  }
  else{
    echo "error";
  }





  if(isset($_POST['submit'])){
  
 $bloodgroup = $_POST['bloodgroup'];
       $city = $_POST['city'];



/*if(empty($bloodgroup)) {
            echo "<font color='red'>Bloodgroup field is empty.</font><br/>";
        }
if(empty($city)) {
            echo "<font color='red'>City field is empty.</font><br/>";
        }
 
*/

//else { 





$show = "SELECT * FROM donar WHERE bloodgroup = '$bloodgroup' and city='$city' ";


$result=mysqli_query($con,$show);

while ($rows=mysqli_fetch_array($result)) {
  # code...


echo  "<tr>";
echo  "<td>";
echo $rows['name'];
echo  "</td>";
echo  "<td>";
echo $rows['username'];
echo  "</td>";
echo  "<td>";
echo $rows['phone'];
echo  "</td>";
echo  "<td>";
echo $rows['email'];
echo  "</td>";
echo  "<td>";
echo $rows['bloodgroup'];
echo  "</td>";
echo  "<td>";
echo $rows['city'];
echo  "</td>";
echo  "</tr>";
echo "<br/>";






}






}

//}


?>



</table>














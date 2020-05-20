<?php
    include('include/config.php');
    include('include/functions.php');
    $id = $_GET['id'];
    $query = "select * from `requests` where `id` = '$id'; ";
    if(count(fetchAll($query)) > 0){
        foreach(fetchAll($query) as $row){
            $fullname = $row['fullName'];
            $email = $row['userEmail'];
            $password = $row['password'];
            $contactno = $row['contactNo'];
           



     $query1="INSERT INTO `users`(`id`, `fullName`, `userEmail`, `password`, `contactNo`) VALUES (NULL,'$fullname','$email','$password','$contactno')";

        }
         $query .= "DELETE FROM `requests` WHERE `requests`.`id` = '$id'; ";

        if(performQuery($query1)){
            echo "Account has been accepted.";
        }else{
            echo "Unknown error occured. Please try again.";
        }
    }else{
        echo "Error occured.";
    }
    
?>
<br/><br/>
<a href="home.php">Back</a>


<?php 
    //$conn = mysqli_connect("localhost", "root", "", "securechatapp");
    // $conn = mysqli_connect("SG-spiky-nutria-5632-6037-mysql-master.servers.mongodirector.com", "admin", "MUCzzJ8hf!hfhGE", "securechatapp", 3306);
    // $conn = new mysqli("SG-spiky-nutria-5632-6037-mysql-master.servers.mongodirector.com", "sgroot", "Au28FOWP1.rcswOd", "securechatapp");
    $conn = mysqli_connect("us-cdbr-east-05.cleardb.net", "b9e36e1e9402f2", "dc477963", "heroku_dc956bd47a4eb8b");
    if(!$conn){
        echo "Database not connected" . mysqli_connect_error();
    }
?>
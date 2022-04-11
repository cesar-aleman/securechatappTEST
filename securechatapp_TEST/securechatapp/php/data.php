<?php 
    error_reporting(E_ERROR | E_PARSE);
    while($row = mysqli_fetch_assoc($sql)) {
        $sql2 = "SELECT * FROM messages WHERE (incoming_msg_id = {$row['unique_id']}
                OR outgoing_msg_id = {$row['unique_id']}) AND (outgoing_msg_id = {$outgoing_id} 
                OR incoming_msg_id = {$outgoing_id}) ORDER BY msg_id DESC LIMIT 1";
        $query2 = mysqli_query($conn, $sql2);
        $row2 = mysqli_fetch_assoc($query2);

        $ciphering = "AES-128-CTR";
        $options = 0;
        $decryption_iv = '1234567891011121';
        $decryption_key = "SuperSecrectPassPharse";

        if(mysqli_num_rows($query2) > 0){
            $result = openssl_decrypt($row2['msg'], $ciphering, $decryption_key, $options, $decryption_iv);
        }else{
            $result = "No recent messages.";
        }
        $msg = openssl_decrypt($row2['msg'], $ciphering, $decryption_key, $options, $decryption_iv);
        //topping off at 28 chars
        (strlen($result) > 28) ? $msg = substr($result, 0, 28).'...' : $msg = $result;
        //adding "you: TEXT GOES HERE" before the msg if login id sent the msg. 
        ($outgoing_id == $row2['outgoing_msg_id']) ? $you = "You: " : $you = "";
        //checking to see if user is online or offline
        ($row['status'] == "Offline now") ? $offline = "offline" : $offline = ""; 
        $output .= '<a href="chat.php?user_id='.$row['unique_id'].'"
                    <div class="content">
                    <img src="php/images/'. $row['img'] .'" alt="">
                    <div class="details">
                        <span>'. $row['fname'] . " " . $row['lname'] .'</span>
                        <p>'. $you . $msg .'</p>
                    </div>
                    </div>
                    <div class="status-dot '.$offline.'"><i class="fas fa-circle"></i></div>
                    </a>';
        
    }

?>
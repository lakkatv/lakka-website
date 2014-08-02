<?php
  function spamcheck($field)
  {
    $field = filter_var($field, FILTER_SANITIZE_EMAIL);
    if (filter_var($field, FILTER_VALIDATE_EMAIL)) 
    {
      return 1;
    }
  }

  if(isset($_POST) && isset($_POST['name']) && isset($_POST['email']) && isset($_POST['subject']) && isset($_POST['message']))
  {
    if(!empty($_POST['name']) && !empty($_POST['email']) && !empty($_POST['subject']) && !empty($_POST['message']))
    {
      if (spamcheck($_POST["email"])) 
      {
        $to = 'contact@lakka.tv';
        $subject = $_POST['subject'];
        $message = $_POST['message'];
        $headers = 'From : '.$_POST['name'].' <'.$_POST['email'].'>';
  
        if (mail($to, $subject, $message, $headers))
        {
            echo 'Email successfully sent!'; 
        } 
        else 
        {
            echo "Email delivery failed…";
        }
      }
      else
      {
        echo "Invalid email";
      }
    }
    else
    {
      echo "Invalid input";
    }
  }

?>

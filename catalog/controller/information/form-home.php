<?php
// print_r($_POST);


    $name = $_POST['name2'];

    $email = $_POST['email2'];

    $enquiry = $_POST['enquiry2'];





    $to = 'svyatoslav.fe@gmail.com';

    // $to = 'opt@sofiashelest.com';


    $subject = 'Оптом Украина';

    $message = $enquiry;

    $message_to_myemail = "Здравствуйте! 
Вашей контактной формой для ОПТОВИКИ УКРАИНА было отправлено сообщение! 
Имя отправителя: $name 
E-mail: $email 
Текст сообщения: $message 
Конец";


   mail($to, '', $message_to_myemail) or die('');

   if(mail()){
   	echo "OK";
   }







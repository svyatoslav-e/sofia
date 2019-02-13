<?php class ControllerInformationContactFormSender extends Controller {

    public function index()
    {
        $name = $_POST['name2'];

        $email = $_POST['email2'];

        $enquiry = $_POST['enquiry2'];


//     $to = 'svyatoslav.fe@gmail.com';

//    $to = 'opt@sofiashelest.com';


        $subject = 'Оптом Украина';

        $message = $enquiry;

        $message_to_myemail = "Здравствуйте! 
Вашей контактной формой для ОПТОВИКИ УКРАИНА было отправлено сообщение! 
Имя отправителя: $name 
E-mail: $email 
Текст сообщения: $message 
Конец";


        $mail = new Mail();
        $mail->protocol = $this->config->get('config_mail_protocol');
        $mail->parameter = $this->config->get('config_mail_parameter');
        $mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
        $mail->smtp_username = $this->config->get('config_mail_smtp_username');
        $mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
        $mail->smtp_port = $this->config->get('config_mail_smtp_port');
        $mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');

        $mail->setTo('opt@sofiashelest.com');
        $mail->setFrom($email);
        $mail->setSender(html_entity_decode($name, ENT_QUOTES, 'UTF-8'));
        $mail->setSubject(html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
        $mail->setText($message_to_myemail);
        $mail->send();
    }
}



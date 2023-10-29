
import javax.mail.*;
import javax.mail.internet.*;
import java.util.Properties;

public class SendMail {

    private String emailAddressTo = new String();
    private String msgSubject = new String();
    private String msgText = new String();
//  private String USER_NAME = "ajmeraaashu55@gmail.com";   //User name of the Goole(gmail) account
    private String USER_NAME = "";
    final String PASSSWORD = "darb cutv hcse yvjl";  //Password of the Goole(gmail) account
    final String FROM_ADDRESS = "mohanmaali143@gmail.com";  //From addresss

    public SendMail() {
    }

    public void setEmailAddressTo(String emailAddressTo) {
        this.emailAddressTo = emailAddressTo;
    }

    public void setSubject(String subject) {
        this.msgSubject = subject;
    }

    public void setMessageText(String msgText) {
        this.msgText = msgText;
    }

    public void setUserName(String userName) {
        this.USER_NAME = userName;
    }

    public static void main(String[] args) {
        SendMail email = new SendMail();
        //Sending test email
        email.createAndSendEmail("mohanmaali143@gmail.com", "Account varification in Shashwat...", " Dear Shashwat user. ,\n the one time OTP to reset your password at (Shashwat Account) is (Number).\n \n This OTP will expire in 5 minutes. ");
    }

    public void createAndSendEmail(String emailAddressTo, String msgSubject, String msgText) {
        this.emailAddressTo = emailAddressTo;
        this.msgSubject = msgSubject;
        this.msgText = msgText;
        sendEmailMessage();
    }

    private void sendEmailMessage() {

        //Create email sending properties
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        Session session = Session.getInstance(props,
                new javax.mail.Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("mohanmaali143@gmail.com", "darb cutv hcse yvjl");
            }
        });

        try {

            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("mohanmaali143@gmail.com")); //Set from address of the email
            message.setContent(msgText, "text/html"); //set content type of the email

            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(USER_NAME)); //Set email recipient

            message.setSubject(msgSubject); //Set email message subject
            Transport.send(message); //Send email message

            System.out.println("sent email successfully!");

        } catch (MessagingException e) {

            System.out.println("Some Exception found");
            throw new RuntimeException(e);
        }
    }

    public static int otpGenerat() {
        int random = (int) (Math.random() * 999999);
        System.out.println("rendom num is: " + random);
        return random;
    }

}

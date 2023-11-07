
import java.util.Base64;
import java.util.Base64.Decoder;
import java.util.Base64.Encoder;

public class Pssword {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Encoder encoder = Base64.getEncoder();
        String pass = "i love coding";
        String enpass = encoder.encodeToString(pass.getBytes());

        System.out.println("Pass  =  " + enpass);

    }

}

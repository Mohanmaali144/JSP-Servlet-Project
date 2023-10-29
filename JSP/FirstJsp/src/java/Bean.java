//import java.io.Serializable;
import java.io.Serializable;
public class Bean implements Serializable {

    private int Name;
    private int Father;
    private int Email;
    private int Mobile;
    

    public int getName() {
        return Name;
    }

    public void setName(int Name) {
        this.Name = Name;
    }

    public int getFather() {
        return Father;
    }

    public void setFather(int Father) {
        this.Father = Father;
    }

    public int getEmail() {
        return Email;
    }

    public void setEmail(int Email) {
        this.Email = Email;
    }

    public int getMobile() {
        return Mobile;
    }

    public void setMobile(int Mobile) {
        this.Mobile = Mobile;
    }

    public Bean() {
    }

}

import com.webssm.controller.Usercontroller;
import com.webssm.pojo.User;
import org.junit.Test;
import org.springframework.ui.Model;
import java.util.Scanner;
public class test {
    @Test
    public void test() {
        Scanner scanner = new Scanner(System.in);
        while(true) {

            User user = new User();
            System.out.print("Enter Username: ");
            user.setUsername(scanner.next());
            System.out.print("Enter Password: ");
            user.setPassword(scanner.next());
            Model model = null;

            Usercontroller usercontroller = new Usercontroller();
            System.out.println(usercontroller.login(user));

        }
    }
}

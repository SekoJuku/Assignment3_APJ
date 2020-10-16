import java.util.LinkedList;

public class UserList {
    private static LinkedList<User> users = new LinkedList<>();

    private UserList() { }

    private static void addUsers() {
        users.add(new User("Serikzhan","Sekoku","123"));
        users.add(new User("Ayan1","Sultan","1234"));
        users.add(new User("Dias","Faulkd","12345"));
    }
    public static void addUser(User a) {
        users.add(a);
    }

    public static LinkedList<User> getUsers() {
        if(users.isEmpty()) {
            //System.out.println("GG!");
            addUsers();
        }
        return users;
    }
}

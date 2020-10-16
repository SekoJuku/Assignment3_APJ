import java.sql.Time;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

public class User {
    private String username;
    private String userpass;
    private String name;
    private int visits;
    private LocalDateTime lasttime;

    public User() {
        setVisits(0);
        setLasttime(LocalDateTime.now());
    }

    public User(String name, String username, String userpass) {
        this();
        setName(name);
        setUsername(username);
        setUserpass(userpass);
    }









    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUserpass() {
        return userpass;
    }

    public void setUserpass(String userpass) {
        this.userpass = userpass;
    }

    public int getVisits() {
        return visits;
    }

    public void setVisits(int visits) {
        this.visits = visits;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public LocalDateTime getLasttime() {
        return lasttime;
    }
    public String getDateTime(LocalDateTime a) {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");
        return a.format(formatter);
    }

    public void setLasttime(LocalDateTime lasttime) {
        this.lasttime = lasttime;
    }

}

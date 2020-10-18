package model;

public class Admin extends User{
    private boolean isAdmin;

    public Admin(String user, String pass) {
        super(user, pass);
        isAdmin = true;
    }
}

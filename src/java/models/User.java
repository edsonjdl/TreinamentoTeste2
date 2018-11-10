package models;




import java.util.ArrayList;


public class User  implements java.io.Serializable {


     private int id;
     private String name;
     private String login;
     private String password;
     private boolean isActive;
     private ArrayList<Integer> groups;

    public User() {
    }

    public User(int id, String nome, String login, String senha, boolean isActive, ArrayList<Integer>  groups) {
       this.id = id;
       this.name = nome;
       this.login = login;
       this.password = senha;
       this.isActive = isActive;
       this.groups = groups;
    }
   
    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public String getLogin() {
        return this.login;
    }
    
    public void setLogin(String login) {
        this.login = login;
    }
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    public boolean getIsActive() {
        return this.isActive;
    }
    
    public void setIsActive(boolean isActive) {
        this.isActive = isActive;
    }

    public ArrayList<Integer> getGroups() {
        return groups;
    }

    public void setGroups(ArrayList<Integer> groups) {
        this.groups = groups;
    }

    @Override
    public String toString() {
        return "User{" + "id=" + id + ", name=" + name + ", login=" + login + ", password=" + password + ", isActive=" + isActive + ", groups=" + groups + '}';
    }

    


    
    

}






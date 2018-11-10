package models;



import java.util.ArrayList;



public class Group  implements java.io.Serializable {


     private int id;
     private String name;
     private int accessLevel;
     private ArrayList<Integer> users;

    public Group() {
    }

    public Group(int id, String name, int accessLevel, ArrayList<Integer> users) {
        this.id = id;
        this.name = name;
        this.accessLevel = accessLevel;
        this.users = users;
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
    public int getAccessLevel() {
        return this.accessLevel;
    }
    
    public void setAccessLevel(int accessLevel) {
        this.accessLevel = accessLevel;
    }

    public ArrayList<Integer> getUsers() {
        return users;
    }

    public void setUsers(ArrayList<Integer> users) {
        this.users = users;
    }

    @Override
    public String toString() {
        return "Group{" + "id=" + id + ", name=" + name + ", accessLevel=" + accessLevel + ", users=" + users + '}';
    }







}






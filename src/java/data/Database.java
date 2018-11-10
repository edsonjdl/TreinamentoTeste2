/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import models.Group;
import models.User;
import java.util.ArrayList;


/**
 *
 * @author edson
 */
public class Database {
    
    public static ArrayList<User> userTable;
    public static ArrayList<Group> groupTable;
    
    
    public static void start(){
        
        // Generating admin data
        
        userTable = new ArrayList();
        groupTable = new ArrayList();
        
            int idAd = 0;
            String nameAd = "Administrator ";
            String loginAd = "admin";
            String passwordAd = "admin";
            boolean isActiveAd = true;
            ArrayList<Integer> groupsAd = new ArrayList();
 
            User admin = new User(idAd, nameAd, loginAd, passwordAd, isActiveAd, groupsAd);
            userTable.add(admin);
            
            // Generating group admin
            int idGA = 0;
            String nameGA = "Group Admin";
            int accessLevelGA = 4;
            ArrayList<Integer> usersGA = new ArrayList();
            
            Group gAdmin = new Group(idGA, nameGA, accessLevelGA, usersGA);
            groupTable.add(gAdmin); 
  
        // Generating users data
        
        for(int i = 1; i < 10; i++){
            int id = i;
            String name = "User " + i;
            String login = "user" +1;
            String password = "123";
            boolean isActive = true;
            ArrayList<Integer> groups = new ArrayList();
            
            User u = new User(id, name, login, password, isActive, groups);
            userTable.add(u);
        }
        
        // Generating groups data
        
        for(int i=1; i<4; i++){
            
            int id = i;
            String name = "Group " + i;
            int accessLevel = i;
            ArrayList<Integer> users = new ArrayList();
            
            Group g = new Group(id, name, accessLevel, users);
            groupTable.add(g);           
        }

        
        // Associating users and groups      
        
        userTable.get(0).getGroups().add(groupTable.get(0).getId());
        
        userTable.get(1).getGroups().add(groupTable.get(1).getId());
        userTable.get(2).getGroups().add(groupTable.get(1).getId());
        userTable.get(3).getGroups().add(groupTable.get(1).getId());
        
        userTable.get(4).getGroups().add(groupTable.get(2).getId());
        userTable.get(5).getGroups().add(groupTable.get(2).getId());
        userTable.get(6).getGroups().add(groupTable.get(2).getId());
        
        userTable.get(7).getGroups().add(groupTable.get(3).getId());
        userTable.get(8).getGroups().add(groupTable.get(3).getId());
        userTable.get(9).getGroups().add(groupTable.get(3).getId());
        
        groupTable.get(0).getUsers().add(userTable.get(0).getId());
        
        groupTable.get(1).getUsers().add(userTable.get(1).getId());
        groupTable.get(1).getUsers().add(userTable.get(2).getId());
        groupTable.get(1).getUsers().add(userTable.get(3).getId());
        
        groupTable.get(2).getUsers().add(userTable.get(4).getId());
        groupTable.get(2).getUsers().add(userTable.get(5).getId());
        groupTable.get(2).getUsers().add(userTable.get(6).getId());
        
        groupTable.get(3).getUsers().add(userTable.get(7).getId());
        groupTable.get(3).getUsers().add(userTable.get(8).getId());
        groupTable.get(3).getUsers().add(userTable.get(9).getId());
        

    }
    
}

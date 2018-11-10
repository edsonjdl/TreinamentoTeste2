/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import data.Database;
import java.util.ArrayList;
import java.util.List;
import models.Group;
import models.User;


/**
 *
 * @author edson
 */
public class DAO {


    // Users list 
        public static ArrayList<User> listUsers() {
   
        return Database.userTable;

    }
    
    
    
        // Groups list
    public static ArrayList<Group> listGroups() {

        return Database.groupTable;
    }
    
    
    public static Group findGroupById(int groupId) {
        
        Group group = new Group();
        
        for(Group g : Database.groupTable){
            
            if(g.getId() == groupId){
                group = g;
            }
        }

        return group;
    }
    
    public static User findUserById(int userId){
        
        User user = new User();
        
        for(User u : Database.userTable){
            if(u.getId() == userId){
                user = u;
            }
        }
        
        return user;
    }
    
    public static ArrayList<User> getUsersFromGroup(ArrayList<Integer> userIds){
        
        ArrayList<User> groupUsers = new ArrayList<>();
        User u = new User();
        
        for(Integer i : userIds){
            u = findUserById(i);
            groupUsers.add(u);
        }
        
        System.out.println(groupUsers);
        
        return groupUsers;
        
    }
    
    
    public static ArrayList<User> getUsersNotInGroup(int groupId){
        
        ArrayList<User> outUsers = new ArrayList<>();
        Group group = new Group();
        group = findGroupById(groupId);
        User u = new User();
        
//            for(Integer i : group.getUsers()){
//            u = findUserById(i);
//            groupUsers.add(u);
//        }
        
        return outUsers;
        
    }


}

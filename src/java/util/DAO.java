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

        for (Group g : Database.groupTable) {

            if (g.getId() == groupId) {
                group = g;
            }
        }

        return group;
    }

    public static User findUserById(int userId) {

        User user = new User();

        for (User u : Database.userTable) {
            if (u.getId() == userId) {
                user = u;
            }
        }

        return user;
    }
    
        public static ArrayList<Group> getGroupsFromUser(ArrayList<Integer> groupIds) {

        ArrayList<Group> userGroups = new ArrayList<>();
        Group g = new Group();

        for (Integer i : groupIds) {
            g = findGroupById(i);
            userGroups.add(g);
        }

        System.out.println(userGroups);

        return userGroups;

    }
    
    
    
    

    public static ArrayList<User> getUsersFromGroup(ArrayList<Integer> userIds) {

        ArrayList<User> groupUsers = new ArrayList<>();
        User u = new User();

        for (Integer i : userIds) {
            u = findUserById(i);
            groupUsers.add(u);
        }

        System.out.println(groupUsers);

        return groupUsers;

    }

    public static ArrayList<User> getUsersNotInGroup(int groupId) {

        ArrayList<User> usersOutside = new ArrayList<>();
        Group group = new Group();
        group = findGroupById(groupId);

        ArrayList<User> usersInside = new ArrayList<>();
        usersInside = getUsersFromGroup(group.getUsers());
        User user = new User();

        for (User u : Database.userTable) {

            boolean check = true;

            for (Integer uiId : group.getUsers()) {

                if (uiId == u.getId()) {
                    check = false;
                }
            }

            if (check) {
                usersOutside.add(u);
            }

        }

        return usersOutside;

    }

    public static void updateGroupUsers(int groupId, String[] usersList) {


        // Update groupTable
        for (Group g : Database.groupTable) {

            if (g.getId() == groupId) {
                ArrayList<Integer> usersUpdate = new ArrayList();

                for (String id : usersList) {
                    System.out.println(id);
                    usersUpdate.add(Integer.parseInt(id));
                }

                g.setUsers(usersUpdate);

            }

        }
        
        //Update userTable
        updateUsersGroups();

    }

    public static void updateUsersGroups() {

        //Update userTable
        for (User u : Database.userTable) {
            ArrayList<Integer> groupsUpdate = new ArrayList();
            for (Group g : Database.groupTable) {
                for (int userId : g.getUsers()) {
                    if (u.getId() == userId) {
                        groupsUpdate.add(g.getId());
                    }
                }
            }
            u.setGroups(groupsUpdate);
        }       

    }

}

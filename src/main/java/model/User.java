package model;

import model.FromAPI.Movie;

import java.util.ArrayList;
import java.util.List;

public class User {
    private int id;
    private String email;
    private String password;
    private String fullname;
    private String telephone;
    private String address;
    private List<UserMovie> personalList;

    public User() {

    }

    public User(int id, String email, String password) {
        this.id = id;
        this.email = email;
        this.password = password;
    }

    public User(int id, String email, String password, String fullname, String telephone, String address) {
        this.id = id;
        this.email = email;
        this.password = password;
        this.fullname = fullname;
        this.telephone = telephone;
        this.address = address;
    }

    public User(int id, String email, String password, String fullname, String telephone, String address, List<UserMovie> personalList) {
        this.id = id;
        this.email = email;
        this.password = password;
        this.fullname = fullname;
        this.telephone = telephone;
        this.address = address;
        this.personalList = personalList;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public List<UserMovie> getPersonalList() {
        return personalList;
    }

    public void setPersonalList(List<UserMovie> personalList) {
        this.personalList = personalList;
    }

    public static List<UserMovie> getWillWatchList(List<UserMovie> personalList)
    {
        List<UserMovie> result = new ArrayList<>();
        for(UserMovie um : personalList)
            if(um.getStatus() == UserMovie.WILL_WATCH)
                result.add(um);
        return result;
    }

    public static List<UserMovie> getWatchedList(List<UserMovie> personalList)
    {
        List<UserMovie> result = new ArrayList<>();
        for(UserMovie um : personalList)
            if(um.getStatus() == UserMovie.WATCHED)
                result.add(um);
        return result;
    }



}

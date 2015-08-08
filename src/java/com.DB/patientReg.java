/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com;

/**
 *
 * @author c0633176
 */
public class patientReg {
    String Name;
    String email;
    String uname;
    String pass;
    String decease;
    String gender;
    int age;

    public patientReg(String Name, String email, String uname, String pass, String decease, String gender, int age) {
        this.Name = Name;
        this.email = email;
        this.uname = uname;
        this.pass = pass;
        this.decease = decease;
        this.gender = gender;
        this.age = age;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getDecease() {
        return decease;
    }

    public void setDecease(String decease) {
        this.decease = decease;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    
    
}

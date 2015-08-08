/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;

/**
 *

 */
public class Database {
    String url="jdbc:as400:174.79.32.158";
    String userName="IBM87";
    String password="IBM87";
    
    public Connection getConnection(){
        Connection con=null;
        try {
            Class.forName("com.ibm.as400.access.AS400JDBCDriver");
        } catch (ClassNotFoundException e) {
            System.out.println(e.getMessage());
        }
        
        try {
            con=DriverManager.getConnection(url, userName, password);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return con;
    }   
    
   public void insertDoc(doctor d){
   
       try {
           Connection con =getConnection();
           String query="INSERT INTO doctor (firstName,lastName,email,Doctorid,pass,specialization,gender) VALUES(?,?,?,?,?,?,?)";
           PreparedStatement stmt=con.prepareStatement(query);
           stmt.setString(1, d.getFirstName());
            stmt.setString(2, d.getLastName());
            stmt.setString(3, d.getEmail());
            stmt.setString(4, d.getDocid());
            stmt.setString(5, d.getPassword());
            stmt.setString(6, d.getSpecialization());
            stmt.setString(7, d.getGender());
            stmt.executeUpdate();
                 
       } catch (Exception e) {
           System.err.println(e);
       }
       
     
   }
   public void insertPatient(patientReg p){
       try {
            Connection con =getConnection();
           String query="INSERT INTO patient(Name,email,userName,pass,decease,gender,age) VALUES(?,?,?,?,?,?,?)";
            PreparedStatement stmt=con.prepareStatement(query);
            stmt.setString(1, p.getName());
            stmt.setString(2, p.getEmail());
            stmt.setString(3, p.getUname());
            stmt.setString(4, p.getPass());
            stmt.setString(5, p.getDecease());
            stmt.setString(6, p.getGender());
            stmt.setInt(7, p.getAge());
            stmt.executeUpdate();
       } catch (Exception e) {
           System.err.println(e);
       }
   }
   public boolean dLogin(String Doctorid,String pass){
       
       boolean status=false;
       int c=0;
      Connection con=null;
       try {
           con=getConnection();
            String query="SELECT COUNT(*) count FROM doctor WHERE DOCTORID=? AND PASS=?";
            PreparedStatement stmt=con.prepareStatement(query);
            stmt.setString(1, Doctorid);
            stmt.setString(2,pass);
            ResultSet rs=stmt.executeQuery();
            while(rs.next()){
                c=rs.getInt("count");
            }
            if(c==1){
                status=true;
            }
       } catch (Exception e) {
           System.out.println(e);
       }
       return status;
       }
   
   public LinkedList<String> docList(){
       LinkedList<String> listOfDoc=new LinkedList<String>();
       try {
            Connection con=getConnection();
            String query="SELECT firstname FROM doctor";
            PreparedStatement stmt=con.prepareStatement(query);
            ResultSet rs=stmt.executeQuery();
            while(rs.next()){
                listOfDoc.add(rs.getString("firstname"));
            }
            
       } catch (Exception e) {
           System.out.println(e);
       }
       return listOfDoc;
       }
   
   public LinkedList<String> getDocTime(){
       LinkedList<String> timing=new LinkedList<String>();
       try {
            Connection con=getConnection();
            String query="SELECT timing FROM timing WHERE timing NOT IN (SELECT timing FROM timing t RIGHT OUTER JOIN pt_appt_details p ON t.timing=p.apttime)";
            PreparedStatement stmt=con.prepareStatement(query);
            ResultSet rs=stmt.executeQuery();
            while(rs.next()){
                timing.add(rs.getString("timing"));
            }
            
       } catch (Exception e) {
           System.out.println(e);
       }
       return timing;
       }
    public void insertPtApp(String pName,String age,String sex,String doc_name,String apt_date,String apt_time,String mailid,String Diagnosis){
       try {
            Connection con =getConnection();
            
            String query="INSERT INTO pt_appt_details(pt_name,age,sex,doc_name,apt_date,apttime,mailid,diagnosis) VALUES(?,?,?,?,?,?,?,?)";
            PreparedStatement stmt=con.prepareStatement(query);
            stmt.setString(1, pName);
            stmt.setString(2, age);
            stmt.setString(3, sex);
            stmt.setString(4, doc_name);
            stmt.setString(5, apt_date);
            stmt.setString(6, apt_time);
            stmt.setString(7, mailid);
            stmt.setString(8, Diagnosis);
            stmt.executeUpdate();
       } catch (Exception e) {
           System.err.println(e);
       }
       
   }
    
    public ResultSet docWiseAppDetails(String doc){
        ResultSet r=null;
        try {
            Connection con=getConnection();
            String query="SELECT p.pt_name,p.sex,p.age,p.apttime,p.mailid,p.diagnosis FROM pt_appt_details p inner join doctor d on p.doc_name=d.firstname WHERE d.doctorid=?";
            PreparedStatement stmt=con.prepareStatement(query);
            stmt.setString(1, doc);
            r=stmt.executeQuery();
        } catch (SQLException e) {
        }
        return r;
    }
   
   }


public with sharing class Task15 {
    public static void run(){
        List<Employee__c> emp = [SELECT ID FROM Employee__c WHERE First_Name__c ='David' AND Last_Name__c= 'Massay'];
        delete emp;
      
    }

}
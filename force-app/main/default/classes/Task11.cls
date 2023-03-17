public with sharing class Task11 {
    public static void run(){
      Employee__c emp = [SELECT Email__c, Country__c FROM Employee__c WHERE First_Name__c = 'Dwayne' AND Last_Name__c = 'Johnson' Limit 1];
            emp.Email__c = 'dwayne@johnson.com';
            emp.Country__c = 'US';
           UPDATE emp;
    }

}
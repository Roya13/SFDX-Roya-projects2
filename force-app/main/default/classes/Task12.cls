public with sharing class Task12 {
    public static void run(){
        Student__c stn = [SELECT Gender__c, Age__c FROM Student__c WHERE First_Name__c = 'John' AND Last_Name__c ='Wick' LIMIT 1];
        stn.Gender__c = 'Male';
        stn.Age__c = 10;
        UPDATE stn;
    }

}
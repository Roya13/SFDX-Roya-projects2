public with sharing class Task16 {
    public static void run(){
        List<Student__c> stn = [SELECT Id FROM Student__c WHERE First_Name__c = 'Angelina' AND Last_Name__c = 'Jolie'];
        DELETE stn;
    }

}
public with sharing class Task18 {
    public static void run(){
        Student__c stn = new Student__c(First_Name__c = 'Gel',Last_Name__c = 'Gadot');
        INSERT stn;
        Student__c stn2=[SELECT Id FROM Student__c WHERE First_Name__c='Gel' AND Last_Name__c = 'Gaton'];
        DELETE stn2;
        Student__c stn3=[SELECT Id FROM Student__c WHERE First_Name__c='Gel' AND Last_Name__c = 'Gaton' ALL ROWS];
        UNDELETE stn3;
        
    }

}
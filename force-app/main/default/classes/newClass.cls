public with sharing class newClass {
    public static void run() { 

        For(Student__c stn : [SELECT First_Name__c , Last_Name__c, Gender__c FROM Student__c WHERE Joining_Date__c = TODAY]){
            System.debug('Student Name : '+stn.First_Name__c + ' ' +stn.Last_Name__c);
            System.debug('Gender  : '+stn.Gender__c);
            System.debug('============');
        }
    }
}
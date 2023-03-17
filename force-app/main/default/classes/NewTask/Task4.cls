public with sharing class Task4 {
    public static void run() {
        Student__c stn = new Student__c();
        stn.First_Name__c = 'Liya';
        stn.Last_Name__c = 'Valiyeva';
        stn.Age__c = 4;
        stn.Joining_Date__c = Date.today();
        stn.Gender__c = 'Female';
        insert stn;

    }
}
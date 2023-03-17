public with sharing class StudentInfo3 {
    public static void run() {
        List<Student__c> mySdt = [SELECT First_Name__c , Last_Name__c, 	Joining_Date__c FROM Student__c LIMIT 5];

        for(Student__c stn : mySdt){
            System.debug('Student Name : '+stn.First_Name__c+  ' ' +stn.Last_Name__c);
            System.debug('Joining Date : ' +stn.Joining_Date__c);
            System.debug('-------------------------------------');
        }
    }
}
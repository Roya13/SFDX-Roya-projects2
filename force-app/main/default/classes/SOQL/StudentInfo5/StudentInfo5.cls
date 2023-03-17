public with sharing class StudentInfo5 {
    public static void run() {
        List<Student__c> mystudent = [SELECT First_Name__c , Last_Name__c,  Gender__c  From Student__c 
         WHERE Joining_Date__c = TODAY];

        for(Student__c stn : mystudent){
            System.debug('Studet Name : ' +stn.First_Name__c  + ' ' + stn.Last_Name__c);
            System.debug('Gender '+stn.Gender__c);
        }

    }
}
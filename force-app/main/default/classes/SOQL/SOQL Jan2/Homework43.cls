public with sharing class Homework43 {
    public static void run() {
        String GenderIdentify = 'Female';
        List<Student__c> students = [SELECT First_Name__c, Last_Name__c, Age__c, Joining_Date__c FROM Student__c WHERE Gender__c = : GenderIdentify];
        
        for(Student__c stn : students){
            System.debug('Student Name : '+stn.First_Name__c + ' ' + stn.Last_Name__c);
            System.debug('Age' +stn.Age__c + 'years');
            System.debug('Joining Date : ' +stn.Joining_Date__c);
            System.debug('=============');
        }

    }
}
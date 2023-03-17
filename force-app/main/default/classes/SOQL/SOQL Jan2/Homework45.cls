public with sharing class Homework45 {
    public static void run() {
        Integer ageIndentify1 = 8;
        Integer ageIndentify2 = 13;
        List<Student__c> students = [SELECT First_Name__c, Last_Name__c, Age__c, Classroom__r.Standard__c FROM Student__c WHERE Age__c > : ageIndentify1 AND Age__c < : ageIndentify2 ];

        for(Student__c stn : students){
            System.debug('Student Name : ' +stn.First_Name__c + ' ' + stn.Last_Name__c);
            System.debug('Age : ' +stn.Age__c + ' years');
            System.debug('Standard : '+stn.Classroom__r.Standard__c);
            System.debug('=============');
        }
    }
}
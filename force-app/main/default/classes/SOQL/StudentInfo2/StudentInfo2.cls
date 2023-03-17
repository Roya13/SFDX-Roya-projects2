public with sharing class StudentInfo2 {
    public static void run() {
        List<Student__c> myreport = [SELECT First_Name__c , Last_Name__c, Age__c , Gender__c From Student__c ORDER BY Age__c DESC ];

        for(Student__c stn : myreport){
            System.debug('Student Name : '+stn.First_Name__c+  ' ' +stn.Last_Name__c);
            System.debug('Student Age : '+ stn.Age__c +  'years');
            System.debug('Gender '+stn.Gender__c);
            System.debug('-------------------------------------');
        }


    }
}
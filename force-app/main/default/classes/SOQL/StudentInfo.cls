public with sharing class StudentInfo {
    public static void show() {
        List<Student__c> myreport = [SELECT First_Name__c , Last_Name__c, Age__c , Joining_Date__c From Student__c  ];

        for(Student__c stn : myreport){
            System.debug('Student Name : '+stn.First_Name__c+  ' ' +stn.Last_Name__c);
            System.debug('Student Age : '+stn.Age__c);
            System.debug('Joining Date '+stn.Joining_Date__c);
            System.debug('-------------------------------------');
        }

    }
}
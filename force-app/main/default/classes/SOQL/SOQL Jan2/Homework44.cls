public with sharing class Homework44 {
    public static void show(){
        Integer ageMax = 12;
        List<Student__c> students = [SELECT First_Name__c, Last_Name__c, Age__c, Classroom__r.Standard__c FROM Student__c WHERE Age__c > : ageMax ];

        for(Student__c stn : students){
            System.debug('Student Name : ' +stn.First_Name__c + ' ' + stn.Last_Name__c);
            System.debug('Age ' +stn.Age__c + ' years');
            System.debug('Standard '+stn.Classroom__r.Standard__c);
        }
 
        

    }
}
public with sharing class Task10 {
    public static void run(){
     Classroom__c student = [SELECT ID FROM Classroom__c WHERE Standard__c = '5'];
        
        Student__c stn = new Student__c();
        stn.First_Name__c ='John';
        stn.Last_Name__c = 'Wick';
        stn.Joining_Date__c = Date.newInstance(Date.today().year(),Date.today().month(),1);
        stn.Classroom__c = student.id;
          insert stn;
       
       System.debug('Inserted Student ID' +student);
        
    }

}
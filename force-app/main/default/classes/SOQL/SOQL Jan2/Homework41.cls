public with sharing class Homework41 {
    public Static void run(){
        List < Student__c > students = [SELECT First_Name__c, Last_Name__c, (SELECT Name, Date_of_Exam__c, Marks_Obtained__c, Total_Marks__c FROM Exam_Details__r)FROM Student__c];

        for(Student__c stn : students){
            System.debug('Student Name : ' +stn.First_Name__c + ' ' +stn.Last_Name__c );
            System.debug('==============');

        

        for(Exam_Detail__c exm :  stn.Exam_Details__r){
            System.debug('Exam Name: ' +exm.Name);
            System.debug('Date of Exam :'+exm.Date_of_Exam__c);
            System.debug('Marks : ' +exm.Marks_Obtained__c + '/ ' + exm.Total_Marks__c);
            System.debug('=================');
        }
        

    }
}
}
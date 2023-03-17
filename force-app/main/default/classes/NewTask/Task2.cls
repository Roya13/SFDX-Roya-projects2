public with sharing class Task2 {
    public static void run() {
        List <Exam_Detail__c> exm = [SELECT Name, Marks_Obtained__c, Date_of_Exam__c FROM Exam_Detail__c LIMIT 20];
        for(Exam_Detail__c a : exm){
            System.debug('Exam Name ' +a.Name);
            System.debug('Marks Obtained ' +a.Marks_Obtained__c);
            System.debug('Date of Exam ' +a.Date_of_Exam__c);
            System.debug('-----------');
        }

    }
}
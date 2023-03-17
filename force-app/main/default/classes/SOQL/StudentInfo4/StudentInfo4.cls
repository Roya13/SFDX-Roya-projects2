public with sharing class StudentInfo4 {
    public static void run() {
        Student__c mySTN = [SELECT First_Name__c , Last_Name__c, Age__c FROM Student__c  ORDER BY Age__c DESC LIMIT 1 OFFSET 2];
        System.debug(mySTN);
    }
}
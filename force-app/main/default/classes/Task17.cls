public with sharing class Task17 {
    public static void run(){
        Employee__c emp = new Employee__c(First_Name__c ='Scarlett', Last_Name__c ='Johansson');
        INSERT emp;
        Employee__c emp2 =[SELECT Id FROM Employee__c WHERE First_Name__c='Scarlett'AND Last_Name__c ='Johansson'];
        DELETE emp2;
        Employee__c emp3 =[SELECT Id FROM Employee__c WHERE First_Name__c='Scarlett'AND Last_Name__c ='Johansson' AND ISDELETED = true];
        UNDELETE emp3;
        
        
        
    }

}
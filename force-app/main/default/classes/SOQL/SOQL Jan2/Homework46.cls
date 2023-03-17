public with sharing class Homework46 {
    public static void run() {
        Integer salaryMax = 100000;
        Integer salaryMix = 50000;
        List<Employee__c> employees = [SELECT First_Name__c, Last_Name__c, Join_Date__c, Salary__c, Department__r.Short_Code__c FROM Employee__c WHERE Salary__c > : salaryMax OR Salary__c < : salaryMix];

        for(Employee__c emp : employees){
            System.debug('Student Name : ' +emp.First_Name__c + ' ' + emp.Last_Name__c);
            System.debug('Joining_Date : ' +emp.Join_Date__c);
            System.debug('Short Code : '   +emp.Department__r.Short_Code__c);
            System.debug('Salary : ' +emp.Salary__c);
            System.debug('=============');
        }

    }
}
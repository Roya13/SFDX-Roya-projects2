public with sharing class Task3 {
    public static void run() {
        Employee__c emp = new Employee__c();
        emp.First_Name__c = 'Daniz';
        emp.Last_Name__c = 'Valiyeva';
        emp.Country__c = 'USA';
        emp.Join_Date__c = Date.today();
        emp.Salary__c = 150000;
        insert emp;

    }
}
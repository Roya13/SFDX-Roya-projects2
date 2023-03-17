public with sharing class Homework42 {
    public static void run() {
        Integer salaryMax = 50000;
List<Employee__c> employees = [SELECT First_Name__c, Last_Name__c, Country__c, Salary__c FROM Employee__c WHERE Salary__c < : salaryMax];

for(Employee__c emp : employees){
    System.debug('Employee Name : '+emp.First_Name__c + ' ' + emp.Last_Name__c);
    System.debug('Salary' +emp.Salary__c + '$');
    System.debug('=============');
}
    }
}
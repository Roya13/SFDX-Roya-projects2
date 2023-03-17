public with sharing class EmployeeInfo {
    public static void run() {
        List<Employee__c> myEmp = [ SELECT First_Name__c , Last_Name__c , Join_Date__c From Employee__c ORDER BY Join_Date__c DESC];

        
        for(Employee__c stn : myEmp){
            System.debug('Employee Name : '+stn.First_Name__c+  ' ' +stn.Last_Name__c);
            System.debug('Joining Date : '+ stn.Join_Date__c );
            System.debug('-------------------------------------');
        }

    }
}
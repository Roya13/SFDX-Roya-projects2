public with sharing class EmployeeInfo2 {
    public static void run() {
        List<Employee__c> myEmp = [ SELECT First_Name__c , Last_Name__c , Country__c , Email__c From Employee__c ORDER BY Name ASC LIMIT 5];

        for(Employee__c stn : myEmp){
            System.debug('Employee Name : '+stn.First_Name__c+  ' ' +stn.Last_Name__c);
            System.debug('Country : ' +stn.Country__c );
            System.debug('Email : ' +stn.Email__c);
            System.debug('-------------------------------------');
        }


    }
}
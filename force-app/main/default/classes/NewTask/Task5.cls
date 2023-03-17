public with sharing class Task5 {
    public static void run() {
        SObject emp = new Employee__c();
        emp.put('First_Name__c','Gunash');
        emp.put('Last_Name__c', 'Nabiyeva');
        emp.put('Country__c', 'AZ');
        emp.put('Join_Date__c', Date.today());
        emp.put('Email__c','gunash@yahoo.com');
        emp.put('Salary__c', 500000);

        Employee__c castedEmp = (Employee__c)emp;
        System.debug(castedEmp);

    }
}
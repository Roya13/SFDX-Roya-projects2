public with sharing class Task7 {
    public static void run() {
    Employee__c newEmp = new Employee__c();
    newEmp.First_Name__c = 'Dwayne';
    newEmp.Last_Name__c = 'Johnson';
    newEmp.Join_Date__c = Date.today();
    newEmp.Email__c = 'dwayne@johnson.com';
    insert newEmp;

    List<Employee__c> empList = [SELECT id FROM Employee__c WHERE Email__c = 'dwayne@johnson.com'];

    for(Employee__c emp : empList){
        if(emp.First_Name__c == 'Dwayne' && emp.Last_Name__c == 'Johnson'){
            emp.First_Name__c = 'The';
            emp.Last_Name__c = 'Rock';
            update emp;
        }
    }

    System.debug(empList);

    }
}
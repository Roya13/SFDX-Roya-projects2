public with sharing class Task9 {
    public static void run() {
        Employee__c emp = new Employee__c();
        emp.First_Name__c = 'Dwayne';
        emp.Last_Name__c = 'Johnson';
        emp.Salary__c = 100000;
        emp.Join_Date__c = Date.newInstance(Date.today().year(),Date.today().month(), 1);


       String deptName = 'Information Technology';

        id deptId;
        List<Department__c> depts = [SELECT ID FROM Department__c WHERE Name = : deptName LIMIT 1];

        if(!depts.isEmpty()){
            deptId = depts[0].Id;
        }
        else{

        }
        emp.Department__c = deptId;

        insert emp;

        System.debug('Inserted Employee ID' +emp.Id);

    }
}
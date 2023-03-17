public with sharing class Task13 {
    public static void run(){
        Employee__c emp = new Employee__c(First_Name__c = 'Peter', Last_Name__c = 'Parker', Salary__c = 235000 );
        INSERT emp;
        Employee__c emp2 = new Employee__c();
        emp2.put('First_Name__c', 'David');
        emp2.put('Last_Name__c','Massay');
        emp2.put('Salary__c', 65000);
        emp.Email__c = 'peter@parker.com';
        List<Employee__c> emp3 =new List<Employee__c>();
        emp3.add(emp);
        emp3.add(emp2);
        UPSERT emp3;
    }

}
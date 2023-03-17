public with sharing class Task21 {
    public static void run() {
        List<Employee__c> listofemployee =new List< Employee__c>();
        
        Id dep1 = [SELECT Id FROM Department__c
                   WHERE Name_c= 'Sales' AND Short_Code_c='SA'LIMIT 1].Id;
        Employee__c emp1 =newEmployee_c();
        emp1.First_Name__c='Roya';
        emp1.Last_Name__c='Aliyeva';
        emp1.Department__c=dep1;
        listofemployee.add(emp1);
        
        Employee_c emp2 =new Employee__c();
        emp2.First_Name__c='Sahila';
        emp2.Last_Name__c='Ibrahimli';
        emp2.Department__c=dep1;
        listofemployee.add(emp2);
        
        Employee_c emp3 =newEmployee_c();
        emp3.First_Name__c='Vugar';
        emp3.Last_Name__c='Guliyev';
        emp3.Department__c=dep1;
        listofemployee.add(emp3);
        
        Department_c department1 = [SELECT Id FROM Department__c
                                     WHERE Name__c ='Sales' AND Short_Code_c='SA'LIMIT 1];
        department1.Head_of_Department_First_Name_c=emp1.First_Name__c;
        Update department1;
        
        
        Id dep2 = [SELECT Id FROM Department__c
                   WHERE Name__c='Support' AND Short_Code_c= 'SE'LIMIT 1].Id;
        Employee_c empl1 =newEmployee_c();
        empl1.First_Name__c='Liya';
        empl1.Last_Name__c='Valiyeva';
        empl1.Department__c=dep2;
        listofemployee.add(empl1);
        
        Employee_c empl2 =new Employee_c();
        empl2.First_Name__c='Gunash';
        empl2.Last_Name__c='Nabiyeva';
        empl2.Department__c=dep2;
        listofemployee.add(empl2);
        
        Employee_c empl3 =new Employee__c();
        empl3.First_Name__c='Sevda';
        empl3.Last_Name__c='Izmayov';
        empl3.Department__c=dep2;
        listofemployee.add(empl3);
        
        Department_c department2 = [SELECT Id FROM Department__c WHERE Name__c ='Support' LIMIT 1];
        department2.Head_of_Department_First_Name_c=empl3.First_Name_c;
        Update department2;
        
        Insert listofemployee;


    }
}
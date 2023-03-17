public class EmployeeWithCountryCondition {
    public static void run (String country){
        String countryCriteria =country;
        
        list<Employee__c> employees = [SELECT First_Name__c,Last_Name__c,Country__c
                                     FROM Employee__c
                                     Where
                                      Country__c = : countryCriteria
                                     ];
        for(Employee__c emp :employees){
            System.debug('Employee Name: ' +emp.First_Name__c + ' ' +emp.Last_Name__c);
            System.debug('Country :' +emp.Country__c);
            System.debug('----------------');
        }
        
    }
}
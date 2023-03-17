public with sharing class Task22 {
    public static void run () {
        Id dep1 =[SELECT ID FROM Department__c WHERE Name__c= 'Sales'].Id;
        Id dep2 =[SELECT ID FROM Department__c WHERE Name__c= 'Information Technology'].Id;
        Id dep3 =[SELECT ID FROM Department__c WHERE Name__c= 'Marketing'].Id;
        Id dep4 =[SELECT ID FROM Department__c WHERE Name__c= 'Support'].Id;
        Id dep5 =[SELECT ID FROM Department__c WHERE Name__c= 'Billing'].Id;
        
        List<Employee__c> listemp =new List<Employee__c>{
            New Employee__c(First_Name__c='Roya', Last_Name__c='Valiyeva', Salary__c=155000, Join_Date__c=Date.newInstance(2019,8,12), Department__c = dep1),
                NewEmployee_c(First_Name__c='Liya',Last_Name__c='Valiyeva', Salaryc=650000, Join_Date__c=Date.newInstance(2014,1,19), Department_c=dep2),
                NewEmployee_c(First_Name__c='Sahila',Last_Name__c='Ibrahimli', Salaryc=300000, Join_Date__c=Date.newInstance(2016,7,15), Department_c=dep3),
                NewEmployee_c(First_Name__c='Daniz',Last_Name__c='Valiyeva', Salaryc=142000, Join_Date__c=Date.newInstance(2021,2,28), Department_c=dep4),
                NewEmployee_c(First_Name__c='Gunash',Last_Name__c='Nabiyeva', Salaryc=93000, Join_Date__c=Date.newInstance(2005,12,9), Department_c=dep5)};
                    
                    List<Database.SaveResult>results=Database.insert(listemp);
        for(Database.SaveResult res:results){
            if(res.isSuccess()){
                system.debug('successfully inserted');
            }else{
                Database.Error[]errors=res.getErrors();
                for(Database.Error err:errors){
                    system.debug('Error occurred');
                    system.debug(err.getMessage());
                    system.debug(err.getStatusCode());
                }
            }
        }


    }
}
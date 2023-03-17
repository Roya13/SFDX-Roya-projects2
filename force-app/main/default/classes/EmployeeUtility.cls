public with sharing class EmployeeUtility {
    public static void viewTheseFields(List<String> fields){
    String r = 'SELECT Id';
     
    for(String field : fields){
      r += ' ,' + field;
    }
       r +=' From Employee__c';
    List<Employee__c> employees = Database.query(r);

    for (Employee__c emp : employees){
      for (String field : fields) {
        System.debug(field+ ': ' +emp.get(field));
      }
    }
  }
}
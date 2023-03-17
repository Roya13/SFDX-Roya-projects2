public with sharing class Task6 {
    public static void run() {
        SObject stn = new Student__c();
        stn.put('First_Name__c','Aqshin');
        stn.put('Last_Name__c', 'Aliyev');
        stn.put('Age__c', 32);
        stn.put('Joining_Date__c',Date.today());
        stn.put('Gender__c','Male');

        Student__c castedStn = (Student__c)stn;
        System.debug(castedStn);

    }
}
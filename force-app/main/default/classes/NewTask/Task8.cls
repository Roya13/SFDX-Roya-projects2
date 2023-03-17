public with sharing class Task8 {
    public static void run() {
        Student__c stn = new Student__c();
        stn.First_Name__c = 'Gozal';
        stn.Last_Name__c = 'Baxshaliyeva';
        stn.Age__c = 32;
        stn.Joining_Date__c = Date.today();
        stn.Gender__c = 'Female';
        insert stn;

        List<Student__c> stnList = [SELECT id FROM Student__c WHERE First_Name__c = 'Harry' ];

        for(Student__c stnNew : stnList){
            if(stn.First_Name__c == 'Harry' && stn.Last_Name__c == 'Potter'){
                stn.Age__c = 12;
                update stn;

            }
        }

        System.debug(stnList);

    }
}
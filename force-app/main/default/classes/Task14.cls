public with sharing class Task14 {
    public static void run(){
        Student__c stn = new Student__c(First_Name__c ='Emma', Last_Name__c ='Watson', Age__c = 11);
        Classroom__c standard1=[SELECT ID FROM Classroom__c WHERE Standard__c ='6'];
        stn.Classroom__c=standard1.ID;
        INSERT stn;
        stn.Gender__c='Female';
       
        Student__c stn2 = new Student__c(First_Name__c = 'Angelina', Last_Name__c = 'Jolie', Age__c = 13);
        Classroom__c standard2=[SELECT ID FROM Classroom__c WHERE Standard__c ='8'];
        stn2.Classroom__c=standard2.ID;
        
        List<Student__c> stn3 = new List<Student__c>();
        stn3.add(stn);
        stn3.add(stn2);
        UPSERT stn3;
        
    }

}
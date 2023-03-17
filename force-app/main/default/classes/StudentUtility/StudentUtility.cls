public with sharing class StudentUtility {
    public static void  viewTheseFields(List<String> feilds) {

        String r = 'SELECT ID';
        for(String feild : feilds){
            r+= ', ' + feild; 
        }

        r+=' FROM Student__c';
	System.debug(r);
    List<Student__c> students = Database.query(r);

        for(Student__c stn : students){
        for(String feild : feilds){
            System.debug(feild + ' : ' +stn.get(feild));
        }

        System.debug('=========');
    }
}
}
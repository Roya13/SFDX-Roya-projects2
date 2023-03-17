public class MyAcconts {
    public static void run(){
        List<Exam_Detail__c> eds = new List<Exam_Detail__c>();
List<Student__c> students = [SELECT Id FROM Student__c];
Integer i = 1;
for(Student__c stu : students){
    Date dt = Date.newInstance(2022, 9, i);             // Month of date
    i++;
    Exam_Detail__c ed = new Exam_Detail__c();
    ed.Name = 'Term 1 - Mathematic';               // exam name
    ed.Date_of_Exam__c = dt;
    ed.Student__c = stu.Id;
    ed.Total_Marks__c = 100;
    ed.Marks_Obtained__c = 10+i;                        // marks obtained
    eds.add(ed);
}
INSERT eds;
    }
}
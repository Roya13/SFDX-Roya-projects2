trigger CaseInsertTrigger on Case (before insert) {
    for(Case cs : Trigger.New){
        if(cs.ContactId !=null && cs.Subject !=null){
            cs.Priority ='High';
        }
        else if(cs.ContactId != null){
            cs.Priority = 'Normal';
        }
        else if(cs.Subject != null){
            cs.Priority = 'Low';
        }
    }

}
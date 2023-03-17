trigger MyCaseTrigger on Case (after insert,before update,after update) {
    if(Trigger.isInsert){
          System.debug(' Trigger After Insert Event');
    }
    if(Trigger.IsBefore){
    if(Trigger.isUpdate){
        System.debug('Trigger Before Update Event');
    }
        if(Trigger.isAfter){
            if(Trigger.isUpdate){
                System.debug('Trigger After Update Event');
            }
        }
            }
    }
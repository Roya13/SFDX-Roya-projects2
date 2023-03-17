trigger MyContactTrigger on Contact (before insert,before update,after update){
    if(Trigger.isInsert){
         System.debug('Trigger before insert event');
    }
    if(Trigger.isUpdate){
        System.debug('Trigger before update event');
    }
    if(Trigger.isAfter){
        if(Trigger.isInsert){
            System.debug('Trigger after insert event');
        }
        if(Trigger.isUpdate){
            System.debug('Trigger after update event');
        }
   
    }

}
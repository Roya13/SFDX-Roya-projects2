/*trigger MyContactTrigger on Contact (before insert,before update,after update){
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
*/


trigger ContactPreventRecursion on Contact (after update) {
   
    Set<Id> contactIds = new Set<Id>();
    for (Contact contact : Trigger.new) {
        contactIds.add(contact.Id);
    }

    Set<Id> processedContactIds = new Set<Id>();
    for (Contact contact : [SELECT Id FROM Contact WHERE Id IN :contactIds FOR UPDATE]) {
        processedContactIds.add(contact.Id);
    }

  
    List<Contact> contactsToUpdate = new List<Contact>();
    for (Contact contact : Trigger.new) {
        if (!processedContactIds.contains(contact.Id)) {
            contactsToUpdate.add(contact);
        }
    }

    if (contactsToUpdate.size() > 0) {
        List<Contact> processedContacts = new List<Contact>();
        for (Contact contact : contactsToUpdate) {
            processedContacts.add(new Contact(Id=contact.Id));
        }
        update processedContacts;
    }
}
trigger MyAccountTrigger on Account (before insert, before update) {
    if(Trigger.isInsert && Trigger.isBefore){
        for(Account acc : Trigger.New){
           if(acc.Match_Billing_Address__c == true){
            	acc.ShippingPostalCode = acc.BillingPostalCode;
        	} 
        }
    }
	if(Trigger.isUpdate && Trigger.isBefore){
        for(Account acc : Trigger.New){
           if(acc.Match_Billing_Address__c == true){
            	acc.ShippingPostalCode = acc.BillingPostalCode;
        	} 
        }
    }
}
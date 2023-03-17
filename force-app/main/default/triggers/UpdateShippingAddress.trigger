trigger UpdateShippingAddress on Account (before insert) {
    for(Account acc : Trigger.new){
        if(acc.BillingStreet != null && acc.ShippingStreet ==null){
            acc.ShippingStreet = acc.BillingStreet;
            acc.ShippingCity = acc.BillingCity;
            acc.ShippingState = acc.BillingState;
            acc.ShippingPostalCode = acc.BillingPostalCode;
            acc.ShippingCountry = acc.BillingCountry;
        }
    }

}
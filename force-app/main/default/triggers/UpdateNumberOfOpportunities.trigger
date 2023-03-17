trigger UpdateNumberOfOpportunities on Opportunity (after insert) {
    Set<Id> accountIds = new Set<Id>();
    for (Opportunity opp : Trigger.new) {
        accountIds.add(opp.AccountId);
    }

    List<Account> accountsToUpdate = new List<Account>();
    for (AggregateResult result : [SELECT AccountId, COUNT(Id) oppCount
                                   FROM Opportunity
                                   WHERE AccountId IN :accountIds
                                   GROUP BY AccountId]) {
        Account acc = new Account(Id=(Id)result.get('AccountId'));
        acc.Number_Of_Opportunities__c = (Integer)result.get('oppCount');
        accountsToUpdate.add(acc);
    }

    if (!accountsToUpdate.isEmpty()) {
        update accountsToUpdate;
    }
}
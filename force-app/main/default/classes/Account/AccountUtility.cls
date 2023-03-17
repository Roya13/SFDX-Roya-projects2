public with sharing class AccountUtility {
    public static void viewAnnualRevenue() {
        List<Account> accountlist = new List<Account>();

        accountlist = [SELECT Name, AnnualRevenue FROM Account];

        for(Account acc : accountlist){
            System.debug('Name ' + acc.Name + ' ' + 'Annual Revenue ' +acc.AnnualRevenue);
        }

    }
}
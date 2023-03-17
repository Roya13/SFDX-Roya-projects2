// syntax of any Batch Apex class
// Class Name will vary

public class MyAccountsBatch implements Database.Batchable<sObject>{
    public Database.QueryLocator start(Database.BatchableContext cx){
        String query = 'SELECT id, Name, Site FROM Account';
        return Database.getQueryLocator(query);
    }
    
    public void execute(Database.BatchableContext cx, List<Account> accounts){
        for(Account acc: accounts){
            acc.Site = 'Site: ' +acc.Name;
        }
        UPDATE accounts;
    }
    
    public void finish(Database.BatchableContext cx){
    }
}
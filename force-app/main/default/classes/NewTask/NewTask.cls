public with sharing class NewTask {
    public static void run() {
        List <Account> acc = [SELECT NAME, Type FROM ACCOUNT LIMIT 10];
        for(Account a : acc){
            System.debug('Account-------' +a);
        }

    }
}
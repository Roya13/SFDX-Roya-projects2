public with sharing class Task19 {
    public static void run(){
        Account acc1 = New Account(Name='ABC Corp', Website='https://abccorporation.com/', 
                                   Phone='8086712671', BillingStreet='Leonui St.Waipahu, HI USA 96797');
        Insert acc1; 
       
        Account acc2 = New Account(Name='ABC Corporations', Website='www.abccorporation.com', 
                                   Phone='9768681996', BillingStreet='123 Main St.,Can Carlos, CA, 94040');
        Insert acc2; 
        
        Merge acc2 acc1;
        system.debug('ABC Corporations : '+acc2);
    }
}
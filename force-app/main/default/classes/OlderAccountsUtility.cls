public class OlderAccountsUtility {
    
    public static void updateOlderAccounts(){
        
        Account[] acc=[select Id,Description from account order by createddate asc limit 5 ];
        
        for(Account a:acc){
            System.debug('Account details' + a);
            a.Description='Heritage Account';
        }         
        
        update acc;
    }

}
public class totalContactOnAccountHandler {

    public static void updateAccounts(List<Contact> conList){
         System.debug('conList-->'+conList);
        Set<ID> AccountIds= new Set<ID>();
        For(Contact con : conList){
            if(con.accountID!=null){
              AccountIds.add(con.accountID);  
            }
        }
        
      Account[] accLIst=[select Id,NOOfContacts__c ,(select ID from contacts)  from account where id in: AccountIds ];
        System.debug('accLIst-->'+accLIst);
        List<Account> updatedList=new List<Account>();
        for(Account accId : accLIst){
            Account tempAcc=new Account();
            tempAcc.Id=accId.ID;
            tempAcc.NOOfContacts__c=accId.contacts.size();
            
            updatedList.add(tempAcc);
        }
        System.debug('updatedList-->'+updatedList);
        if(updatedList!=null && updatedList.size()>0){
            update updatedList;
        }        
    }
}
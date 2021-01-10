public class AccountHandler {

    public static account insertNewAccount( String accountName)
    {
        
        Account acc =new Account(Name=accountName); 
        
        try{
          insert acc;
            
        }catch(DMLException e)
        {
            System.debug('error' + e.getMessage());
            acc=null;
        }
        
        return acc;
        
    }
    
}
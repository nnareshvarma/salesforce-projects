public class OpportunityCreation {

    /*public  OpportunityCreation(){
        
        System.debug('inside constructor -->');
        
        //opportunity abc= new opportunity(name='Naresh Varma',StageName='Prospecting',closedate=system.today());
        account abc= new account(name='harishvarma132',annualrevenue=123.00);
        insert abc;
        System.debug('opportunity name -->'+ abc.Name);
         System.debug('opportunity name -->'+ abc.id);
        delete abc;
        
        //return abc.id;
        
    }
*/
   
    
    public pagereference  OpportunityCreation11(){
        System.debug('inside OpportunityCreation11 -->');
        //opportunity abc= new opportunity(name='Naresh Varma',StageName='Prospecting',closedate=system.today());
        account abc= new account(name='Naresh Varma',annualrevenue=123.00);
        insert abc;
        System.debug('opportunity name -->'+ abc.Name);
         System.debug('opportunity name -->'+ abc.id);
        return null;
        
    }
}
trigger TransferContact on Contact (before insert) {

    Account[] accountID=[select Id from account where name ='sfdc99'];
    For(contact c:trigger.new){
        c.AccountId=accountID[0].id;
    }
    
}
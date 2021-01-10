trigger ContactWithaccountPhone on Contact (before  insert) {
    
    set<id> conSetId= new set<id>();
             for(contact con:trigger.new){
       
        if(con.AccountId !=null){
          
           conSetId.add(con.accountID) ;
        }
    }

    
    Map<ID,account> accountMap=new  Map<ID,account>([select id,phone from account where id=:conSetId]);
    
    
    for(contact conlist:Trigger.New){
        
     
        
        conlist.OtherPhone=accountMap.get(conlist.AccountId).phone;
    }


}
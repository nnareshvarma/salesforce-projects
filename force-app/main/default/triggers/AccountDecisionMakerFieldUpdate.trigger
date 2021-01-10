trigger AccountDecisionMakerFieldUpdate on Contact (after insert,after update) {
    /*set<id> phoneAccount =new  set<id>();
    set<id> nonphoneAccount=new  set<id>();
    for(Contact con:Trigger.new){
        if(con.OtherPhone.contains('123')){
        phoneAccount.add(con.accountID);
            }
    }
    
     for(Contact con:Trigger.new){
        if(!con.OtherPhone.contains('123') && !(phoneAccount.contains(con.accountID))){
        nonphoneAccount.add(con.accountID);
            }
    }
    
   Account[] phoneAccountList=[select id,phone from account where id =:phoneAccount];
    Account[] nophoneAccountList=[select id,phone from account where id =:nonphoneAccount];
    
    List<Account> TotalList = new List<Account>() ;
    for(Account accPhone:phoneAccountList){
        accPhone.phone='123456';
        TotalList.add(accPhone);
    }
    for(Account accnonPhone:nophoneAccountList){
        accnonPhone.phone='78988';
        TotalList.add(accnonPhone);
    }
    
    update TotalList; */
}
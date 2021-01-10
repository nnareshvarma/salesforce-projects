trigger errordelete on Account (before delete) {

    Map <ID,Account> acc=new Map<ID,Account>([select id,(select id,name from contacts) from account where id=: trigger.oldMap.keySet()]);
    
   
    for(Account accs:trigger.old){
        if(acc.get(accs.id).contacts.size()>2){
            
            accs.adderror('account has more than 2 contats It connect be deleted');
            
        }
    }
}
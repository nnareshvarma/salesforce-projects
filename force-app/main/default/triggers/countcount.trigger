trigger countcount on Contact (after insert) {

    set<id> accountid=new set<id>();
    
    for(contact temp:trigger.new){
        accountid.add(temp.AccountId);
    }
    
   LIst<Account> abc= [Select id,name,(select id,name from contacts) from Account where id in :accountid];
    
    list<account> finalaccount=new  list<account>();
    
    for(Account tempaccount:abc){
      
        tempaccount.NOOfContacts__c=tempaccount.contacts.size();
        finalaccount.add(tempaccount);
    }
    
    update finalaccount;
    
    
}
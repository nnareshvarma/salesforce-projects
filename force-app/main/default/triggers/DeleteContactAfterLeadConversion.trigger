trigger DeleteContactAfterLeadConversion on Lead (after update) {
    set<Id> contactId=new set<id>();
    for(Lead abc:Trigger.new){
        if(abc.isConverted==true){
           contactId.add(abc.ConvertedContactId); 
        }
    }
    Contact[] contactTobeDeleted=[select Id from contact where id in :contactId];
    if(contactTobeDeleted.size()>0 && contactTobeDeleted!=null)
    {
    delete contactTobeDeleted;
    }
}
trigger TotalContactOnAccount on Contact (after insert,after update,after delete,after undelete) {
  
    if(trigger.isInsert || trigger.Isundelete||trigger.isUpdate ){
            totalContactOnAccountHandler.updateAccounts(Trigger.new);
        }
      if(trigger.isdelete ){
            totalContactOnAccountHandler.updateAccounts(Trigger.old);
        }
    
   
}
trigger OrderEventTrigger on Order_Event__e (after insert) {

list<task> tsk=new  list<task> ();   
    for(Order_Event__e e:trigger.new){
        task tskTemp=new task();
        if(e.Has_Shipped__c==true ){
            tskTemp.Priority='Medium';
            tskTemp.Subject='Follow up on shipped order ' + e.Order_Number__c;
            tskTemp.OwnerId=e.CreatedById;
            tsk.add(tskTemp);
        }
    }
    insert tsk;

}
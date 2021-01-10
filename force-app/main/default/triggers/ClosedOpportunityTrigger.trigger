trigger ClosedOpportunityTrigger on Opportunity (after insert,after update) {
    
    //opportunity[] oppList=[select Id,StageName,Name from Opportunity  where Id IN : Trigger.New];
    
    
    List<Task> taskList=new List<Task>();
    
    for(opportunity opp :[select Id,StageName,Name from Opportunity  where Id IN : Trigger.New]){
        if(opp.StageName=='Closed Won'){
            Task tk= new task();
            tk.Subject='Follow Up Test Task';
            tk.WhatId=opp.Id;
            taskList.add(tk);
           }
            
    }
    
    insert taskList;
    
    

}
global class batchClass implements database.Batchable<sobject>{
    global  database.QueryLocator start(database.BatchableContext BC){
        String query='select Id from opportunity where createdDate > system.now().addmonths(5)';
               return Database.getQueryLocator(query);
        
    }	
    global void execute(Database.BatchableContext BC,List<opportunity> opplist){
        List<opportunity> newList=new List<opportunity>();
        for(opportunity p:opplist){
         p.BatchVisibity__c=true;
            newList.add(p);
        }
        update newList;
        
    }
    global void  finish(database.BatchableContext BC){        
    }

}
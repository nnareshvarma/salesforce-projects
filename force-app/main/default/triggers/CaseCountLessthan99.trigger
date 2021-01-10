trigger CaseCountLessthan99 on Case (before insert,before update) {
 
    Set <Id> caseownerIDs= new set<Id>();
    set<Id> userIds=new set<Id>();
    for(Case cs:Trigger.New){	
        caseownerIDs.add(cs.ownerID);       
    }
    
    AggregateResult[] Ar=[select ownerID,count(ID) OwnerCount from case where ownerId in : caseownerIDs group by ownerId];
    Map<ID,Integer> myCount= new Map<ID,Integer>();
    for(AggregateResult aa:Ar){
        id ownerIDS=(ID) aa.get('ownerID');
        Integer count=(Integer) aa.get('OwnerCount');
        myCount.put(ownerIDS,count);
    }
    
    
    Map<Id,User> userMap=new Map<Id,User>([select Name from USER where id in:caseownerIDs]);
    for(case cs:Trigger.New){
        if(myCount.get(cs.ownerID)>2){
            //cs.addError('Maximum allowes is 2'+usermap.get(cs.ownerID).name);
        }
    }
    
  /*      
  List<Case> caseList =[select ID,ownerId from case where ownerID in:caseownerIDs]; 
    Map<ID,List<Case>> caseListMap =new Map<ID,List<Case>>();
    for(case cs:caseList){
        if( caseListMap.containsKey(cs.OwnerId)){
           List<case> cases= caseListMap.get(cs.OwnerId);
            cases.add(cs);
           caseListMap.put(cs.OwnerId,cases);
        }
        else{
         caseListMap.put(cs.OwnerId,(new List<Case>{cs}));
        }
    }   
     
   */
    

}
public class DuplicateRemoval {

    public static void test(){
        
        List<AggregateResult> arList=[select min(id) minID from Observation__c   group by name];
       Set<id> noDup=new set<id>();
        For(AggregateResult ar:arList ){
            noDup.add((ID)ar.get('minID') );
        }
       List<Observation__c> duplicates=[select id,name from Observation__c where id not in :noDup ];
         delete duplicates;
    } 
}
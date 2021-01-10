public class AccountUpdateCheck {

    public static void accUpdate(list<account> accList){
        
        list<account> accLists=[select id,name,SLA__c from account where id=:accList[0].id ];
        system.debug('accList-->'+accLists);
        for(account abc:accLists){
            abc.SLA__c='Gold';
        }
        system.debug('before accList-->'+accLists);
        update accLists;
        system.debug('After accList-->'+accLists);
        
        CaseTest__c cas=new CaseTest__c(name='test1');
        system.debug('before accList-->'+cas);
        insert cas;
         system.debug('after cas-->'+cas);
    }
}
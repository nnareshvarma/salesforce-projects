public class  TopicsRecordDownload{
 public TopicAssignment[] TAControl {get;set;}
    public String xmlheader {get;set;}
    public String endfile{get;set;}
    public String topicName {get;set;}
    public Topic[] topicsList {get;set;}

    public TopicsRecordDownload(){
        topicsList=[SELECT ID,Name FROM Topic];
      
    }
    
    public PageReference caseTopicsDownload(){
        
        set<Id> topicIds=new set<Id>();
        System.debug('IN Case' + topicName);
        for(Topic A:[SELECT Id FROM Topic where Name=:topicName])
        topicIds.add(A.Id);
        
        System.debug('topicIds ' + topicIds);
          xmlheader ='<?xml version="1.0"?><?mso-application progid="Excel.Sheet"?>';
        endfile = '</Workbook>';
    TAControl=[SELECT CreatedById,CreatedDate,EntityId,EntityKeyPrefix,EntityType,Id,IsDeleted,SystemModstamp,TopicId
        FROM TopicAssignment where TopicId in : topicIds];
        System.debug('TA control ' + TAControl);
        return null;
    }

}
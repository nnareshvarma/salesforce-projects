public class FormatCheck {
    public Decimal st {get;set;}	
    public FormatCheck(){
        Case s=[SELECT Id,CaseNumber,currency__c FROM Case where id='5000o00002aujHG'];
        st=s.currency__c;
        
    }
}
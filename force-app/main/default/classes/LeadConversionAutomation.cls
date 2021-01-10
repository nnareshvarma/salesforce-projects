public class LeadConversionAutomation {
@invocableMethod
    public static void autoconversion(){
        Lead a=[select Id from Lead where id='00Q0o00001WulRo'];
        Database.LeadConvert lc=new Database.LeadConvert();
        lc.setLeadId(a.Id);
        lc.setDoNotCreateOpportunity(true);
        LeadStatus ls=[select Id,MasterLabel  from LeadStatus where isconverted=true limit 1];
        lc.setConvertedStatus(ls.MasterLabel);
        database.LeadConvertResult r=Database.convertLead(lc);
    }
    
}
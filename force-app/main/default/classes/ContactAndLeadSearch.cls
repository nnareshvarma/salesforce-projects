public class ContactAndLeadSearch {

    public static List<List< SObject>> searchContactsAndLeads(String param){
        
         String searchQuery='FIND \''+param+'\' IN ALL FIELDS RETURNING Lead(Name,FirstName,LastName),Contact(FirstName,LastName,Department)';
        
        List<List< SObject>> conlist=search.query(searchQuery);
        return conlist;
        
    }
               
        
}
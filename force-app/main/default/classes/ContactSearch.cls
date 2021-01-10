public class ContactSearch {
    public static 	List<Contact> searchForContacts(String lastName,String mailingPostalCode){

contact[] conList=[select Name from contact where LastName=:lastName and MailingPostalCode=:mailingPostalCode];
            
    return conList;
        
        
    }
      
}
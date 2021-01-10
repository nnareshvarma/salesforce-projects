public class ContactListController {

@auraEnabled   
public  static list<Contact> getContactList(String accountID){
    list<Contact> conList= new list<Contact>([select id,name,phone,email  from contact where accountID=:accountID ]);
return conList;
}

@auraEnabled   
public  static Contact createContact(Contact con,ID accountID){
    
    con.accountID=accountID;
    insert con;
    return con;
}
    
    
}
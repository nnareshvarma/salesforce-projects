@isTest
public class TestRestrictContactByName {

    @isTest static void myTest(){
        Contact c= new Contact(FirstName='Naresh',LastName='INVALIDNAME');
        insert c;
    }
}
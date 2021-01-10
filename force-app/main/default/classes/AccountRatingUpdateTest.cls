@isTest
public class AccountRatingUpdateTest {

    static testMethod void accountRatingTest1(){
        Account abc=new Account(Name='Naresh Varma',AnnualRevenue=50);
        insert abc;
            
    }
     static testMethod void accountRatingTest2(){
        Account abc=new Account(Name='Naresh Varma',AnnualRevenue=150);
        insert abc;
            
    }
}
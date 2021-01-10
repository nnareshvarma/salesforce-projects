@isTest()
public class TestVerifyDate {
    
   static Date D1=Date.newInstance(2019,01, 01);
   static Date D2=Date.newInstance(2019,01, 15);
   static  Date D3=Date.newInstance(2019,03, 01);
    

    @isTest static void CheckDatesTest(){
        Date Temp=VerifyDate.CheckDates(D1,D2);
        System.assertEquals(D2, Temp);
        Date Temp2=VerifyDate.CheckDates(D2,D3);       
             
    }
    
   
   
    
}
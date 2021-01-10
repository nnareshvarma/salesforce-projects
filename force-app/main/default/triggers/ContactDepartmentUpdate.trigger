trigger ContactDepartmentUpdate on Contact (before update) {
    
    
   
    List<contact> conlist=trigger.new;
    
       
 /*
contact abc=new contact();
    abc=[select Id,Department,account.Industry from contact where id=:conlist[0].id];  
        System.debug('abc-->'+abc);
        System.debug('abc.Department-->'+abc.Department);*/
    
    System.debug('conlist[0].account.Industry->'+conlist[0].account.Industry);
   
  
        conlist[0].Department= conlist[0].account.Industry;
   
    
   

    
}
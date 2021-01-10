public class ConExtension {

public Contact cont {get;set;}
public string lastname{get;set;}
public Decimal amount {get;set;}   
public string appendingText {get;set;}

 public ConExtension(ApexPages.StandardController st){
  this.cont = (Contact) st.getRecord(); 
 }
    
  public PageReference conSave() {
      //cont.lastname=appendingText+cont.lastname;
      cont.lastname=appendingText+lastname;
      cont.amount__c=amount;
      insert cont;
      return null;
  }
    

}
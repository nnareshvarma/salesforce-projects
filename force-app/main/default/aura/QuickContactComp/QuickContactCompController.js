({
	doSave : function(component, event, helper) {
        
		var accId=component.get('v.accountId');
        var cont=component.get('v.newContact');
        console.log('accid'+ accId);
         console.log('cont'+ cont);
        var actn=component.get('c.createContact');
        actn.setParams({
            con:cont,
            accountID:accId
        });
        actn.setCallback(this,function(response){
            console.log('inside caasad');
            var state=response.getState();
            if(state==='SUCCESS'){
               component.set('v.result',true); 
            }
            
            
        });
        $A.enqueueAction(actn);
	}
})
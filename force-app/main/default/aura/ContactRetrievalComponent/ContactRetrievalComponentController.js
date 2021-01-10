({ 
    
    
	getContacts : function(component, event, helper) {
        console.log('inside');
        var action=component.get('c.getContactList');
        action.setParams({accountID:component.get("v.recordId")});
        action.setCallback(this,function(response){
           var result=response.getReturnValue();
            console.log('result',result);
                
           component.set('v.contactList',response.getReturnValue());
            
            var comppp=component.get("v.contactList");
            console.log('comppp',comppp);
            
        });
        $A.enqueueAction(action);
		
	},   
    viewContactDetails:function(component, event, helper){
       var evn=event.getSource().get("v.name");
        var navEvt = $A.get("e.force:navigateToSObject");
    navEvt.setParams({
      "recordId": evn,
      "slideDevName": "detail"
    });
    navEvt.fire();
    }
    
})
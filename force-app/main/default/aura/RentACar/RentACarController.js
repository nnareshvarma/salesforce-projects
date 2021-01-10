({
	onSearchClick : function(component, event, helper) {
		
	},
    toggleButton : function(component, event, helper) {
		var currentvalue=component.get("v.IsNewAvailble");
        if(currentvalue){
            component.set("v.IsNewAvailble",false);
        }
	}
})
({
	helperMethod : function(component) {
		var action = component.get('c.doGetLead');
        action.setCallback(this, function(response){
            var state = response.getState();
            var result = response.getReturnValue();
            component.set("v.allLeads",result);
            console.log(result);
        });
        $A.enqueueAction(action);
	}
})
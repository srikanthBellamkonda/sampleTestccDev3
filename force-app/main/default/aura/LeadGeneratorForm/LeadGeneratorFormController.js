({
	onLoad : function(component, event, helper) {
		helper.helperMethod(component);
	},
    openLeadDialogBoxfunc : function(component, event, helper){
        component.set("v.showNewLeadForm", true);
    },
    handleComponentEvent :  function(component, event, helper){
        console.log('-handle event-');
        var message = event.getParam("isToShow");
        // set the handler attributes based on event data
        component.set("v.showNewLeadForm", message);
        helper.helperMethod(component);
    },
})
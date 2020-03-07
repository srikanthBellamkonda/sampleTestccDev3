({
	handleLoad: function(cmp, event, helper) {
        cmp.set('v.showSpinner', false);
    },

    handleSubmit: function(cmp, event, helper) {
        cmp.set('v.disabled', true);
        cmp.set('v.showSpinner', true);
        console.log('--1--');
        event.preventDefault();
        var eventFields = event.getParam("fields");
        var phoneTypeValueVar = cmp.get('v.phoneTypeValue');
        var residentialValueVar = cmp.get('v.residentialValue');
        var SubscribtionValueVar = cmp.get('v.SubscribtionValue');
        var aggrementValue = cmp.get('v.acceptedAggrement');
        if(aggrementValue){
        eventFields["Phone_Type__c"] = phoneTypeValueVar;
        eventFields["current_residential__c"] = residentialValueVar;
        eventFields["Subscribtion__c"] = SubscribtionValueVar;
        eventFields["Accepted_Aggrement__c"] = aggrementValue;
        //event.setParam("fields", eventFields);
        cmp.find('myform').submit(eventFields);
        }else {
            alert('please Accepted Aggrement before procedding');
        }
    },

    handleError: function(cmp, event, helper) {
        // errors are handled by lightning:inputField and lightning:messages
        // so this just hides the spinner
        cmp.set('v.showSpinner', false);
    },

    handleSuccess: function(cmp, event, helper) {        
        var params = event.getParams();        
        cmp.set('v.recordId', params.response.id);
        cmp.set('v.showSpinner', false);
        cmp.set('v.saved', true);
        alert('Personal loan request submitted successfully - token ID:'+params.response.id);
    },
    onChange : function(cmp, event, helper){
       var selected = event.target.checked;
       console.log(''+selected);
        cmp.set('v.acceptedAggrement', selected);
        
    }
})
/*
 * POC By Srikanth Bellamkonda
*/
trigger PersonalLoanTrigger on Personal_Loan_Registration__c (After insert) {
    
    if(Trigger.isAfter && Trigger.isInsert){
        PersonalLoanTriggerHandler handler = new PersonalLoanTriggerHandler();
        handler.processAfterInsert(Trigger.NEW, Trigger.NewMap);
    }

}
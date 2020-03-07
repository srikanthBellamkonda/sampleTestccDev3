/*
 * POC By Srikanth Bellamkonda
*/
public class PersonalLoanTriggerHandler {

    public void processAfterInsert(List<Personal_Loan_Registration__c> newLoanReqList, Map<Id,Personal_Loan_Registration__c> newLoanReqMap){
        if(!newLoanReqList.isEmpty()){
            List<Lead> insertLeadList = new List<Lead>();
            for(Personal_Loan_Registration__c lReq : newLoanReqList){
                Lead newLeadRecord = new Lead();
                newLeadRecord.Company = 'HSBC - SALLIEMAE';
                newLeadRecord.firstName = lReq.First_Name__c;
                newLeadRecord.lastName = lReq.Last_Name__c;
                newLeadRecord.phone = lReq.Primary_US_Phone_Number__c;
                newLeadRecord.Primary_US_Phone_Number__c = lReq.Primary_US_Phone_Number__c;
                newLeadRecord.Accepted_Aggrement__c = lReq.Accepted_Aggrement__c;
                newLeadRecord.Borrow_Amount__c = lReq.Borrow_Amount__c;
                newLeadRecord.City = lReq.City__c;
                newLeadRecord.current_residential__c = lReq.current_residential__c;                
                newLeadRecord.Date_of_Birth__c = lReq.Date_of_Birth__c;
                newLeadRecord.Middle_Initial__c = lReq.Middle_Initial__c;
                newLeadRecord.Monthly_Housing_Payment__c = lReq.Monthly_Housing_Payment__c;
                newLeadRecord.Phone_Type__c = lReq.Phone_Type__c;
                newLeadRecord.Primary_Reason__c = lReq.Primary_Reason__c;
                newLeadRecord.Social_Security_Number__c = lReq.Social_Security_Number__c;
                newLeadRecord.State = lReq.State__c;
                newLeadRecord.Street = lReq.Street_Name__c+' '+lReq.Street_Number__c;
                newLeadRecord.Subscribtion__c = lReq.Subscribtion__c;
                newLeadRecord.Unit_Number__c = lReq.Unit_Number__c;
                newLeadRecord.Unit_Type__c = lReq.Unit_Type__c;
                newLeadRecord.PostalCode = lReq.Zip__c;
                newLeadRecord.Salutation = lReq.Suffix__c;
                newLeadRecord.Total_Annual_Income__c = lReq.Total_Annual_Income__c;
                insertLeadList.add(newLeadRecord);    
            }
            if(!insertLeadList.isEmpty()){
                Insert insertLeadList;
            }
        }
    }
}
@restResource(urlMapping='/cts/customerService/*')
global class BasicRestApex {
    
    public class customerInfo {
        String customerName {get;set;}
        String customerPhone {get;set;}
    }
    
    
    @httpGet
    global static void returnSomeInfo(){        
        RestRequest req = RestContext.request;
        RestResponse resp = RestContext.response;        
        String urlParam = req.requestURI.subString(req.requestURI.lastIndexof('/')+1);        
        Account accRecord =  [Select Id, Name, phone from Account where SAPExternlaID__c =:urlParam ];
        customerInfo wrpObj = new customerInfo();
        wrpObj.customerName = accRecord.Name;
        wrpObj.customerPhone = accRecord.phone;        
        resp.statusCode = 200;       
        resp.responseBody = Blob.valueOf(JSON.serializePretty(wrpObj));
    }
    
}
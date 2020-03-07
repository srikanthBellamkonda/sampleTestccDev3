public class JsonDataApex {
    
    public JsonDataApex(){
        Http hp = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://raw.githubusercontent.com/srikanthBellamkonda/contactsInfo/master/contactsInfo.json');
        req.setMethod('GET');
        HttpResponse resp = hp.send(req);        
        system.debug('resp::'+resp);
        String body = resp.getBody();
        system.debug('resp Body::'+body);
        jsonDataParse obj = (jsonDataParse)JSON.deserialize(body, jsonDataParse.class);
        system.debug(obj);
    }
    
    public class jsonDataParse{
        public List<contacts> contacts {get;set;} 
    }
    
    public class contacts {
        public String id {get;set;}
        public String name {get;set;}
        public String email {get;set;}
        public String address {get;set;}
        public String gender {get;set;}
        public phone phone {get;set;}
    }
    
    public class phone {
        public String mobile {get;set;}
        public String home {get;set;}
        public String office {get;set;}
    }
    
    
}
public class LeadGeneratorCntrl {
    
    @auraEnabled
    public static List<Lead> doGetLead(){
        return [Select Id, Name, Phone From Lead where createdDate = today];
    }

}
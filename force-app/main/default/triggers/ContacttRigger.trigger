trigger ContacttRigger on Contact (before insert) {

    for(Contact c: Trigger.New){
        if(String.isBlank(c.fax)){
            c.addError('Hellow am trigger error. provide fax');
        }
    }
}
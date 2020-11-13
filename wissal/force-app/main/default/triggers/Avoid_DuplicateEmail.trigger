trigger Avoid_DuplicateEmail on Contact (before insert) {
    
    Integer MobileCount = 0;
    Integer EmailCount = 0;
    
    
    //for emails
    FOR(Contact c: Trigger.New){
        IF(c.Email !='' && c.Email != NULL){
            EmailCount = [SELECT count() FROM Contact WHERE EMAIL =:c.Email];
            IF(EmailCount > 0){
                c.Email.addError('Email Already Exists, Enter other mail address');
            }
        }
    }
    
    //for mobile numbers
    for(Contact c: Trigger.New){
    if(c.MobilePhone !='' && c.MobilePhone !=null){
        MobileCount = [select count() from Contact where MobilePhone =: c.MobilePhone];
        if(MobileCount > 0){
            c.MobilePhone.addError('Mobile Already Exists');
        }
    }
    
    
   	
}
}
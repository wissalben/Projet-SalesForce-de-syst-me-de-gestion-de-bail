trigger AvoidDuplicateNameUnit on Unit__c (before insert, before update) {
    
    set<String> setName = new set<String>();
    set<String> setExistingName = new set<String>();
    
    
    
    //Add all units in set to fetch related existing records
    for(Unit__c unit : Trigger.new)
    {
        setName.add(unit.name);
        
    }
    
    
    // get all records in database.
    for(Unit__c unit2 : [select name from Unit__c where name in : setName])
                        {
                            setExistingName.add(unit2.name);
                        }
                        
                        
                        //compare and add error if already exist
                        if(Trigger.isInsert||Trigger.isUpdate)
                        for(Unit__c u:trigger.new){
                            if(setExistingName.contains(u.name))
                            {
                                u.name.adderror('Unit with this name is already exists...try another name.');
                            }
                        }
                        
}
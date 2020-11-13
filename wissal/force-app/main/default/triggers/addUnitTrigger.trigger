trigger addUnitTrigger on Unit__c (after insert, after update) {
    
    /*List<Building__c>   building = [select id from Building__c];
    List<Id> id= new List<Id>();
    
    for(Building__c b: building){
        
        id.add(b.id);
    }
    
    List<Unit__c>  unit  = [select Add_Units__c, id,Building__c from Unit__c where Unit__c.Building__r.id IN :id];
    Building__c b;
    integer sum=0;
    for(Unit__c u: unit){
        sum= sum + Integer.valueOf(u.Add_Units__c);
        b =  [select id,Number_of_Units__c from Building__c where Id =: u.Building__c];
        b.Number_of_Units__c= sum;
    }
    
    upsert b;*/
    
}
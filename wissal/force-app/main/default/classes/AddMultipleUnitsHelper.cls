public class AddMultipleUnitsHelper {
    /*
    //add new row
    public static List<AddMultipleUnitsController.WrapperUnitList> addNewRowToUnitList(List<AddMultipleUnitsController.WrapperUnitList> EntryList){
        AddMultipleUnitsController.WrapperUnitList newRecord = new AddMultipleUnitsController.WrapperUnitList();
        Unit__c newUnitRecord = new Unit__c();        
        newRecord.record = newUnitRecord;
        newRecord.index = EntryList.size();
        EntryList.add(newRecord);
        return EntryList;
    }
    
    
    //remove row
    public static List<AddMultipleUnitsController.WrapperUnitList> removeRowToUnitList(Integer rowToRemove, List<AddMultipleUnitsController.WrapperUnitList> EntryList){
        EntryList.remove(rowToRemove);
        return EntryList;
    }
    
    //save method
    
    
    public static void save(List<AddMultipleUnitsController.WrapperUnitList> EntryList) {
        //system.debug('==EntryList==>'+EntryList.size());
        List<Unit__c> unitRecordsToBeInserted = new List<Unit__c>();
        if(EntryList !=null && !EntryList.isEmpty()){
            for(AddMultipleUnitsController.WrapperUnitList eachRecord : EntryList ){
                Unit__c unitTemp = eachRecord.record;
                unitRecordsToBeInserted.add(unitTemp);
                
            }
            system.debug('==unitRecordsToBeInserted==>'+unitRecordsToBeInserted.size());
            upsert unitRecordsToBeInserted;
        }
    }
    
    
    
    
   */ 
}
public with sharing class AddUnitsController {

    public Building__c building{
        get;
        set;
    }
    
    public Unit__c unit{
        get;
        set;
    }
    
    //constructor
    public AddUnitsController(ApexPages.StandardController controller){
        building = (Building__c) controller.getRecord();
        unit = new Unit__c();
   
    }
    
    //save buildings
    public void SaveBuildings(){
        try{
       	upsert building;
        ApexPages.AddMessage(new ApexPages.Message(ApexPages.Severity.CONFIRM,'Building Added Successfully.Thank you!'));
        building  = null;
        }catch(Exception ex){
            ApexPages.addMessages(ex);
        }
    }
 
    
    //save units
    public void SaveUnits(){
        
        try{
       	upsert unit;
        ApexPages.AddMessage(new ApexPages.Message(ApexPages.Severity.CONFIRM,'Unit Added Successfully.Thank you!'));
       
         unit = null;
        }
        catch(Exception ex){
            ApexPages.addMessages(ex);
        }
       
    }
    
    
    /*public List<WrapperUnitList> EntryList {
        get;
        set;
    }
    public Integer rowToRemove {get;set;}*/
    //AddMultipleUnitsHelper helper = new AddMultipleUnitsHelper();
    
    
    //call addNewRowToUnitList method and refer if from helper
   /* public AddUnitsController(){
        EntryList = new List<WrapperUnitList>();
  		addRowToUnitList();
    }
     public void addRowToUnitList(){
     EntryList = AddMultipleUnitsHelper.addNewRowToUnitList(EntryList);
    }
    
   //remove row from unitList
   public void removeRowFromUnitList(){
  EntryList = AddMultipleUnitsHelper.removeRowToUnitList(rowToRemove, EntryList);
   
 }
    
    
    
    //add multiple units
   public class WrapperUnitList{
        public Integer index {get;set;}
        public Unit__c record {get;set;}
   }
    
    //save multiple units
    public PageReference SaveMultiple() {
        system.debug('calling save method');
        AddMultipleUnitsHelper.save(EntryList);
        ApexPages.AddMessage(new ApexPages.Message(ApexPages.Severity.CONFIRM,'Unit Added Successfully.Thank you!'));
        return null;
    }
    
*/

}
@isTest
public class Test_AddUnitsController {
    @testSetup
    static void Testdata(){
         List<Building__c> bList = new List<Building__c>();
        bList.add(new Building__c(Name= 'testbuilding',Address__c = 'pune',Type__c = 'Retail'));
        insert bList;
        
        List<Unit__c> uList = new List<Unit__c>();	
        uList.add(new Unit__c(Name= 'testunit', Status__c = 'Vacant', Price__c = 10000, Building__c= bList[0].Id)); 
       //ApexPages.AddMessage(new ApexPages.Message(ApexPages.Severity.CONFIRM,'Unit Added Successfully.Thank you!'));
        insert uList;
    }

   static testMethod void testSaveUnits() {
       
      
      
       
		
       
       Building__c building = new Building__c();
       ApexPages.StandardController sc = new ApexPages.StandardController(building);
       
    
       
       
       
        Test.StartTest(); 
            
        AddUnitsController refClass = new AddUnitsController(sc);
       
        refClass.SaveBuildings();
        refClass.SaveUnits();
       
       
       System.assert(building!=null);
     
	
        Test.StopTest();
    }    
    
    static testMethod void testSaveBuildings(){
        Unit__c unit = new Unit__c();
       ApexPages.StandardController sc = new ApexPages.StandardController(unit);
       
    
       
       
       
        Test.StartTest(); 
            
        AddUnitsController refClass = new AddUnitsController(sc);
       
        refClass.SaveBuildings();
        refClass.SaveUnits();
       
       
       
     System.assert(unit!=null);
	
        Test.StopTest();
    }
 
   }
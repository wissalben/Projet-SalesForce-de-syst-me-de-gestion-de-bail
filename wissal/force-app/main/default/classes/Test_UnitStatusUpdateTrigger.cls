@isTest
public class Test_UnitStatusUpdateTrigger {
    
    static testMethod void test(){
        
        
        List<ID> UnitIds = New List<ID>();
        
        List<Contract_For_Lease__c> contract = new List<Contract_For_Lease__c>(); 
        contract.add(new Contract_For_Lease__c(Name = 'Test contract',
                                               Contract_Term_months__c=10,
                                               Description__c='test contract',
                                               status__c = 'Activated'
                                              ));
        contract.add(new Contract_For_Lease__c(Name = 'Test contract1',
                                               Contract_Term_months__c=10,
                                               Description__c='test contract',
                                               status__c = 'In Approval'
                                              ));
        
        List<Unit__c> unit = new List<Unit__c>();
        
        unit.add(new Unit__c(Name= 'Check unit',Status__c = 'Occupied',Price__c = 10000)); 
        unit.add(new Unit__c(Name= 'Check unit1',Status__c = 'Vacant',Price__c = 10000)); 
        
        
        //UnitIds.add(contract.unit);
        
        Test.startTest();
        try
            
        {
            
            insert contract;
            insert unit;
            
        }
        catch(Exception ee){
            
        }
        
        System.assertEquals([Select id, name from Contract_For_Lease__c where Status__c='Activated'], [Select id, name from Contract_For_Lease__c where Status__c='In Approval']);
        System.assertEquals([Select id, name from Unit__c where Status__c='Occupied'], [Select id, name from Unit__c where Status__c='Vacant']);
        Test.stopTest();
        
    }
    
    
}
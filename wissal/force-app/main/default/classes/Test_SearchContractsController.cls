@isTest
public class Test_SearchContractsController {
    
    static testMethod void test(){
        
        List<Contact> contactList = new List<Contact>();
        contactList.add(new Contact(Firstname='irfan',Lastname='inamdar',MobilePhone = '8888705970',Email='irfan@persistent.com'));
        contactList.add(new Contact(Firstname='riza',Lastname='inamdar',MobilePhone = '6767676768', Email = 'riza@persistent.com'));
        insert contactList;
        
        List<Building__c> bList = new List<Building__c>();
        bList.add(new Building__c(Name= 'testbuilding',Address__c = 'pune',Type__c = 'Retail')); 
        insert bList; 
        
        
        List<Unit__c> uList = new List<Unit__c>();
        uList.add(new Unit__c(Name= 'testunit', Status__c = 'Vacant', Price__c = 10000, Building__c= bList[0].Id)); 
        insert uList;
        
        
        
        List<Contract_For_Lease__c> conList = new List<Contract_For_Lease__c>();
        
        conList.add(new Contract_For_Lease__c(Name='Test',Building__c=bList[0].Id,
                                              Select_Unit__c = uList[0].Id,Contract_Term_months__c=20,Description__c='test',
                                             Vender__c=contactList[0].Id));
         conList.add(new Contract_For_Lease__c(Name='Test1',Building__c=bList[0].Id,
                                              Select_Unit__c = uList[0].Id,Contract_Term_months__c=20,Description__c='test',
                                             Vender__c=contactList[0].Id));
        
        
        insert conList;
        
        
        String searchInput1 ='irfan';
        String searchInput2 ='testbuilding';
     	
        searchContractsController controller = new searchContractsController();
        controller.searchString = searchInput1;
        controller.searchString = searchInput2;
        controller.getContracts();
        
		
    }

}
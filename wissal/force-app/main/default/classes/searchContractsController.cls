public class searchContractsController {
    
    public String searchString {get; set; }
    public String queryString;
    
    public  List<Contract_For_Lease__c> contracts{
        get;
        set;
    }
    
    //contructor
    public searchContractsController(){
        getContracts();
    }
    
    
    //querying for search contract per building/vender
    Public pagereference getContracts(){
        
        if(searchString == null) {
            searchString = '';
        }
        
        if(searchString.length() == 0){        
            queryString = 'SELECT Id, Name, Description__c, Contract_Term_months__c, Start_Date__c,End_Date__c, Status__c, Building__r.id, Building__r.Name FROM Contract_For_Lease__c';
        }
        else{
            queryString = 'SELECT Id, Name,Description__c,Contract_Term_months__c,Start_Date__c,End_Date__c,Status__c, Vender__r.id, Vender__r.name, Building__r.id, Building__r.Name FROM Contract_For_Lease__c where Vender__r.name Like \'%' + searchString+ '%\' OR Building__r.Name Like \'%' + searchString+ '%\'';   
            
        }
        
        //List<Contract_For_Lease__c> cons = new List<Contract_For_Lease__c>();
        System.debug(queryString);
        
        //get serchString from object
        contracts = database.query(queryString);
        return null;
        
    }
    
    //basic queries using child relationships
    
    //[SELECT Id, Name, Building__r.id FROM Contract_For_Lease__c];
    //[SELECT Id, Name, Vender__r.id FROM Contract_For_Lease__c];
    
}
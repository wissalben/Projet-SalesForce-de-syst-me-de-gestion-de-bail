public class ContactTriggerClass{
  public static void contactCount(List<SObject> newItems, List<SObject> oldItems)
    {
    Map<Id,Account> AccountMap=new Map<Id,Account>();
            set<String> updateContactCount= new Set<String>();
            set<String> accId=new Set<String>();
            for(SObject newObj :newItems) {
                Contact newCntObj = (Contact)newObj;
                Contact oldCntObj = null;
                if(newCntObj.Id!=null && oldItems!=null) {
                    oldCntObj = (Contact)newObj;
                }
                if(newCntObj.AccountId!=null){
                accId.add(newCntObj.AccountId);
                }
            }

                for(Account ac:[Select Id,Contact_Count__c,(select Id from Contacts) from Account where Id IN:accId]){
                    ac.Contact_Count__c=ac.Contacts.size(); // Contact_Count__c is a Custom field that needs to be created on Account
                    AccountMap.put(ac.Id,ac);
                }

            update AccountMap.values();
    }

}
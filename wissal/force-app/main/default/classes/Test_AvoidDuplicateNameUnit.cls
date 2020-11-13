@isTest
public class Test_AvoidDuplicateNameUnit {

    
     static testMethod void test(){
        List<Unit__c> unit = new List<Unit__c>();
         
         Unit__c u = new Unit__c(Name = 'UNT0033', Status__c = 'vacant' ,type__c = '1BHK');
         Unit__c u1 = new Unit__c(Name = 'UNT0033', Status__c = 'vacant' ,type__c = '1BHK');
         
         unit.add(u);
         unit.add(u1);
         Test.startTest();

            try

            {

                upsert unit;

            }

            catch(Exception ee)

            {

            }
        Test.stopTest();  
    }
    
}
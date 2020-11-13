@isTest
public class Test_Avoid_DuplicateEmail {


    
    static testMethod void  Test() {
        
        List<Contact> listContact= new List<Contact>();
        
        Contact c1 = new Contact(FirstName='Raam', LastName='Leela' , email='gatsby@test.com',Mobilephone= '8888705970');
        
        Contact c2 = new Contact(FirstName='gatsby', LastName = 'gonzo',email='gatsby@test.com',Mobilephone= '8888705970');
        
        listContact.add(c1);
        
        listContact.add(c2);
        
        
        
        Test.startTest();
        
        try
            
        {
            
            insert listContact;
            
        }
        
        catch(Exception ee)
            
        {
            
        }
        
        
        
        Test.stopTest(); 
        
        
        
    }
    

}
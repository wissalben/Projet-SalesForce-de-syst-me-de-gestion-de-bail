trigger UnitStatusUpdateTrigger on Contract_For_Lease__c (after insert) {
    List<ID> UnitIds = New List<ID>();
     for(Contract_For_Lease__c c : Trigger.new){
    if(c.Status__c == 'Activated' && c.Select_Unit__c != null){
      UnitIds.add(c.Select_Unit__c);
    }
  }
List<Unit__c> unitList = [SELECT id FROM Unit__c WHERE id in :UnitIds];
  for(integer i = 0 ; i < unitList.size(); i++){
   
    unitList[i].Status__c = 'Occupied';
  }
  update unitList;
}
trigger ContactTrigger on Contact (After Insert,After update,After Delete,After Undelete) {
 List<Contact> contacts = Trigger.isDelete ? Trigger.old : Trigger.new;
    ContactTriggerClass.contactCount(contacts,contacts);
}
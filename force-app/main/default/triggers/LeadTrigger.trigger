trigger LeadTrigger on Lead (before update) {
    if(Trigger.isBefore && Trigger.isUpdate) {
        for(Lead leadRec : Trigger.NEW) {
            leadRec.Status = 'Working - Contacted';
        }
    }
}
trigger TaskTrigger on Task (before insert) {
	//whenever a task is created, set priority to high
    if(Trigger.isInsert && Trigger.isBefore) {
        //do field update here
        for(Task taskRecord : Trigger.NEW) {
            System.debug('Found task record');
            taskRecord.Priority = 'High';
        }
    }
}
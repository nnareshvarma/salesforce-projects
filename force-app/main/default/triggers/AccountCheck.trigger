trigger AccountCheck on Account (after update) {

    System.debug('RecursiveCheck-->'+ RecursiveCheck.runOnce);
    if(RecursiveCheck.runOnce){
        RecursiveCheck.runOnce=false;
        AccountUpdateCheck.accUpdate(Trigger.new);
    }
    System.debug('RecursiveCheck-->'+ RecursiveCheck.runOnce);
    
    
}
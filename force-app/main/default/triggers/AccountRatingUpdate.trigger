trigger AccountRatingUpdate on Account (before insert,before update) {
    For(Account acc:Trigger.new){
        if(acc.AnnualRevenue>100){
        acc.Rating='Hot';  
        }
        else{
            acc.Rating='Cold';
        }
    }

}
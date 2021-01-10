trigger ContactHomePhone on Contact (before insert,before update) {
    for(Contact abc:trigger.new){
        if(abc.homephone==null){
            abc.homephone=abc.phone;
        }
    }

}
public class AccountConCreate {
    public static void createAcccon(){
        List<Account> newAccList = new List<Account>();
        List<Contact> newConList = new List<Contact>();
        
        //Creating 3 Accounts 
        for(Integer i=0;i<3;i++){
            Account acc = new Account();
            acc.Name = 'Krishna'+i;
            newAccList.add(acc);
        }
        insert newAccList;    //Inserting Account List
        
        System.debug('The new Accounts are '+newAccList);
        
        //Creating 10 Contacts and Linking them to the each Account
        for(Account accc : newAccList){
            for(Integer i=0;i<10;i++){
                Contact con = new Contact();
                con.AccountId = accc.Id;
                con.FirstName = accc.Name;
                con.LastName = accc.Name+i;
                newConList.add(con);
                
            }
        }
        Insert newConList;   //Inserting Contact List
        
        system.debug('The new Contacts accociated to the newAccList are '+newConList);
        
    }
}
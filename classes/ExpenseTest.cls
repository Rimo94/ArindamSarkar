@isTest

public class ExpenseTest {

 public testMethod static void myTest(){
      
        Expense__c expense = new Expense__c();
        
        //expense object's field
         
        expense.Amount__c=1000.80;
        expense.Event__c='party';
        expense.Date__c=date.today();
       
        insert expense; //insert object
       
        Member__c member = new Member__c();
        
        //member object's field
        
        member.Name__c='xyz';
        member.Cus_email__c='abc@abc.com';
        member.Mobile_NO__c='+91-9093397692';
        
        insert member; //insert memnber
       
        Expense_Member__c expmem = new Expense_Member__c();
       
       //Juncton object's field
       
        expmem.Member__c=member.Id;
        expmem.Expense__c=expense.Id;
        expmem.Contribution_Amount__c=100.50;
       
        insert expmem; //insert Junction obj
       
        ExpenseEXT expExt = new ExpenseEXT(new ApexPages.StandardController(expense));
        
        List<Expense_Member__c> ge = new List<Expense_Member__c>();
       
        ge = expExt.getExpMembers();
       
       
}
}
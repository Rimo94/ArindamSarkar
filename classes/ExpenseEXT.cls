public with sharing class ExpenseEXT {

    public Expense__c expObj{get;set;}
    public List<Expense_Member__c> memExp{get;set;}
    
    public ExpenseEXT(ApexPages.StandardController controller) {
    
        expObj = (Expense__c)controller.getRecord();
        memExp=getExpMembers();
    }
    
    public List<Expense_Member__c> getExpMembers(){
    
        return [Select Member__r.Name__c,Contribution_Amount__c from Expense_Member__c where Expense__c =: expObj.Id];
    }
}
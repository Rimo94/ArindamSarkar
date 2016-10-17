public with sharing class FirstExtension {
    public ApexPages.StandardController controller{get;set;}
    public student__c studentObj;
    public String firstName{get;set;}
    public String lastName{get;set;}
    public String idEdit{get;set;}
    public FirstExtension(ApexPages.StandardController controller) {
        this.controller = controller;
        studentObj = (student__c)controller.getRecord();
        System.debug('idEdit'+idEdit);
        System.debug('Parameters ' + ApexPages.currentPage().getParameters());
    }
    
    public PageReference save(){
        try{
            studentObj.student_Name__C = firstName + ' ' + lastName;
            insert studentObj;
            
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.CONFIRM,'Success '+studentObj));
           }
           catch(Exception e){
                ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.Error,'Error'));
           }
           return null;
    }
    }
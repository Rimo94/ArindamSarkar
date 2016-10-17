<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Member_Email_Rule</fullName>
        <description>Member Email Rule</description>
        <protected>true</protected>
        <recipients>
            <field>Your_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Invoice_Template</template>
    </alerts>
    <fieldUpdates>
        <fullName>Email_field_update</fullName>
        <description>Automatically Generated Field</description>
        <field>Your_Email__c</field>
        <formula>Member__r.Cus_email__c</formula>
        <name>Email field update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>ExpenseMember_rule_email</fullName>
        <actions>
            <name>Member_Email_Rule</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Expense_Member__c.Name</field>
            <operation>notEqual</operation>
            <value>null</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ExpenseMember_rule_fieldupdate</fullName>
        <actions>
            <name>Email_field_update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1</booleanFilter>
        <criteriaItems>
            <field>Expense_Member__c.Name</field>
            <operation>notEqual</operation>
            <value>null</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>

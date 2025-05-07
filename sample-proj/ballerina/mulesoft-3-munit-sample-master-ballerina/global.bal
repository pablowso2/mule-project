import ballerina/http;

public listener http:Listener HTTP_Listener_Configuration = new (${http .port});

// TODO: UNSUPPORTED MULE BLOCK ENCOUNTERED. MANUAL CONVERSION REQUIRED.
// ------------------------------------------------------------------------
// <context:property-placeholder location="${env}.properties" xmlns:context="http://www.springframework.org/schema/context"/>
// ------------------------------------------------------------------------

// TODO: UNSUPPORTED MULE BLOCK ENCOUNTERED. MANUAL CONVERSION REQUIRED.
// ------------------------------------------------------------------------
// <sfdc:config xmlns:doc="http://www.mulesoft.org/schema/mule/documentation" doc:name="Salesforce: Basic Authentication" name="Salesforce__Basic_Authentication" password="${salesforce.password}" securityToken="${salesforce.token}" url="${salesforce.url}" username="${salesforce.username}" xmlns:sfdc="http://www.mulesoft.org/schema/mule/sfdc"/>
// ------------------------------------------------------------------------


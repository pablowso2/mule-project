function _dwMethod2_() returns json|error {
    //TODO: UNSUPPORTED DATAWEAVE EXPRESSION '[0]' FOUND. MANUAL CONVERSION REQUIRED.

    //TODO: UNSUPPORTED DATAWEAVE EXPRESSION '[0]' FOUND. MANUAL CONVERSION REQUIRED.
    return {"id": check payload[id].ensureType(json), "success": check payload[success].ensureType(json)};
}

public function salesforce\-create(Context ctx) {
    any _dwOutput_ = check _dwMethod1_();
    ctx.payload = _dwOutput_;

    // TODO: UNSUPPORTED MULE BLOCK ENCOUNTERED. MANUAL CONVERSION REQUIRED.
    // ------------------------------------------------------------------------
    // <sfdc:create config-ref="Salesforce__Basic_Authentication" xmlns:doc="http://www.mulesoft.org/schema/mule/documentation" doc:name="Salesforce" type="Account" xmlns:sfdc="http://www.mulesoft.org/schema/mule/sfdc">
    //             <sfdc:objects ref="#[payload]"/>
    //         </sfdc:create>
    // ------------------------------------------------------------------------

    json _dwOutput_ = check _dwMethod2_();
    ctx.payload = _dwOutput_;
}

function _dwMethod0_() returns json {
    return payload;
    // DATAWEAVE PARSING FAILED.
    // line 4:8 mismatched input 'map' expecting {<EOF>, NEWLINE}

}

function _dwMethod4_() returns json|error {
    //TODO: UNSUPPORTED DATAWEAVE EXPRESSION '[0]' FOUND. MANUAL CONVERSION REQUIRED.

    //TODO: UNSUPPORTED DATAWEAVE EXPRESSION '[0]' FOUND. MANUAL CONVERSION REQUIRED.
    return {"id": check payload[id].ensureType(json), "success": check payload[success].ensureType(json)};
}

public function salesforce\-select\-all(Context ctx) {

    // TODO: UNSUPPORTED MULE BLOCK ENCOUNTERED. MANUAL CONVERSION REQUIRED.
    // ------------------------------------------------------------------------
    // <sfdc:query config-ref="Salesforce__Basic_Authentication" xmlns:doc="http://www.mulesoft.org/schema/mule/documentation" doc:name="Salesforce Select All" query="dsql:SELECT CreatedDate,Id,Name FROM Account LIMIT 3" xmlns:sfdc="http://www.mulesoft.org/schema/mule/sfdc"/>
    // ------------------------------------------------------------------------

    json _dwOutput_ = _dwMethod0_();
    ctx.payload = _dwOutput_;
}

public function salesforce\-update(Context ctx) {
    any _dwOutput_ = check _dwMethod3_();
    ctx.payload = _dwOutput_;

    // TODO: UNSUPPORTED MULE BLOCK ENCOUNTERED. MANUAL CONVERSION REQUIRED.
    // ------------------------------------------------------------------------
    // <sfdc:update config-ref="Salesforce__Basic_Authentication" xmlns:doc="http://www.mulesoft.org/schema/mule/documentation" doc:name="Salesforce" type="Account" xmlns:sfdc="http://www.mulesoft.org/schema/mule/sfdc">
    //             <sfdc:objects ref="#[payload]"/>
    //         </sfdc:update>
    // ------------------------------------------------------------------------

    json _dwOutput_ = check _dwMethod4_();
    ctx.payload = _dwOutput_;
}

function _dwMethod3_() returns any|error {
    return [{"Id": check payload[Id].ensureType(any), "Name": check payload[name].ensureType(any), "Phone": check payload[Phone].ensureType(any)}];
}

function _dwMethod1_() returns any|error {
    return [{"Name": check payload[name].ensureType(any), "Phone": check payload[Phone].ensureType(any), "B2C__c": check payload[B2C__c].ensureType(any)}];
}

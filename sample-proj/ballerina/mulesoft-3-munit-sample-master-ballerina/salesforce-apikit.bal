import ballerina/http;

service / on HTTP_Listener_Configuration {
    Context ctx;

    function init() {
        self.ctx = {payload: (), inboundProperties: {response: new, request: new, uriParams: {}}};
    }

    resource function default api/\*(http:Request request) returns http:Response|error {
        self.ctx.inboundProperties.request = request;
        return invokeEndPoint0(self.ctx);
    }
}

service / on HTTP_Listener_Configuration {
    Context ctx;

    function init() {
        self.ctx = {payload: (), inboundProperties: {response: new, request: new, uriParams: {}}};
    }

    resource function default console/\*(http:Request request) returns http:Response|error {
        self.ctx.inboundProperties.request = request;
        return invokeEndPoint1(self.ctx);
    }
}

public function invokeEndPoint0(Context ctx) returns http:Response|error {
    do {

        // TODO: UNSUPPORTED MULE BLOCK ENCOUNTERED. MANUAL CONVERSION REQUIRED.
        // ------------------------------------------------------------------------
        // <apikit:router config-ref="unit-test-config" xmlns:doc="http://www.mulesoft.org/schema/mule/documentation" doc:name="APIkit Router" xmlns:apikit="http://www.mulesoft.org/schema/mule/apikit"/>
        // ------------------------------------------------------------------------

    } on fail error e {
        unit\-test\-apiKitGlobalExceptionMapping(ctx, e);
    }

    ctx.inboundProperties.response.setPayload(ctx.payload);
    return ctx.inboundProperties.response;
}

public function get\:\/accounts\:unit\-test\-config(Context ctx) {

    // set payload
    anydata payload0 = NullPayload.getInstance();
    ctx.payload = payload0;
    salesforce\-select\-all(ctx);
}

public function put\:\/accounts\:unit\-test\-config(Context ctx) {

    // TODO: UNSUPPORTED MULE BLOCK ENCOUNTERED. MANUAL CONVERSION REQUIRED.
    // ------------------------------------------------------------------------
    // <set-property xmlns:doc="http://www.mulesoft.org/schema/mule/documentation" doc:name="Property" propertyName="Content-Type" value="application/json" xmlns="http://www.mulesoft.org/schema/mule/core"/>
    // ------------------------------------------------------------------------

    salesforce\-update(ctx);
}

public function post\:\/accounts\:unit\-test\-config(Context ctx) {

    // TODO: UNSUPPORTED MULE BLOCK ENCOUNTERED. MANUAL CONVERSION REQUIRED.
    // ------------------------------------------------------------------------
    // <set-property xmlns:doc="http://www.mulesoft.org/schema/mule/documentation" doc:name="Property" propertyName="Content-Type" value="application/json" xmlns="http://www.mulesoft.org/schema/mule/core"/>
    // ------------------------------------------------------------------------

    salesforce\-create(ctx);
}

public function invokeEndPoint1(Context ctx) returns http:Response|error {

    // TODO: UNSUPPORTED MULE BLOCK ENCOUNTERED. MANUAL CONVERSION REQUIRED.
    // ------------------------------------------------------------------------
    // <apikit:console config-ref="unit-test-config" xmlns:doc="http://www.mulesoft.org/schema/mule/documentation" doc:name="APIkit Console" xmlns:apikit="http://www.mulesoft.org/schema/mule/apikit"/>
    // ------------------------------------------------------------------------

    ctx.inboundProperties.response.setPayload(ctx.payload);
    return ctx.inboundProperties.response;
}

// TODO: UNSUPPORTED MULE BLOCK ENCOUNTERED. MANUAL CONVERSION REQUIRED.
// ------------------------------------------------------------------------
// <apikit:config consoleEnabled="false" xmlns:doc="http://www.mulesoft.org/schema/mule/documentation" doc:name="Router" name="unit-test-config" raml="unit-test.raml" xmlns:apikit="http://www.mulesoft.org/schema/mule/apikit"/>
// ------------------------------------------------------------------------

// TODO: UNSUPPORTED MULE BLOCK ENCOUNTERED. MANUAL CONVERSION REQUIRED.
// ------------------------------------------------------------------------
// <apikit:mapping-exception-strategy name="unit-test-apiKitGlobalExceptionMapping" xmlns:apikit="http://www.mulesoft.org/schema/mule/apikit">
//         <apikit:mapping statusCode="404">
//             <apikit:exception value="org.mule.module.apikit.exception.NotFoundException"/>
//             <set-property xmlns:doc="http://www.mulesoft.org/schema/mule/documentation" doc:name="Property" propertyName="Content-Type" value="application/json" xmlns="http://www.mulesoft.org/schema/mule/core"/>
//             <set-payload xmlns:doc="http://www.mulesoft.org/schema/mule/documentation" doc:name="Set Payload" value="{ &quot;message&quot;: &quot;Resource not found&quot; }" xmlns="http://www.mulesoft.org/schema/mule/core"/>
//         </apikit:mapping>
//         <apikit:mapping statusCode="405">
//             <apikit:exception value="org.mule.module.apikit.exception.MethodNotAllowedException"/>
//             <set-property xmlns:doc="http://www.mulesoft.org/schema/mule/documentation" doc:name="Property" propertyName="Content-Type" value="application/json" xmlns="http://www.mulesoft.org/schema/mule/core"/>
//             <set-payload xmlns:doc="http://www.mulesoft.org/schema/mule/documentation" doc:name="Set Payload" value="{ &quot;message&quot;: &quot;Method not allowed&quot; }" xmlns="http://www.mulesoft.org/schema/mule/core"/>
//         </apikit:mapping>
//         <apikit:mapping statusCode="415">
//             <apikit:exception value="org.mule.module.apikit.exception.UnsupportedMediaTypeException"/>
//             <set-property xmlns:doc="http://www.mulesoft.org/schema/mule/documentation" doc:name="Property" propertyName="Content-Type" value="application/json" xmlns="http://www.mulesoft.org/schema/mule/core"/>
//             <set-payload xmlns:doc="http://www.mulesoft.org/schema/mule/documentation" doc:name="Set Payload" value="{ &quot;message&quot;: &quot;Unsupported media type&quot; }" xmlns="http://www.mulesoft.org/schema/mule/core"/>
//         </apikit:mapping>
//         <apikit:mapping statusCode="406">
//             <apikit:exception value="org.mule.module.apikit.exception.NotAcceptableException"/>
//             <set-property xmlns:doc="http://www.mulesoft.org/schema/mule/documentation" doc:name="Property" propertyName="Content-Type" value="application/json" xmlns="http://www.mulesoft.org/schema/mule/core"/>
//             <set-payload xmlns:doc="http://www.mulesoft.org/schema/mule/documentation" doc:name="Set Payload" value="{ &quot;message&quot;: &quot;Not acceptable&quot; }" xmlns="http://www.mulesoft.org/schema/mule/core"/>
//         </apikit:mapping>
//         <apikit:mapping statusCode="400">
//             <apikit:exception value="org.mule.module.apikit.exception.BadRequestException"/>
//             <set-property xmlns:doc="http://www.mulesoft.org/schema/mule/documentation" doc:name="Property" propertyName="Content-Type" value="application/json" xmlns="http://www.mulesoft.org/schema/mule/core"/>
//             <set-payload xmlns:doc="http://www.mulesoft.org/schema/mule/documentation" doc:name="Set Payload" value="{ &quot;message&quot;: &quot;Bad request&quot; }" xmlns="http://www.mulesoft.org/schema/mule/core"/>
//         </apikit:mapping>
//     </apikit:mapping-exception-strategy>
// ------------------------------------------------------------------------


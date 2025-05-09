import ballerina/http;
import ballerina/log;

public listener http:Listener HTTP_Listener_Configuration = new (8081);

service /api on HTTP_Listener_Configuration {
    Context ctx;

    function init() {
        self.ctx = {payload: (), flowVars: {}, inboundProperties: {response: new, request: new, uriParams: {}}};
    }

    resource function get weather/[string cityName](http:Request request) returns http:Response|error {
        self.ctx.inboundProperties.uriParams = {cityName};
        self.ctx.inboundProperties.request = request;
        return invokeEndPoint0(self.ctx);
    }
}

public function invokeEndPoint0(Context ctx) returns http:Response|error {
    ctx.flowVars.cityName = ctx.inboundProperties.uriParams.get("cityName");
    log:printInfo(string `Weather request received for city: ${ctx.flowVars.cityName.toString()}`);

    // http client request
    http:Client GeoClient_Config = check new ("api.openweathermap.org:80");
    http:Response clientResult0 = check GeoClient_Config->/geo/1\.0/direct.get(q = check ctx.flowVars.cityName.ensureType(http:QueryParamType), appid = "${weather.api.key}", 'limit = "1");
    ctx.payload = check clientResult0.getJsonPayload();
    if ctx.payload.isEmpty() {
        log:printInfo(string `City not found: ${ctx.flowVars.cityName.toString()}`);

        // set payload

        string payload0 = "{'error': 'City not found'}";
        ctx.payload = payload0;

        // TODO: UNSUPPORTED MULE BLOCK ENCOUNTERED. MANUAL CONVERSION REQUIRED.
        // ------------------------------------------------------------------------
        // <set-property xmlns:doc="http://www.mulesoft.org/schema/mule/documentation" doc:name="Set Status Code" propertyName="http.status" value="404" xmlns="http://www.mulesoft.org/schema/mule/core"/>
        // ------------------------------------------------------------------------

    }
    ctx.flowVars.latitude = ctx.payload[0].get("lat");
    ctx.flowVars.longitude = ctx.payload[0].get("lon");

    // http client request
    http:Client GeoClient_Config = check new ("api.openweathermap.org:80");
    http:Response clientResult1 = check GeoClient_Config->/data/2\.5/weather.get(appid = "${weather.api.key}", lon = check ctx.flowVars.longitude.ensureType(http:QueryParamType), lat = check ctx.flowVars.latitude.ensureType(http:QueryParamType));
    ctx.payload = check clientResult1.getJsonPayload();

    ctx.inboundProperties.response.setPayload(ctx.payload);
    return ctx.inboundProperties.response;
}

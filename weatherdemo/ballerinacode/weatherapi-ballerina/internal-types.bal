import ballerina/http;

public type FlowVars record {|
    string cityName?;
    anydata latitude?;
    anydata longitude?;
|};

public type InboundProperties record {|
    http:Response response;
    http:Request request;
    map<string> uriParams;
|};

public type Context record {|
    anydata payload;
    FlowVars flowVars;
    InboundProperties inboundProperties;
|};

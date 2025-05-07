import ballerina/http;

public type Context record {|
    anydata payload;
    InboundProperties inboundProperties;
|};

public type InboundProperties record {|
    http:Response response;
    http:Request request;
    map<string> uriParams;
|};

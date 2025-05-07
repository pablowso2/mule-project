import ballerina/http;
import ballerina/sql;
import ballerinax/mysql;
import ballerinax/mysql.driver as _;

public type Record record {
};

mysql:Client MySQL_Configuration = check new ("localhost", "root", "pass", "rag", 3306);
public listener http:Listener config = new (8081);

service /demo on config {
    Context ctx;

    function init() {
        self.ctx = {payload: (), inboundProperties: {response: new, request: new, uriParams: {}}};
    }

    resource function get users(http:Request request) returns http:Response|error {
        self.ctx.inboundProperties.request = request;
        return invokeEndPoint0(self.ctx);
    }
}

public function invokeEndPoint0(Context ctx) returns http:Response|error {

    // database operation
    sql:ParameterizedQuery dbQuery0 = `SELECT * FROM album;`;
    stream<Record, sql:Error?> dbStream0 = MySQL_Configuration->query(dbQuery0);
    Record[] dbSelect0 = check from Record _iterator_ in dbStream0
        select _iterator_;
    ctx.payload = dbSelect0;

    ctx.inboundProperties.response.setPayload(ctx.payload);
    return ctx.inboundProperties.response;
}

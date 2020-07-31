import ballerina/http;

service quotes on new http:Listener(9090) {
    resource function respond(http:Caller caller, http:Request request) returns error? {
        check caller->respond("Hello world!");
    }
}
import ballerina/http;

service quotes on new http:Listener(9090) {

    resource function firefly(http:Caller caller, http:Request request) returns error? {
        check caller->respond("\nNo power in the 'verse can stop me.");
    }
    
    resource function lotr(http:Caller caller, http:Request request) returns error? {
        var quote = "\nAll that is gold does not glitter,\nNot all those who wander are lost;\nThe old that is strong does not wither,\nDeep roots are not reached by the frost.\n\nFrom the ashes a fire shall be woken,\nA light from the shadows shall spring;\nRenewed shall be blade that was broken,\nThe crownless again shall be king.";
        check caller->respond(quote);
    }

}
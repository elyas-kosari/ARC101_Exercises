// Make Body
Map<String, String> mapBody = new Map<String, String>();
mapBody.put('dttm', JSON.serialize(DateTime.now()));

// Make call
Http http = new Http();
HttpRequest request = new HttpRequest();
request.setEndpoint('callout:PostmanServer/ping');
// request.setHeader('x-mock-response-delay', '5000'); // milliseconds
// request.setTimeout(20000);
request.setMethod('POST');
request.setHeader('Content-Type', 'application/json;charset=UTF-8');
request.setBody(JSON.serialize(mapBody));
HttpResponse response = http.send(request);
System.debug(response.getStatusCode());
System.debug(response.getBody());
Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
System.debug('dttm: ' + results.get('dttm'));
System.debug('message: ' + results.get('message'));

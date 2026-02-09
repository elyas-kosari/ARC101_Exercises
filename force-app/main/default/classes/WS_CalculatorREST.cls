@RestResource(urlMapping='/calculator/*')
global with sharing class WS_CalculatorREST {
	@HttpGet
	global static String sumGET() {
		RestRequest request = RestContext.request;
		Map<String, String> params = request.params;
		Integer i = Integer.valueOf(params.get('i'));
		Integer j = Integer.valueOf(params.get('j'));
		return 'GET: ' + (i + j);
	}
	@HttpPut
	global static String sumPUT(Integer i, Integer j) {
		return 'PUT: ' + (i + j);
	}
	@HttpPatch
	global static String sumPATCH(Integer i, Integer j) {
		return 'PATCH: ' + (i + j);
	}
	@HttpPost
	global static String sumPOST(Integer i, Integer j) {
		return 'POST: ' + (i + j);
	}
	@HttpDelete
	global static String sumDELETE() {
		RestRequest request = RestContext.request;
		Map<String, String> params = request.params;
		Integer i = Integer.valueOf(params.get('i'));
		Integer j = Integer.valueOf(params.get('j'));
		return 'DELETE: ' + (i + j);
	}
}

global with sharing class WS_CalculatorSOAP {
	webService static String getRecord(Integer i, Integer j) {
		return 'SOAP: ' + (i + j);
	}
}

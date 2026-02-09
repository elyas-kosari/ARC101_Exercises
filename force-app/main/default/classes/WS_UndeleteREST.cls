@RestResource(urlMapping='/ELTOROit/undelete/*')
global with sharing class WS_UndeleteREST {
	@HttpPatch
	global static String sumPATCH(String sObjectName, ID id) {
		List<SObject> records = Database.query('SELECT Id, Name, IsDeleted FROM ' + sObjectName + ' WHERE IsDeleted = TRUE AND Id = :id ALL ROWS');
		if (records.size() == 1) {
			undelete records[0];
			return sObjectName + ' with Id ' + id + ' has been undeleted.';
		} else {
			return 'No deleted ' + sObjectName + ' found with Id ' + id;
		}
	}
}

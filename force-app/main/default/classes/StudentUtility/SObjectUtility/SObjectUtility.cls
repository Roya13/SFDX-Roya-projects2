public with sharing class SObjectUtility {
    public static void  viewTheseFields(List<String> fields , String objectName, String conditionFieldName , Object conditionalValue) {
        String r = ' SELECT ID';

        for(String field : fields){
            r+= ', ' + field;
        }

        r += ' FROM' + objectName;
        r += ' WHERE' + conditionFieldName  + '= :conditionalValue';

        List<SObject> records = Database.query(r);

        for(SObject rec : records){
            for(String feild : fields){
                System.debug(rec.get(feild));
            }
            System.debug('=========');
        }

    }
}
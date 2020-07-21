
    public class addReciepientEmail {
 
      public final List<id> idList;

    public static void addEmailToMessage(String messageId) { 
       	Http http = new Http();
		HttpRequest request = new HttpRequest();

    	request.setEndpoint('https://api.surveymonkey.net/v3/collectors/263995630/messages/' + messageId + '/recipients');

		request.setHeader('Content-Type', 'application/json');
		String authorizationHeader = 'Bearer ********************';
		request.setHeader('Authorization', authorizationHeader);
		request.setMethod('POST');
		request.setBody('{"email":"aby@xyc.com"}');
		HttpResponse response = http.send(request);
		// If the request is successful, parse the JSON response.
		System.debug(response);
		if (response.getStatusCode() == 201) {
    // Parse the JSON response
	Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            List<Object> messgaeResponse = (List<Object>) results.get('messages');
       System.debug('Here is the response  ' + response.getStatusCode());
       System.debug('Here is the response  ' + response.getBody());    
          
    		
}
      //return response;    
    }
        
         @InvocableMethod(label= 'Add Message And Recipient')  // Add Invocable method to make it invocable by process builder, that's all the method does.
    public static List<String> setCases(List <ID> ids){
          return ids;
        }

       
    
}

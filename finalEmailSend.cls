public class finalEmailSend {
       public static void sendFinalMessage (String messageId) {   
        System.debug(messageId);
        String Endpoint = 'https://api.surveymonkey.net/v3/collectors/263995630/messages/' + messageId + '/send';
       	Http http = new Http();
		HttpRequest request = new HttpRequest();
		request.setEndpoint(Endpoint);
        System.debug(Endpoint);
		request.setHeader('Content-Type', 'application/json');
		String authorizationHeader = 'Bearer 95dRvJrSMw9SM2h43riFrBGzJJ5dwaLHm6cuHe9dOR-LhriU3TYNlqQm26fy-pgtHn7eRNKbspFrCbxnXt2ROfDMK5Ajur6QxNgLlJY-8lakQxc-vZoSYqQb7475ibXH';
		request.setHeader('Authorization', authorizationHeader);
		request.setMethod('POST');
        request.setBody('{}');
		HttpResponse response = http.send(request);
		// If the request is successful, parse the JSON response.
		System.debug(response);
		if (response.getStatusCode() == 201) {
    // Parse the JSON response
	//Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
       System.debug('Here is the response  ' + response.getStatusCode());
            System.debug('Here is the response  ' + response.getBody());
           
    
}    
  // return response; 
    }
    
    @InvocableMethod(label= 'Send Email to Receipt')
    public static List<String> getCaseIds(List <ID> ids){
     // finalEmailSend.sendFinalMessage();
          return ids;
        }   
    
}





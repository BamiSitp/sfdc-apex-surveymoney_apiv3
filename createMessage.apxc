//public class createMessage implements Queueable, Database.AllowsCallouts{

public class createMessage {
    private String classMessageId;
 
 		
    public static String getMessage () { 
     	Object getId;
       String messageId;
       	Http http = new Http();
		HttpRequest request = new HttpRequest();
		request.setEndpoint('https://api.surveymonkey.net/v3/collectors/263995630/messages');
		request.setHeader('Content-Type', 'application/json');
		String authorizationHeader = 'Bearer 95dRvJrSMw9SM2h43riFrBGzJJ5dwaLHm6cuHe9dOR-LhriU3TYNlqQm26fy-pgtHn7eRNKbspFrCbxnXt2ROfDMK5Ajur6QxNgLlJY-8lakQxc-vZoSYqQb7475ibXH';
		request.setHeader('Authorization', authorizationHeader);
		request.setMethod('POST');
		request.setBody('{"from_collector_id":"263995630", "from_message_id":"78406864"}');
		HttpResponse response = http.send(request);
		// If the request is successful, parse the JSON response.
		System.debug(response);
		if (response.getStatusCode() == 200 ||response.getStatusCode() ==  201) {
    // Parse the JSON response
		Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
        System.debug(results);
     	getId =  results.get('id');
        System.debug(getId);
 
		messageId = String.valueOf(getId);

          System.debug(messageId);
    
}
      return messageId;   
        
   
    }
//public void execute(QueueableContext context) {
            
 //   		Survery_Monkey_APIRequest surveyRequest = new Survery_Monkey_APIRequest();
  //  		String messageDebug = surveyRequest.getCalloutResponse();
  //  		System.debug(messageDebug);
    		
    
  //  try{
   //     Id classbackJobId = System.enqueueJob(new finalEmailSend());
   //     System.debug(classbackJobId);
        
   // }catch(Exception e){
   //     System.debug(e.getMessage());
   // }
    
     //   }
        
    
  

}

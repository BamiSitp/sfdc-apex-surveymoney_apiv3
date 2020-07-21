public class SurveyCombinedActions {
    
    @future(callout = true)
    public static void serveyProcedure(){
        System.debug('Pass Me Not');
         String messageId = createMessage.getMessage();
     	addReciepientEmail.addEmailToMessage(messageId);
     	finalEmailSend.sendFinalMessage(messageId);
    }
	
     @InvocableMethod(label= 'Add Combined Actions')
    public static List<String> CombinedCasesID(List <ID> ids){
     serveyProcedure();
        
          return ids;
        }
}

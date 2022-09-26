public class contactControllerCls {
    @AuraEnabled
    public static List<Contact> getContacts(String recId) {
        List<Contact> contacts = [SELECT Id, Name, AccountId, Phone, Email, Description, CustomField1__c 
                                  FROM Contact
                                  WHERE AccountId =: recId                                 
                                 ];
        return contacts;
    }
	
	public static String sayHello(){
		return 'Hello';
	}
	
	public static String sayHi(){
		return 'Hi';
	}

	public static String sayWorld(){
		return 'World';
	}

	public static String sayHelloFromVsc1(){
		return 'Hi from VSC';
	}
	
	public static String sayHelloFromVsc2(){
		return 'Hi from VSC2';
	}
	
	public static String sayHi2(){
		return 'Hi2';
	}
	
}

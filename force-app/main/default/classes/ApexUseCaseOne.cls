public with sharing class ApexUseCaseOne {
    public ApexUseCaseOne() {
        
    }

    public static void createNewContact(String firstName, String lastName, String email) {
        List<Contact> contactListToInsert = new List<Contact>();
        Contact newContact = new Contact();
        if(!String.isBlank(firstName)) {
            newContact.FirstName = firstName;
            newContact.LastName = lastName;
            newContact.Email = email;
        }

        contactListToInsert.add(newContact);
        if(contactListToInsert.size() > 0) {
            insert contactListToInsert;
        }
    }
}
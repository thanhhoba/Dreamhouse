public with sharing class ContactSearch {
  public static List<Contact> searchForContacts(
    String lastName,
    String postalCode
  ) {
    if (!Schema.sObjectType.Contact.isAccessible()) {
      return null;
    }

    List<Contact> matchingContacts = [
      SELECT Id, Name
      FROM Contact
      WHERE LastName = :lastName AND MailingPostalCode = :postalCode
    ];

    return matchingContacts;
  }
}

public with sharing class ContactAndLeadSearch {
  public static List<List<sObject>> searchContactsAndLeads(String keyword) {
    List<List<sObject>> searchList = [
      FIND :keyword
      IN ALL FIELDS
      RETURNING Account(Name), Lead(FirstName, LastName)
    ];

    Account[] searchAccounts = (Account[]) searchList[0];
    Lead[] searchLeads = (Lead[]) searchList[1];

    System.debug('Found the following accounts.');
    for (Account a : searchAccounts) {
      System.debug(a.Name);
    }

    System.debug('Found the following leads.');
    for (Lead l : searchLeads) {
      System.debug(l.LastName + ', ' + l.FirstName);
    }

    return searchList;
  }
}

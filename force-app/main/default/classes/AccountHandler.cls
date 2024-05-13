public with sharing class AccountHandler {
  public static Account insertNewAccount(String accountName) {
    try {
      if (!Schema.sObjectType.Account.isCreateable()) {
        return null;
      }
      if (String.isNotBlank(accountName)) {
        Account newAccount = new Account(Name = accountName);
        insert newAccount;
        return newAccount;
      } else {
        // If the input accountName is empty, return null
        return null;
      }
    } catch (DmlException e) {
      // If a DML exception occurs, return null
      return null;
    }
  }
}

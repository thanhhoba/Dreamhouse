Account[] acctsWithContacts = [
  SELECT Name, (SELECT FirstName, LastName FROM Contacts)
  FROM Account
  WHERE Name = 'SFDC Computing'
];
// Get child records
Contact[] cts = acctsWithContacts[0].Contacts;
System.debug(
  'Name of first associated contact: ' +
    cts[0].FirstName +
    ', ' +
    cts[0].LastName
);

String nameTarget = 'SFDC Computing';
Account[] accts = [
  SELECT Name, Phone
  FROM Account
  WHERE Name = :nameTarget AND NumberOfEmployees > 25
  ORDER BY Name
  LIMIT 10
];
System.debug(accts.size() + ' account(s) returned.');
// Write all account array info
System.debug(accts);

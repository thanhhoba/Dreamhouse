Contact jane = new Contact(
  FirstName = 'Jane',
  LastName = 'Smith',
  Email = 'jane.smith@example.com',
  Description = 'Contact of the day'
);
insert jane;
// 1. Upsert using an idLookup field
// Create a second sObject variable.
// This variable doesn’t have any ID set.
Contact jane2 = new Contact(
  FirstName = 'Jane',
  LastName = 'Smith',
  Email = 'jane.smith@example.com',
  Description = 'Prefers to be contacted by email update.'
);
// Upsert the contact by using the idLookup field for matching.
upsert jane2 Contact.fields.Email;
// Verify that the contact has been updated
System.assertEquals(
  'Prefers to be contacted by email update.',
  [
    SELECT Description
    FROM Contact
    WHERE Id = :jane2.Id
  ]
  .Description
);

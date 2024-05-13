List<Account> accounts = [SELECT Id, Name FROM Account]; // Truy vấn trả về hơn 200 tài khoản
for (Account acc : accounts) {
  // Xử lý dữ liệu của từng tài khoản
  System.debug(acc.Name);
}

// if not using for
// List<Account> accounts = [SELECT Id, Name FROM Account]; // Truy vấn trả về hơn 200 tài khoản
// for (Integer i = 0; i < accounts.size(); i++) {
//     // Xử lý dữ liệu của từng tài khoản
//     System.debug(accounts[i].Name);
// }
// When the query returns more than 200 accounts, this can cause limitations and performance issues
// because Salesforce has to load all the data into memory at once.
// This can lead to memory overload and reduced application performance.


//  Retrieve Accounts That Were Created in the Last 30 Days

SELECT Id, Name
FROM Account
WHERE createdDate > LAST_MONTH

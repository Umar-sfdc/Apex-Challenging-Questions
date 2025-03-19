// Retrieve Accounts That Have No Contacts

SELECT Id, Name
FROM Account
WHERE Id NOT IN(SELECT Id FROM Contact);
//  Retrieve Contacts Who Have Related Open Opportunities


SELECT Id, Name
FROM Contact
WHERE AccountId IN (SELECT AccountId FROM Opportunity WHERE isClosed = False);


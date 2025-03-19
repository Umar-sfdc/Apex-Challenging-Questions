// Retrieve Contacts Whose Email Contains ‘salesforce.com’

SELECT Id, Name, Email 
FROM Contact 
WHERE Email LIKE '%salesforce.com%'
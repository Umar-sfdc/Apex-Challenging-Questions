// Retrieve Leads That Are Not Converted

SELECT Id, Name, isConverted
FROM Lead
WHERE isConverted = false;

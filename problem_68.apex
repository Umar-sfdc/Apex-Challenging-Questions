//  Retrieve Cases That Are Closed

SELECT Id, CaseNumber, Status
FROM Case
WHERE status = 'Working' 


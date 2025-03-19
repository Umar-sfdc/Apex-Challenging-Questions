// Get the Sum of All Closed Opportunities' Amount


SELECT SUM(Amount)
FROM Opportunity
WHERE StageName = 'Closed Won' 


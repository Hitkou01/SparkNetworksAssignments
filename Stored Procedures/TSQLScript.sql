
--Tables which are used for this assignment
	
	SELECT * FROM Religion
	SELECT * FROM Users
	SELECT * FROM UserAddress
	SELECT * FROM UserMedia
	SELECT * FROM MatchedUsers


-----TSQL code to call storedprocedures and verify its result

EXEC GenerateMatches
SELECT * FROM MatchedUsers

--
EXEC GetMatches @UserId = 1

--
EXEC RejectMatches @UserId = 1,@MatchUserId = 24
SELECT RejectedDate,* FROM MatchedUsers WHERE SourceUserID = 1

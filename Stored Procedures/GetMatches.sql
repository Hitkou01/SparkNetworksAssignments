ALTER PROCEDURE GetMatches 
	@UserId INT
   ,@Action NVARCHAR(20) = N'GetMatchById'
AS
BEGIN
	SET NOCOUNT ON;
	IF @Action = N'GetMatchById'
	BEGIN
		SELECT 
			U.[UserName]
		   ,U.[Age]
		   ,U.[Height_cms]
		   ,U.[JobTitle]
		   ,R.[ReligionName]
		   ,U.[PokemonCatchRate]
		   ,U.[IsCatLoving]
		   ,U.[CatsOwnd]	
		FROM dbo.[MatchedUsers] MU
		INNER JOIN dbo.[Users] U
			ON MU.[MatchedUserID] = U.UserId
		INNER JOIN dbo.[Religion] R
			ON U.[ReligionId] = R.[ReligionId]
		WHERE MU.SourceUserID = @UserId
	END

    
END

ALTER PROCEDURE RejectMatches 
	@UserId INT,
	@MatchId INT,
	@Action NVARCHAR(50) = N'RejectMatchById'
AS
BEGIN
	SET NOCOUNT ON;
	IF @Action = N'RejectMatchById'
	BEGIN
		UPDATE MU
		SET MU.[RejectedDate] = GetDate()
		FROM dbo.[MatchedUsers] MU	
		WHERE MU.[SourceUserID] = @UserId
		AND MU.[MatchedUserID] = @MatchId
	END

END
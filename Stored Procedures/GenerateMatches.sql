ALTER PROCEDURE GenerateMatches
	@DistFilter float = 350.00
   ,@Action NVARCHAR(20) = N'GenerateAllMatches'
AS
BEGIN
	SET NOCOUNT ON;
	IF @Action = N'GenerateAllMatches'
	BEGIN
		IF OBJECT_ID('tempdb..#MatchedUsers','u') IS NOT NULL BEGIN DROP TABLE #MatchedUsers END
		;WITH CTE AS
			(		
				SELECT 
					S.UserID AS SourceUserID
					,T.UserID AS MatchedUserID
					,CASE WHEN ROUND(S.UserGeo.STDistance(T.UserGeo),1) <= (300 * 1000) THEN 1 ELSE 0 END AS IsDistanceFltr
					,CASE WHEN ABS(SU.[Age] - MU.[Age]) < 6 THEN 1 ELSE 0 END AS IsAgeDiffFltr   			
					,CASE WHEN SU.[CatsOwnd] > 0 AND MU.[IsCatLoving] = 0 THEN 0 ELSE 1 END AS IsCatLovingFltr
					,CASE WHEN SU.[PokemonCatchRate] > 0.70 AND (SU.[PokemonCatchRate] - MU.[PokemonCatchRate] <= 0.15) THEN 1
						  WHEN (SU.[PokemonCatchRate] - MU.[PokemonCatchRate]) <= 0.30 THEN 1 ELSE 0 END AS IsPokemonFltr
					,CASE WHEN SU.[ReligionId] = MU.[ReligionId] THEN 1 ELSE 0 END IsSameReligionFltr
				FROM UserAddress S
				CROSS JOIN UserAddress T
				INNER JOIN Users SU
				ON S.[UserId] = SU.[UserId]
				INNER JOIN Users MU
				ON T.[UserID] = MU.[UserId]
				LEFT JOIN MatchedUsers DV
				ON DV.SourceUserID = SU.UserId
				AND DV.[MatchedUserID] = MU.[UserId]
				WHERE DV.MatchId IS NULL
				AND S.IsActive = 1
				AND T.IsActive = 1
				AND S.UserID <> T.UserID 
			)

		SELECT 
			ROW_NUMBER() OVER (PARTITION BY SourceUserID ORDER BY IsDistanceFltr DESC,IsAgeDiffFltr DESC,IsCatLovingFltr DESC,IsPokemonFltr DESC,IsSameReligionFltr DESC) AS Rownum,
			* 
		INTO #MatchedUsers 
		FROM CTE 
		WHERE IsDistanceFltr = 1	

		IF EXISTS(SELECT 1 FROM #MatchedUsers)
		BEGIN
			INSERT INTO MatchedUsers
				(
					 SourceUserID			   
					,MatchedUserID			   
				)
			SELECT 
				SRC.SourceUserID
			   ,SRC.MatchedUserID
			FROM #MatchedUsers SRC
			WHERE Rownum IN (1,2)
		END
	END
	
END



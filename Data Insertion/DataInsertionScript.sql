/*
	@JsonObject: It can be updated please insert new value if you want.

*/

DECLARE @JsonObject NVARCHAR(MAX) = N'
{
  "matches": [
    {
      "display_name": "Caroline",
      "age": 41,
      "job_title": "Corporate Lawyer",
      "height_in_cm": 153,
      "city": {
        "name": "Leeds",
        "lat": 53.801277,
        "lon": -1.548567
      },
      "main_photo": "http://thecatapi.com/api/images/get?format=src&type=gif",
      "pokemon_catch_rate": 0.76,
      "cats_owned": 2,
      "likes_cats": true,
      "religion": "Atheist"
    },
    {
      "display_name": "Sharon",
      "age": 47,
      "job_title": "Doctor",
      "height_in_cm": 161,
      "city": {
        "name": "Solihull",
        "lat": 52.412811,
        "lon": -1.778197
      },
      "main_photo": "http://thecatapi.com/api/images/get?format=src&type=gif",
      "pokemon_catch_rate": 0.97,
      "cats_owned": 0,
      "likes_cats": false,
      "religion": "Islam"
    },
    {
      "display_name": "Natalia",
      "age": 38,
      "job_title": "Project Manager",
      "height_in_cm": 144,
      "city": {
        "name": "Cardiff",
        "lat": 51.481583,
        "lon": -3.179090
      },
      "main_photo": "http://thecatapi.com/api/images/get?format=src&type=gif",
      "pokemon_catch_rate": 0.47,
      "cats_owned": 5,
      "likes_cats": false,
      "religion": "Christian"
    },
    {
      "display_name": "Marta",
      "age": 55,
      "job_title": "Finance",
      "height_in_cm": 140,
      "city": {
        "name": "Eastbourne",
        "lat": 50.768036,
        "lon": 0.290472
      },
      "main_photo": "http://thecatapi.com/api/images/get?format=src&type=gif",
      "pokemon_catch_rate": 0.95,
      "cats_owned": 0,
      "likes_cats": false,
      "religion": "Agnostic"
    },
    {
      "display_name": "Maria",
      "age": 43,
      "job_title": "CEO",
      "height_in_cm": 175,
      "city": {
        "name": "London",
        "lat": 51.509865,
        "lon": -0.118092
      },
      "main_photo": "http://thecatapi.com/api/images/get?format=src&type=gif",
      "pokemon_catch_rate": 0.88,
      "cats_owned": 0,
      "likes_cats": false,
      "religion": "Christian"
    },
    {
      "display_name": "Stephanie",
      "age": 39,
      "job_title": "Project Manager",
      "height_in_cm": 153,
      "city": {
        "name": "London",
        "lat": 51.509865,
        "lon": -0.118092
      },
      "pokemon_catch_rate": 0.87,
      "cats_owned": 4,
      "likes_cats": false,
      "religion": "Christian"
    },
    {
      "display_name": "Claire",
      "age": 48,
      "job_title": "GP",
      "height_in_cm": 167,
      "city": {
        "name": "London",
        "lat": 51.509865,
        "lon": -0.118092
      },
      "main_photo": "http://thecatapi.com/api/images/get?format=src&type=gif",
      "pokemon_catch_rate": 0.83,
      "cats_owned": 6,
      "likes_cats": false,
      "religion": "Atheist"
    },
    {
      "display_name": "Colette",
      "age": 39,
      "job_title": "Doctor - Hospital",
      "height_in_cm": 177,
      "city": {
        "name": "Swindon",
        "lat": 51.568535,
        "lon": -1.772232
      },
      "main_photo": "http://thecatapi.com/api/images/get?format=src&type=gif",
      "pokemon_catch_rate": 0.89,
      "cats_owned": 2,
      "likes_cats": false,
      "religion": "Christian"
    },
    {
      "display_name": "Caroline",
      "age": 43,
      "job_title": "Marketing Consultant",
      "height_in_cm": 160,
      "city": {
        "name": "Oxford",
        "lat": 51.752022,
        "lon": -1.257677
      },
      "main_photo": "http://thecatapi.com/api/images/get?format=src&type=gif",
      "pokemon_catch_rate": 0.91,
      "cats_owned": 1,
      "likes_cats": false,
      "religion": "Atheist"
    },
    {
      "display_name": "Kate",
      "age": 42,
      "job_title": "Psychologist",
      "height_in_cm": 160,
      "city": {
        "name": "Salisbury",
        "lat": 51.068787,
        "lon": -1.794472
      },
      "main_photo": "http://thecatapi.com/api/images/get?format=src&type=gif",
      "pokemon_catch_rate": 0.97,
      "cats_owned": 10,
      "likes_cats": false,
      "religion": "Buddhist"
    },
    {
      "display_name": "Katie",
      "age": 40,
      "job_title": "Lawyer",
      "height_in_cm": 148,
      "city": {
        "name": "Weymouth",
        "lat": 50.614429,
        "lon": -2.457621
      },
      "pokemon_catch_rate": 0.94,
      "cats_owned": 0,
      "likes_cats": false,
      "religion": "Atheist"
    },
    {
      "display_name": "Clare",
      "age": 40,
      "job_title": "Accountant",
      "height_in_cm": 144,
      "city": {
        "name": "Bournemouth",
        "lat": 50.720806,
        "lon": -1.904755
      },
      "main_photo": "http://thecatapi.com/api/images/get?format=src&type=gif",
      "pokemon_catch_rate": 0.90,
      "cats_owned": 8,
      "likes_cats": false,
      "religion": "Christian"
    },
    {
      "display_name": "Laura",
      "age": 39,
      "job_title": "Lawyer",
      "height_in_cm": 160,
      "city": {
        "name": "Plymouth",
        "lat": 50.376289,
        "lon": -4.143841
      },
      "main_photo": "http://thecatapi.com/api/images/get?format=src&type=gif",
      "pokemon_catch_rate": 0.89,
      "cats_owned": 0,
      "likes_cats": false,
      "religion": "Christian"
    },
    {
      "display_name": "Katlin",
      "age": 39,
      "job_title": "Barrister",
      "height_in_cm": 153,
      "city": {
        "name": "Inverness",
        "lat": 57.477772,
        "lon": -4.224721
      },
      "main_photo": "http://thecatapi.com/api/images/get?format=src&type=gif",
      "pokemon_catch_rate": 0.87,
      "cats_owned": 0,
      "likes_cats": true,
      "religion": "Jewish"
    },
    {
      "display_name": "Tracy",
      "age": 39,
      "job_title": "Lawyer",
      "height_in_cm": 153,
      "city": {
        "name": "Aberdeen",
        "lat": 57.149651,
        "lon": -2.099075
      },
      "main_photo": "http://thecatapi.com/api/images/get?format=src&type=gif",
      "pokemon_catch_rate": 0.87,
      "cats_owned": 0,
      "likes_cats": false,
      "religion": "Christian"
    },
    {
      "display_name": "Angie",
      "age": 50,
      "job_title": "Accountant",
      "height_in_cm": 153,
      "city": {
        "name": "Ayr",
        "lat": 55.458565,
        "lon": -4.629179
      },
      "main_photo": "http://thecatapi.com/api/images/get?format=src&type=gif",
      "pokemon_catch_rate": 0.93,
      "cats_owned": 8,
      "likes_cats": true,
      "religion": "Atheist"
    },
    {
      "display_name": "Samantha",
      "age": 32,
      "job_title": "Project Manager",
      "height_in_cm": 161,
      "city": {
        "name": "Belfast",
        "lat": 54.607868,
        "lon": -5.926437
      },
      "main_photo": "http://thecatapi.com/api/images/get?format=src&type=gif",
      "pokemon_catch_rate": 0.89,
      "cats_owned": 0,
      "likes_cats": false,
      "religion": "Christian"
    },
    {
      "display_name": "Elizabeth",
      "age": 41,
      "job_title": "Dentist",
      "height_in_cm": 145,
      "city": {
        "name": "Londonderry",
        "lat": 55.006763,
        "lon": -7.318268
      },
      "main_photo": "http://thecatapi.com/api/images/get?format=src&type=gif",
      "pokemon_catch_rate": 0.83,
      "cats_owned": 4,
      "likes_cats": true,
      "religion": "Islam"
    },
    {
      "display_name": "Emma",
      "age": 40,
      "job_title": "Banker",
      "height_in_cm": 150,
      "city": {
        "name": "Leeds",
        "lat": 53.801277,
        "lon": -1.548567
      },
      "main_photo": "http://thecatapi.com/api/images/get?format=src&type=gif",
      "pokemon_catch_rate": 0.73,
      "cats_owned": 0,
      "likes_cats": false,
      "religion": "Christian"
    },
    {
      "display_name": "Diana",
      "age": 44,
      "job_title": "Consultant",
      "height_in_cm": 153,
      "city": {
        "name": "London",
        "lat": 51.509865,
        "lon": -0.118092
      },
      "main_photo": "http://thecatapi.com/api/images/get?format=src&type=gif",
      "pokemon_catch_rate": 0.50,
      "cats_owned": 0,
      "likes_cats": false,
      "religion": "Atheist"
    },
    {
      "display_name": "Kysha",
      "age": 45,
      "job_title": "Lawyer",
      "height_in_cm": 144,
      "city": {
        "name": "London",
        "lat": 51.509865,
        "lon": -0.118092
      },
      "pokemon_catch_rate": 0.88,
      "cats_owned": 10,
      "likes_cats": true,
      "religion": "Islam"
    },
    {
      "display_name": "Anne",
      "age": 38,
      "job_title": "Marketing Consultant",
      "height_in_cm": 170,
      "city": {
        "name": "Swindon",
        "lat": 51.568535,
        "lon": -1.772232
      },
      "main_photo": "http://thecatapi.com/api/images/get?format=src&type=gif",
      "pokemon_catch_rate": 0.88,
      "cats_owned": 0,
      "likes_cats": false,
      "religion": "Jewish"
    },
    {
      "display_name": "Daniela",
      "age": 37,
      "job_title": "Doctor",
      "height_in_cm": 177,
      "city": {
        "name": "Bournemouth",
        "lat": 50.720806,
        "lon": -1.904755
      },
      "main_photo": "http://thecatapi.com/api/images/get?format=src&type=gif",
      "pokemon_catch_rate": 0.76,
      "cats_owned": 0,
      "likes_cats": false,
      "religion": "Christian"
    },
    {
      "display_name": "Katherine",
      "age": 39,
      "job_title": "Lawyer",
      "height_in_cm": 177,
      "city": {
        "name": "London",
        "lat": 51.509865,
        "lon": -0.118092
      },
      "main_photo": "http://thecatapi.com/api/images/get?format=src&type=gif",
      "pokemon_catch_rate": 0.99,
      "cats_owned": 50,
      "likes_cats": true,
      "religion": "Atheist"
    },
    {
      "display_name": "Susan",
      "age": 25,
      "job_title": "Project Manager",
      "height_in_cm": 166,
      "city": {
        "name": "Harlow",
        "lat": 51.772938,
        "lon": 0.102310
      },
      "main_photo": "http://thecatapi.com/api/images/get?format=src&type=gif",
      "pokemon_catch_rate": 0.88,
      "cats_owned": 0,
      "likes_cats": false,
      "religion": "Christian"
    }
  ]
}
'
BEGIN TRY
	BEGIN TRAN
---------------Data Insertion Start------------------------------------

-----Inserting Master Religion Data by searching the json object and fetching DISTINCT religions.
		INSERT INTO [dbo].[Religion]
			(
				ReligionName
			)

		SELECT DISTINCT J.Religion
		FROM OPENJSON(@JsonObject, '$.matches')
		WITH (
		   Religion NVARCHAR(20) '$.religion'

		) J
		LEFT JOIN [dbo].[Religion] R
		ON J.Religion = R.ReligionName
		WHERE R.[ReligionId] IS NULL

		INSERT INTO [dbo].[Users]
			(
				UserName
			   ,Age
			   ,JobTitle
			   ,Height_cms	  
			   ,PokemonCatchRate
			   ,CatsOwnd
			   ,IsCatLoving
			   ,ReligionId
			)
		SELECT 
			J.UserName
			,Age = CAST(J.Age AS INT)
			,J.JobTitle
			,Height = CAST(Height AS FLOAT)   
			,PokemonCatchRate = CAST(J.PokemonCatchRate AS FLOAT)
			,CatsOwnd = CAST(J.CatsOwnd AS INT)
			,IsCatLoving = CAST(J.IsCatLoving AS BIT)
			--,Walking = CAST(J.Walking AS BIT)
			,R.ReligionId
		FROM OPENJSON(@JsonObject, '$.matches') 
		WITH (
			UserName NVARCHAR(20) '$.display_name'
			,Age INT '$.age'
			,JobTitle NVARCHAR(20) '$.job_title'
			,Height FLOAT '$.height_in_cm'	
			,PokemonCatchRate NVARCHAR(20) '$.pokemon_catch_rate'
			,CatsOwnd INT '$.cats_owned'
			,IsCatLoving BIT '$.likes_cats'
		--	,Walking BIT '$.walks_in_parks'
			,Religion NVARCHAR(20) '$.religion'
		) J
		INNER JOIN [dbo].[Religion] R
			ON J.Religion = R.ReligionName
		LEFT JOIN [dbo].[Users] U
			ON J.[UserName] = U.[UserName]
			AND J.[Age] = U.[Age]
			AND J.[Height] = U.[Height_cms]
			AND J.[JobTitle] = U.[JobTitle]
		WHERE U.UserId IS NULL

-------UserAddress
		;WITH CTE AS
	(
		SELECT 
   
			J.CityName
		   ,Latitude = CAST(J.Latitude AS DECIMAL(12,9))
		   ,Longitude = CAST(J.Longitude AS DECIMAL(12,9))
		   ,U.UserId		   
		   ,RowNum = ROW_NUMBER() OVER (Partition BY U.UserId ORDER BY U.UserId)
		   
		FROM OPENJSON(@JsonObject, '$.matches') 
		WITH (
			UserName NVARCHAR(20) '$.display_name'
		   ,CityName NVARCHAR(20) '$.city.name'
		   ,Latitude DECIMAL(12,9) '$.city.lat'
		   ,Longitude DECIMAL(12,9) '$.city.lon' 
		   ,Age INT '$.age'
		   ,JobTitle NVARCHAR(20) '$.job_title'
		   ,Height FLOAT '$.height_in_cm'
		) J
		INNER JOIN [dbo].[Users] U
			ON  J.[UserName] = U.[UserName]
			AND J.[Age] = U.[Age]
			AND J.[Height] = U.[Height_cms]
			AND J.[JobTitle] = U.[JobTitle]		
	)	
	INSERT INTO [dbo].[UserAddress]
		(
			CityName
		   ,Latitude
		   ,Longitude
		   ,IsActive
		   ,UserId
		)
	SELECT	
		C.CityName
	   ,C.Latitude
	   ,C.Longitude
	   ,CASE WHEN C.RowNum = 1 THEN 1 ELSE 0 END
	   ,C.UserId
	FROM CTE C
	LEFT JOIN [dbo].[UserAddress] UA
		ON C.[UserId] = UA.[UserId]
		AND C.[CityName] = UA.[CityName]
		AND C.[Latitude] = UA.[Latitude]
		AND C.[Longitude] = UA.[Longitude]
	WHERE UA.UserAddressId IS NULL

		UPDATE U
		SET UserGeo = geography::Point(Latitude,Longitude,4326) 
		FROM UserAddress U


--------UserMedia
		;WITH CTE AS
	(
		SELECT 			
		    U.UserId		   
		   ,RowNum = ROW_NUMBER() OVER (Partition BY U.UserId ORDER BY U.UserId)
		   ,PhotoUrl
		   ,U.UserName
		   
		FROM OPENJSON(@JsonObject, '$.matches') 
		WITH (
			UserName NVARCHAR(20) '$.display_name'
		   ,CityName NVARCHAR(20) '$.city.name'
		   ,Latitude DECIMAL(12,9) '$.city.lat'
		   ,Longitude DECIMAL(12,9) '$.city.lon' 
		   ,Age INT '$.age'
		   ,PhotoUrl NVARCHAR(50) '$.main_photo'
		   ,JobTitle NVARCHAR(20) '$.job_title'
		   ,Height FLOAT '$.height_in_cm'
		) J
		INNER JOIN [dbo].[Users] U
			ON  J.[UserName] = U.[UserName]
			AND J.[Age] = U.[Age]
			AND J.[Height] = U.[Height_cms]
			AND J.[JobTitle] = U.[JobTitle]		
	)	

	INSERT INTO [dbo].[UserMedia]
		(
			UserId
		   ,PhotoUrl
		   ,IsMain
		)
	
	SELECT	
		C.UserId
	   ,C.PhotoUrl
	   ,CASE WHEN C.RowNum = 1 AND C.PhotoUrl IS NOT NULL THEN 1 ELSE 0 END
	FROM CTE C

	COMMIT TRAN
END TRY
BEGIN CATCH
	PRINT 'Something went wrong'
	ROLLBACK TRAN
	
END CATCH

---------------Data Insertion END-----------------------------------
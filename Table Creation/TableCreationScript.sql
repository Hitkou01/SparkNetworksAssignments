/*
I am assuming the above provided Json object is the Json for the User related data. Also this Json object is responsible for NewUsers only, so I am not handling any update user details case.
Below Script is handling Insertion cases
So I am creating below tables i.e.

	1) [dbo].[Religion] --> Its the master table for storing the religions. So I am searching the json object and fetching DISTINCT religions and Inserting it in the table. 
							 Also if the above same Json object is modified by adding new user with new Religion type. Below written Insertion script for Religion is handling this case also.
	2) [dbo].[Users]  -->  Its the master table for Users with some of the columns i.e. UserName,Age,JobTitle,Height_cms,PokemonCatchRate,CatsOwned,IsCatLoving,ReligionID(Primary key from [Religion] table)
	3) [dbo].[UserAddress] --> Its the linkage table of user and its address, assuming single user is having multiple address. Also there is one bit column IsActive, which will state 1 active adress per user.
							   Also there is one calculated column UserGeo geography column, which is being calculated the geographical value based on lat and lon.
	4) [dbo].[UserMedia] --> Its the linkage table of user and its images, assuming single user is having multiple address.
							 Also there is one bit column IsMain, which will state 1 main profile picture per user.
	5) [dbo].[MatchedUsers] --> Its the table where generate_matches stored procedure will populate the matches periodically.								 


*/

IF NOT EXISTS(SELECT 1 FROM sys.tables WHERE [name] = N'Religion')
BEGIN
	CREATE TABLE [dbo].[Religion]
		(
			ReligionId INT NOT NULL IDENTITY(1,1)
		   ,ReligionName NVARCHAR(20) NOT NULL	   
		   PRIMARY KEY(ReligionId)
		)
END
IF NOT EXISTS(SELECT 1 FROM sys.tables WHERE [name] = N'Users')
BEGIN
	CREATE TABLE [dbo].[Users]
		(
			UserId INT NOT NULL IDENTITY(1,1)
		   ,UserName NVARCHAR(20) NOT NULL
		   ,Age INT NOT NULL
		   ,JobTitle NVARCHAR(20) NOT NULL
		   ,Height_cms float NOT NULL--cm	   
		   ,PokemonCatchRate float NOT NULL
		   ,CatsOwnd INT NOT NULL
		   ,IsCatLoving BIT NOT NULL
		   ,ReligionId INT NOT NULL FOREIGN KEY REFERENCES Religion(ReligionId)
		   PRIMARY KEY(UserId)
		)
END
IF NOT EXISTS(SELECT 1 FROM sys.tables WHERE [name] = N'UserAddress')
BEGIN
	CREATE TABLE [dbo].[UserAddress]
		(
			UserAddressId INT NOT NULL IDENTITY(1,1)
		   ,CityName NVARCHAR(50)
		   ,Latitude DECIMAL(12,9)
		   ,Longitude DECIMAL(12,9)
		   ,UserGeo GEOGRAPHY
		   ,IsActive BIT
		   ,UserId INT NOT NULL FOREIGN KEY REFERENCES Users(UserId)
		   PRIMARY KEY(UserAddressId)
		)
END
IF NOT EXISTS(SELECT 1 FROM sys.tables WHERE [name] = N'UserMedia')
BEGIN
	CREATE TABLE [dbo].[UserMedia]
		(
			UserMediaId INT NOT NULL IDENTITY(1,1)
		   ,PhotoUrl NVARCHAR(250)	   
		   ,IsMain BIT
		   ,UserId INT NOT NULL FOREIGN KEY REFERENCES Users(UserId)
		   PRIMARY KEY(UserMediaId)
		)
END
IF NOT EXISTS(SELECT 1 FROM sys.tables WHERE [name] = N'MatchedUsers')
BEGIN
	CREATE TABLE MatchedUsers
			(
				MatchId INT NOT NULL IDENTITY(1,1)
			   ,SourceUserID INT		  
			   ,MatchedUserID INT
			   ,RejectedDate DATETIME	   
			   PRIMARY KEY(MatchId)
			)
END
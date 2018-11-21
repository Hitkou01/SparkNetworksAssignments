# SparkNetworksAssignments

Matchmaking assigment:

Hello Team,

I have completed the Matchmaking asignment in TSQL language and to test the same there will be below STEPS to execute and test the Stored Procedures and the insertion script.

1) Download the SSMS(SQL Server Management Studio). Attached in the same repository.
2) In Management Studio you can connect to Object Explorer(File -> Connect Object Explorer).
3) Please provide the Server Name(Mentioned in the email).
4) In Authentication Dropdown please select SQL Server Authentication.
5) Please provide Login and Password(Mentioned in the email).
6) After connecting you can see SparkNetworks(created manually) database under Databases folder.

After connecting to Microsoft SQL Azure server through SSMS.

Order of Script Excecution:

1) TableCreationScript(Creating different tables under default dbo schema)
2) DataInsertionScript(Inserting the data(Json Object Provided by you.Json can be updated by updating the value of @JsonObject) into their respective tables)
3) GenerateMatches(I have already created the definition of the SP in above mentioned database, after above 2 scripts you can execute this Stored procedure to  populate Match table.)
4) GetMatches(I have already created the definition of the SP in above mentioned database)
5) RejectMatches(I have already created the definition of the SP in above mentioned database)
6) SQLScript(Their are some queries from where you can verify the results above executing above script order)

I have also mentioned some comments about the tables and their usage in TableCreationScript.



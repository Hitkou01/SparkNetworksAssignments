# SparkNetworks Assignments

Hello Team,

As discussed I have completed the assignment in TSQL language and to test the same there will be below steps to download Azure Data Studio(database tool to connect to Azure SQL Server) to execute and test the Stored Procedures and the insertion script.

STEPS TO DOWNLOAD ADS(Azure Data Studio) AND CONNECT TO AZURE SQL SERVER: 

1) Download the ADS for Windows or macOS from https://docs.microsoft.com/en-us/sql/azure-data-studio/download?view=sql-server-2017

NOTE: If you are downloading for Windows please select ".zip" link and follow below steps. If you are doing it for macOS please follow 2 steps in above mentioned download link.

After downloading and extracting .zip file, please follow below steps to connect to Azure SQL Server:

1) In azuredatastudio-windows folder you will find azuredatastudio application, please launch it.
2) In Azure data Studio now we need to setup a connection.
3) Connection Type: Microsoft SQL Server
4) Server: Mentioned in the email
5) Authentication Type: SQL Login
6) User Name: Mentioned in Email
7) Password: Mentioned in Email
8) After providing above details, you can select SparkNetworks(created manually) database under Database dropdown and connect it.
9) After connecting you can open new query window by File -> New query



Attached are the TSQL scripts and StoredProcedures.



Order of Script Excecution:

1) TableCreationScript(Creating different tables under default dbo schema)
2) DataInsertionScript(Inserting the data(Json Object Provided by you.Json can be updated by updating the value of @JsonObject) into their respective tables)
3) GenerateMatches(I have already created the definition of the SP in above mentioned database)
4) GetMatches(I have already created the definition of the SP in above mentioned database)
5) RejectMatches(I have already created the definition of the SP in above mentioned database)
6) SQLScript(Their are some queries from where you can verify the results above executing above script order)

I have also mentioned some comments about the tables and their usage in TableCreationScript.



# SparkNetworks Assignments

Hello Team,

As discussed I have completed the assignment in TSQL language and to test the same there will be below steps to download SSMS(interface to connect to Microsoft server) to execute and test the Stored Procedures and the insertion script.

STEPS TO DOWNLOAD SSMS(SQL Server Management Studio) AND CONNECT TO AZURE SQL SERVER: 

1) Download the SSMS. Attached in the same repository in zip file.
2) In Management Studio you can connect to Object Explorer(File -> Connect Object Explorer).
3) Please provide the Server Name(Mentioned in the email).
4) In Authentication Dropdown please select SQL Server Authentication.
5) Please provide Login and Password(Mentioned in the email).
6) After connecting you can see SparkNetworks(created manually) database under Databases folder.


Attached are the TSQL scripts and StoredProcedures(Also attached are same scripts in the assignment submission email). You can also open them in SSMS query window and execute it on above mentioned DB to populate data.



Order of Script Excecution:

1) TableCreationScript(Creating different tables under default dbo schema)
2) DataInsertionScript(Inserting the data(Json Object Provided by you.Json can be updated by updating the value of @JsonObject) into their respective tables)
3) GenerateMatches(I have already created the definition of the SP in above mentioned database)
4) GetMatches(I have already created the definition of the SP in above mentioned database)
5) RejectMatches(I have already created the definition of the SP in above mentioned database)
6) SQLScript(Their are some queries from where you can verify the results above executing above script order)

I have also mentioned some comments about the tables and their usage in TableCreationScript.



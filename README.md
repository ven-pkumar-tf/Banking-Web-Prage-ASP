Reference Video URL: https://youtu.be/VYmsoCWjvM4

ASP.NET project for Banking Transaction Monitoring purpose.

Docker Run:

docker run -e 'ACCEPT_EULA=Y' -e 'MSSQL_PID=Express' -e 'SA_PASSWORD=NewPassword1234' -e 'MSSQL_DBNAME=TransactionDB' -e 'MSSQL_USER=Pasupathikumar' -p 1433:1433 --name sql_server_container -d mcr.microsoft.com/mssql/server

Banking-Web-Prage-ASP/
├── BankTransactions/              
│   ├── .vs/                       
│   ├── bin/                       
│   ├── Controllers/               
│   ├── Migrations/                
│   ├── Models/                    
│   ├── obj/                       
│   ├── Properties/                
│   ├── Views/                     
│   ├── wwwroot/                   
│   ├── BankTransactions.csproj    
│   ├── BankTransactions.sln       
│   ├── Dockerfile                 
│   ├── Program.cs                 
│   └── .editorconfig              
├── .github/                       
├── README.md                      
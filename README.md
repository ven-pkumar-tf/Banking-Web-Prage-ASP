ASP.NET project for Banking Transaction Monitoring purpose.

Docker Run:

docker pull mcr.microsoft.com/mssql/server:2019-latest

docker run -e 'ACCEPT_EULA=Y' -e 'MSSQL_PID=Express' -e 'MSSQL_SA_PASSWORD=NewPassword1234' -p 1433:1433 --name sql_server_container -d mcr.microsoft.com/mssql/server:2019-latest

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
│   ├── Program.cs                 
│   └── .editorconfig              
├── .github/                       
├── README.md                      
├── Dockerfile                    
├── bankapp.yml


docker run -d --name bankdb -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=NewPassword1234" -p 1433:1433 mcr.microsoft.com/mssql/server

FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build

WORKDIR /app

COPY BankTransactions.csproj ./
RUN dotnet restore

COPY . .

RUN dotnet build -c Release -o /app/build

RUN dotnet publish -c Release -o /app/publish

FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS runtime

WORKDIR /app

COPY --from=build /app/publish ./


EXPOSE 5171

# Start the application
ENTRYPOINT ["dotnet", "BankTransactions.dll"]

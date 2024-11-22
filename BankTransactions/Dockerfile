FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build

WORKDIR /app

COPY *.csproj ./

RUN dotnet restore

RUN dotnet tool install --global dotnet-ef

COPY . ./

RUN dotnet ef database update


RUN dotnet build 

EXPOSE 5171

ENTRYPOINT [ "dotnet", "run" ]
# Use the official .NET 6.0 SDK as a base image
FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build

# Set the working directory inside the container
WORKDIR /app

# Copy the project files into the container
COPY . ./

# Set the working directory to the subfolder containing the .csproj file
WORKDIR /app/BankTransactions

# Restore dependencies (including tools)
RUN dotnet restore



# Publish the application
RUN dotnet publish -c Release -o /app/out

# Expose the application port (optional, depending on your app)
EXPOSE 5171

# Run the application
ENTRYPOINT ["dotnet", "/app/out/BankTransactions.dll"]

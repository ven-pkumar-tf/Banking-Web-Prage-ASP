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

# Install the EF Core CLI tools globally
RUN dotnet tool install --global dotnet-ef --version 6.0.2

# Add the dotnet tools directory to the PATH
ENV PATH="$PATH:/root/.dotnet/tools"

# Set environment to Development (to see detailed errors if needed)
ENV ASPNETCORE_ENVIRONMENT=Development

# Apply the EF Core migrations
RUN dotnet ef database update

# Publish the application
RUN dotnet publish -c Release -o /app/out

# Expose the application port (optional, depending on your app)
EXPOSE 5171

# Run the application
ENTRYPOINT ["dotnet", "/app/out/BankTransactions.dll"]

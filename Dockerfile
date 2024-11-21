# Use the official SQL Server image
FROM mcr.microsoft.com/mssql/server:2019-latest

# Set the environment variable for the SA password
ENV MSSQL_SA_PASSWORD=NewPassword1234
ENV ACCEPT_EULA=Y
ENV MSSQL_PID=Express

# Create a directory for the configuration files
RUN mkdir -p /usr/config

# Copy the initialization SQL script into the container
COPY init.sql /usr/config/init.sql

# Expose the default SQL Server port
EXPOSE 1433

# Command to run SQL Server in the background
CMD /opt/mssql/bin/sqlservr

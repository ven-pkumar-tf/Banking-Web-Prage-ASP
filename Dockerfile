# Use the official Microsoft SQL Server 2019 image
FROM mcr.microsoft.com/mssql/server:2019-latest

# Set environment variables for SQL Server
ENV ACCEPT_EULA=Y
ENV MSSQL_SA_PASSWORD=NewPassword1234
ENV MSSQL_PID=Express

# Create a directory for initialization scripts
RUN mkdir -p /usr/config

# Copy the initialization SQL script into the container
COPY init.sql /usr/config/init.sql

# Expose the default SQL Server port
EXPOSE 1433

# Start SQL Server and run the initialization script
CMD /opt/mssql/bin/sqlservr & \
    sleep 20s && \
    /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P 'NewPassword1234' -i /usr/config/init.sql

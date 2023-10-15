# Use the official SQL Server image as the base image
FROM mcr.microsoft.com/mssql/server

# Set the environment variables for SQL Server
ENV SA_PASSWORD MySecretPassword123
ENV ACCEPT_EULA Y

# Copy the SQL script into the image
COPY Create-Database.sql /docker-entrypoint-initdb.d/

# Expose the SQL Server port
EXPOSE 1433

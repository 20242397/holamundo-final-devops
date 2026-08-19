# Etapa 1: Compilar la aplicación
FROM mcr.microsoft.com/dotnet/sdk:10.0 AS build
WORKDIR /src
COPY HolaMundoApp/*.csproj HolaMundoApp/
RUN dotnet restore HolaMundoApp/HolaMundoApp.csproj
COPY HolaMundoApp/. HolaMundoApp/
RUN dotnet publish HolaMundoApp/HolaMundoApp.csproj -c Release -o /app/publish

# Etapa 2: Imagen final, más liviana
FROM mcr.microsoft.com/dotnet/aspnet:10.0 AS final
WORKDIR /app
COPY --from=build /app/publish .
EXPOSE 8080
ENTRYPOINT ["dotnet", "HolaMundoApp.dll"]

ARG VERSION=mcr.microsoft.com/dotnet/runtime:6.0
ARG VERSION2=mcr.microsoft.com/dotnet/sdk:6.0

FROM ${VERSION} AS base
WORKDIR /app

FROM  ${VERSION2} AS build
WORKDIR /src
COPY ["Prueba.csproj", "./"]
RUN dotnet restore "Prueba.csproj"
COPY . .
WORKDIR "/src/."
RUN dotnet build "Prueba.csproj" -c debug -o /app/build

FROM build AS publish
RUN dotnet publish "Prueba.csproj" -c debug -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "Prueba.dll"]


FROM microsoft/aspnetcore:1.0
ARG source=.
WORKDIR /app
ENV ASPNETCORE_URLS http://*:80
EXPOSE 80
COPY $source .
ENTRYPOINT ["dotnet", "Shop.IM.WebApi.dll"]

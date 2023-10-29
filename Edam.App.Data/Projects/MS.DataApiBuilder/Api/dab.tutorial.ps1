
# LEARN ABOUT DAB --------------------------------------------
#
# https://learn.microsoft.com/en-us/azure/data-api-builder/

# dotnet --list-sdks

# INSTALL/UPDATE DAB CLI -------------------------------------
#
# dotnet tool install --global Microsoft.DataApiBuilder
# dotnet tool update --global Microsoft.DataApiBuilder

# TEST DAB CLI INSTALLATION ----------------------------------
#
# after installation test dab with the following
dab --version
dab --help

# create an environment file (.env) as folows:
#
# my-connection-string="[PUT-YOUR-CONNECTION-STRING-HERE]"
# DAB_ENVIRONMENT=Development

# create a config file to start-up efforts
dab init --help
dab init --database-type mssql --host-mode Development -c dab.init.Development.json --connection-string "Server=.;Database=Edam.Database;User Id=DbUser;Password=MySecretPassword!;TrustServerCertificate=True"

# within your config-file you can specify the connection-string from the environment as follows:
# {
#    "connection-string": "@env('my-connection-string')"
# }

# start dab with a given config file
dab start -c dab-cli.config.json

# export the required schema as a file and save to disk... NW
dab export -o ./schemas -c dab-cli.config.json -g schema.graphql

# test endpoints in the browser
#
# https://localhost:5001/swagger/index.html
# https://localhost:5001/api/DataDomainType
# https://localhost:5001/graphql/


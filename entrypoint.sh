#!/bin/bash
set -euo pipefail

# default values
[[ -z "$SESSION_CODE" ]] && export SESSION_CODE='TWT'
# supplied via docker run:
[[ -z "$RESOURCE_GROUP_NAME" ]] && echo "RESOURCE_GROUP_NAME not set!" && exit 1
[[ -z "$TENANT_ID" ]] && echo "TENANT_ID not set!" && exit 1
[[ -z "$CLIENT_ID" ]] && echo "CLIENT_ID not set!" && exit 1
[[ -z "$CLIENT_SECRET" ]] && echo "CLIENT_SECRET not set!" && exit 1
[[ -z "$USER_ID" ]] && echo "USER_ID not set!" && exit 1

# Log into Azure with Service Principal
az login --service-principal --tenant $TENANT_ID --username $CLIENT_ID --password $CLIENT_SECRET 

# Tag Resource Group
az group update --resource-group $RESOURCE_GROUP_NAME --tags ITT-Tracking=$SESSION_CODE CreatedBy=$USER_ID

bash apps40/deploy.sh

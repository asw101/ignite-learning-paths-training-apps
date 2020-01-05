# README

```bash
# build
docker build -t itt-bootstrap:2.0 --build-arg IMAGE=mcr.microsoft.com/powershell .

# run
docker run --rm \
    -e ENTRYPOINT='entrypoint.sh' \
    -e BRANCH='aaron-2' \
    -e REPOSITORY='https://github.com/asw101/ignite-learning-paths-training-apps.git' \
    -e RESOURCE_GROUP_NAME=$RESOURCE_GROUP \
    -e TENANT_ID=$SP_TENANT_ID \
    -e CLIENT_ID=$SP_CLIENT_ID \
    -e CLIENT_SECRET=$SP_CLIENT_SECRET \
    -e USER_ID=$EMAIL_ADDRESS \
    -it itt-bootstrap:2.0 bash
```

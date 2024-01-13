# gcpnerd

## API

- Create a Service Account with Editor Role
- Create a Key and Download the JSON file
- Add it to the `versions.tf` file `provider.credentials` section

```
cd ./infra/apis
terraform init
terraform plan
terraform apply
```

# App

Create a Service Account with the following roles:

- Cloud Datastore Owner: `roles/datastore.owner`
- Cloud Run Invoker: `roles/run.invoker`
- Storage Object Viewer: `roles/storage.objectViewer`
- Secret Manager Secret Accessor: `roles/secretmanager.secretAccessor`

> Those roles didn't work for me, so I resorted to a `roles/owner` instead

https://console.cloud.google.com/iam-admin/serviceaccounts

- Create a Key and Download the JSON file
- Add it to the `versions.tf` file `provider.credentials` section

```
cd ./infra/app
terraform init
terraform plan
terraform apply
```

## CICD

- Connect Google Cloud Project to Repo

  - Choose the 'global' region
  - Select the "Done" button (not 'Create Trigger')

- https://console.cloud.google.com/cloud-build/triggers/connect

```
cd ./infra/app
terraform init
terraform plan
terraform apply
```

# Integrate with Backstage

## Register as Entity in Backstage app

There needs to an entry made in the Backstage configuration file `app-config.yaml`/`app-config.local.yaml`/`app-config.production.yaml` depending upon the environment.

The new config entry can be something like below:

`
catalog:
  rules:
    - allow: [Component, System, API, Resource, Location]
  locations:
    - type: url
      target: https://github.com/brahmdev/sample-create-react-app/blob/main/data/all.yml
      rules:
        - allow: [User, Group]
`

## Configure Required Entity

`/data/all.yml` file in this repository is referred/configured in Backstage app which loads `catalog-info.yml`, `all-apis.yml`, and `all-groups.yml` file liking which registers Component (`spec: website`), all apis and all groups repectively needed for this App.
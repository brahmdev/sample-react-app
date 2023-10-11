# Integrate with Backstage

## Register as an Entity in the Backstage app

### Manually through configuration

There needs to be an entry made in the Backstage configuration file `app-config.yaml`/`app-config.local.yaml`/`app-config.production.yaml` depending upon the environment.

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

### Through Backstage UI

Follow the below steps in the Backstage UI to register any valid entity/component.

1. Click on the `Create` menu on the left side panel
2. Click on the `REGISTER EXISTING COMPONENT` button
3. Enter the URL of the entity config file
4. Click on the Analyze Button
5. Review the config to be imported
6. Click on the `IMPORT` button to finalize the registration process of an Entity.


## Configure Required Entity

`data/all.yml` file in this repository is referred/configured in Backstage app which loads `catalog-info.yml`, `all-apis.yml`, and `all-groups.yml` file liking which registers Component (`spec: website`), all apis and all groups repectively needed for this App.

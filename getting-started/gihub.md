# Deployment through Github workflows

## Deployment from Codespaces

### Create a PAT token

From your **github profile** go to **settings** and select at the botton **developer settings**

Select **Personal access tokens** and click **Generate new token**

Set the exportation date

Select the following scopes:

- repo
- workflow
- read:public_key

Scroll-down and clikc **Generate token**

Copy the value of the PAT token

Go to the settings of your project and under the **Secrets** menu select **Codespaces**

Select **New repository secret**

Name the secret **GH_TOKEN** and paste the value

If codespace was already started when you added the GH_TOKEN, restart the codespace to get the GH_TOKEN injected into the codespace environment.

### Start a codespace

When codespace has been started login to Azure

```
rover login -t <tenant_name> -s <subscription_id>

``

The following command assumes you have Global Admin in the tenant_name and Owner of the subscription subscription_id

```
org_name=contoso

rover -bootstrap \
  -aad-app-name ${org_name}-platform-landing-zones \
  -gitops-service github \
  -gitops-aci-number-runners 4 \
  -bootstrap-scenario-file '/tf/caf/landingzones/templates/platform/deploy_platform.sh'

```
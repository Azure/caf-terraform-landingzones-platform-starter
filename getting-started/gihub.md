# Deployment through GitHub Actions workflows

## Create a bootstrap token

The bootstrap token is only used during the initial steps to setup your Azure environment. Set an expiration date that is long enough to support the bootstrap activities (recommended between 7 days and 1 month).

From your **Github profile** go to **Settings** and select at the botton **Developer settings**

![gh profile](./github/gh_profile.png)
![gh developer settings](./github/gh_developersettings.png)

Select **Personal access tokens** and click **Generate new token**

![gh new pat](./github/gh_bootstrap_token.png)

Set the Expiration date to desired value.

Select the following scopes:
- repo
- workflow

Scroll-down and click **Generate token**

Copy the value of the PAT token.

Go to the settings of your project and under the **Secrets** menu select **Actions**

Select **New repository secret**

Name the secret **BOOTSTRAP_TOKEN** and paste the value

## Deployment from GitHub Codespaces

### Create a PAT token

From your **Github profile** go to **Settings** and select at the botton **Developer settings**

![gh profile](./github/gh_profile.png)
![gh developer settings](./github/gh_developersettings.png)

Select **Personal access tokens** and click **Generate new token**

![gh new pat](./github/gh_new_pat.png)

Set the Expiration date to desired value.

Select the following scopes:
- repo
- workflow
- read:public_key
- read:org

![gh scopes](./github/gh_scopes.png)

Scroll-down and click **Generate token**

Copy the value of the PAT token.

Go to the settings of your project and under the **Secrets** menu select **Codespaces**

Select **New repository secret**

Name the secret **GH_TOKEN** and paste the value

![gh scopes](./github/gh_pat_repo.png)

If Codespaces was already started when you added the GH_TOKEN, restart the Codespaces to get the GH_TOKEN injected into the Codespaces environment.

### Deploy from Codespaces

Once Codespaces has launched,login to Azure

```
rover login -t <tenant_name> -s <subscription_id>

```

The following command assumes you have Global Admin in the tenant_name and granted Owner privileges on the management subscription ```<guid for management>```

```
org_name=contoso

cd /tf/caf && rover -bootstrap \
  -aad-app-name ${org_name}-platform-landing-zones \
  -env ${org_name} \
  -gitops-pipelines github \
  -gitops-number-runners 5 \
  -bootstrap-script '/tf/caf/landingzones/templates/platform/deploy_platform.sh' \
  -playbook '/tf/caf/landingzones/templates/platform/caf_platform_prod_nonprod.yaml' \
  -subscription-deployment-mode multi_subscriptions \
  -sub-management <guid for management> \
  -sub-connectivity <guid for connectivity> \
  -sub-identity <guid for identity> \
  -sub-security <guid for security>

```
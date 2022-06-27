

```

export AGENT_TOKEN=xxxxx

rover -bootstrap \
  -aad-app-name <name>-platform-landing-zones \
  -gitops-service github \
  -gitops-aci-number-runners 4 \
  -bootstrap-scenario-file '/tf/caf/landingzones/templates/platform/deploy_platform.sh'

```
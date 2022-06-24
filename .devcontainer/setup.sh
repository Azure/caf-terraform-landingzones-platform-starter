if [ "${CODESPACES}" = "true" ]; then
    # Remove the default credential helper
    sudo sed -i -E 's/helper =.*//' /etc/gitconfig

    # Add one that just uses secrets available in the Codespace
    git config --global credential.helper '!f() { sleep 1; echo "username=${GITHUB_USER}"; echo "password=${GH_TOKEN}"; }; f'
fi

sudo chmod 666 /var/run/docker.sock || true
sudo cp -R /tmp/.ssh-localhost/* ~/.ssh
sudo chown -R $(whoami):$(whoami) ~ || true ?>/dev/null
sudo chmod 400 ~/.ssh/*

git config --global core.editor vim
pre-commit install
pre-commit autoupdate

git config --global --add safe.directory /tf/caf
git config --global --add safe.directory /tf/caf/landingzones
git config --global --add safe.directory /tf/caf/landingzones/aztfmod
git config --global --add safe.directory /tf/caf/aztfmod


if [ ! -d /tf/caf/landingzones ]; then
  git clone --branch int-5.6.0 --single-branch https://github.com/Azure/caf-terraform-landingzones.git /tf/caf/landingzones
fi

if [ ! -d /tf/caf/platform/definition ]; then

  if [ ! $(az account show -o json 2>/dev/null ) ]; then
    rover login
  fi

  /tf/caf/landingzones/templates/platform/deploy_platform.sh

fi

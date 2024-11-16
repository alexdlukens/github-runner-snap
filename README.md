# Github Actions Runner


## About
A snap to encapsulate the Github runner process

Currently requires classic confinement, as the github-runner process requires
read access to all directories in the heirarchy where the process runs. This is [a closed
Github issue](https://github.com/actions/runner/issues/1630) on the actions/runner project

## Build

```bash
# Ensure snapcraft is installed
sudo snap install snapcraft --channel latest/stable

# build snap
snapcraft
```

## Install & Run

```bash
# install
sudo snap install ./github-runner_<version>_<arch>.snap --dangerous --classic

# configure
sudo snap set token=<token> url=<url> [runnergroup=<runnergroup>] [runnername=<runnername>]

# start runner (currently interactive process)
sudo github-runner
```

## Uninstall
Uninstalling also cleans up the runner & runner name on Github
```bash
sudo snap remove --purge github-runner
```
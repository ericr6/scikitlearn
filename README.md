# Scikitlearn

This repository contains a demo that showcases how to leverage scikit-learn's powerful machine learning algorithms within the iExec confidential computing platform.

## Installation

https://protocol.docs.iex.ec/for-developers/confidential-computing/create-your-first-tdx-app

## Build image 

`App.py` has been adapted with minor modifications to handle output management for iExec compatibility

`docker build --tag ericro/scikit-learn-classification-default:1.0.0 .`

`docker push ericro/scikit-learn-classification-default:1.0.0`


## Test localy

Validate locally. 

`./local_run.sh`

# Deploy 

Example of `iexec.json`.

``` json
"app": {
    "owner": "<app_owner_address>",
    "name": "scikitlearn-classification:1.0.0",
    "type": "DOCKER",
    "multiaddr": "<docker-hub-user>/scikit-learn-classification:1.0.0",
    "checksum": "0x<digest_sha_container_from_docker_pull>",
    "mrenclave": {
      "framework": "TDX"
    }
  }
```

`iexec app deploy`

## Run 

Use ` iexec app run` to launch the confidential execution on the iExec platform

`iexec app run --tag tee,tdx --workerpool tdx-labs.pools.iexec.eth --watch --force`



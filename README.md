# Scikitlearn

This repository demonstrates how scikit-learn machine learning capabilities 
can be deployed and executed on the iExec decentralized cloud platform.
This demo showcases how to leverage scikit-learn's powerful machine learning algorithms within the iExec confidential computing platform.

## Installation

https://protocol.docs.iex.ec/for-developers/confidential-computing/create-your-first-tdx-app

## Build image 

App.py is slighly modified to make the demo compatible with iExec (small modification for output management)  

`docker build --tag ericro/scikit-learn-classification-default:1.0.0 .`

`docker push ericro/scikit-learn-classification-default:1.0.0`


## Test localy

Validate locally the execution. 

`./local_run.sh`

# Deploy 

`"app": {
    "owner": "app_owner_address",
    "name": "scikitlearn-classification:1.0.0",
    "type": "DOCKER",
    "multiaddr": "<docker-hub-user>/scikit-learn-classification:1.0.0",
    "checksum": "0x<digest_sha_container_from_docker_pull>",
    "mrenclave": {
      "framework": "TDX"
    }
  }
`
Set your wallet address as owner app in iexec.json. 

`iexec app deploy`

## Run 

`iexec app run --tag tee,tdx --workerpool tdx-labs.pools.iexec.eth --watch --force`



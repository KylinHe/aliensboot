# Aliensboot

<!--<img align="right" width="159px" src="https://raw.githubusercontent.com/gin-gonic/logo/master/color.png">-->

[![Build Status](https://travis-ci.org/gin-gonic/gin.svg)](https://github.com/KylinHe/aliensboot)

Aliensboot is a game framework written in Go (Golang). integrated automation tools, designed for the DevOPS

## Contents
- [Installation](#installation)
- [Quick Start](#quick-start)
- [Specific environment variables](#specific-environment-variables)
- [Licensing](#licensing)
   
## Installation

1.  Download:

```sh
$ git clone --recursive git@github.com:KylinHe/aliensboot.git
```
	
2. Set the environment variable

New environment variables `ALIENSBOOT_HOME` Pointing to the root directory

Add `%ALIENSBOOT_HOME%/bin` to `PATH` 


3. Install it

```sh
$ cd %ALIENSBOOT_HOME%/bin & bash build_toolkit.sh
```

- Note: used here is the way go the module download depend on the package, so golang version is best is above 1.11



## Quick start

Assuming that the current project directory is `%Project%` 

### Init Project
   
```sh
$ cd %Project% & aliensboot init (package path) -t [template name] -m [template module name]
```
   
- [-t] directory of related projects (`%ALIENSBOOT_HOME%`) as a template, the default template name aliensboot-server	
- [-m] create all modules by default
	
e.g. 

```sh
$ aliensboot init github.com/myname/myproject -t aliensboot-server -m "passport,gate"
```


   
### Init Module

```sh
$ cd %Project% & aliensboot module add (module name) -t [template name] -m [template module name] -s [source ]
```

### Compile Binary
```sh
$ cd %Project%/src/(package path) & go build
```   
   
### Build docker image

```sh
$ bash %Project%/bin/build_docker.sh
``` 
	   
### Deploy to rancher / k8s

wiki

## Specific environment variables

- ClusterName

Specify name of cluster

- ClusterNode
	
Specify name of current server
	
- ClusterAddress 

Cluster center address for (zookeeper/etcd), use ',' separate for multiple address
	
- ServiceAddress

Service connection information, register information to the center of the cluster, other services access the connection information to access the service

- ServicePort

The service port
	
- DBAddress

Specify address of mongoDB server

- DBName

Specify schema name of mongoDB server
	
- CacheAddress

Specify address of redis server

- CachePassword

Specify password of redis server

- Module

Specify module name 

## Licensing
Leaf is licensed under the Apache License, Version 2.0. See [LICENSE](https://github.com/name5566/leaf/blob/master/LICENSE) for the full license text.
	
	
	
	
	
	
	
# silktouch
A god-damn simple tool for you to build and maintain a Caddy HTTP server.

## Basic Usage
* ```./build.sh```: Build seperate configuration files into a single file. Always outputs to ```./silktouch/artifact```.
* ```./deploy.sh```: Deploy ```./silktouch/artifact``` to Caddy.
_Tip: You can use ```./build.sh && ./deploy.sh``` to quickly build and deploy._

## Structure
### ```fallback/```
Contents in this folder don't need to be changed at all, since it is reserved for wrongly-configured sites. However, you can still change it however you want.

### ```webroot/```
Default place for you to place your static files.

### ```silktouch/```
#### ```conf/```
This directory is for you to place your seperate configuration files.

#### ```build.sh```
Run this script to build configuration files.

#### ```deploy.sh```
Run this script to deploy built artifact.

#### ```buildOrder.txt```
Define the order of building configuration files.

**Warning**: When defining building orders, you must remember to always put files containing the global option block as the first one to be built. The second ones are the snippets, and the last ones are actual site blocks.

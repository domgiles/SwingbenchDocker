# SwingbenchDocker
Initial support for creating a docker image containing the [swingbench](http://www.dominicgiles.com/swingbench.html) load generation utility for the Oracle Database . The image is located [here](https://hub.docker.com/r/domgiles/swingbench/)

Currently on creating the image and running it interactively it places you in the swingbench bin directory. Alternatively you can run any of the swingbench utilites directly i.e.

```shell
docker run --name swingbench --link oracle:server --rm -i -t swingbench oewizard -cs //oracle:1521/ORCLPDB1 -cl -create -scale 0.1 -v -df /opt/oracle/oradata/ORCLCDB/ORCLPDB1/soe.dbf
```
Obviously only the command line variants of the tools work i.e.

```shell
./charbench -u soe -p soe -cs //server/db -c ../configs/SOE_Server_Side_V2.xml -mr 
```
or
```shell
 oewizard -cs //ora18server/soe -cl -create -scale 0.1 -v
```

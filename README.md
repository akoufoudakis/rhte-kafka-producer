# Kafka Producer

This is a producer for a FIS/Camel Kafka producer. 

| Technology                 |   Reference         |
| -------------              |:-------------:|
| Camel Kafka Component      |  <http://camel.apache.org/kafka.html> |
|  FIS                       |   <https://access.redhat.com/documentation/en-us/red_hat_fuse/7.1/html/fuse_on_openshift_guide/>      |
| Strimzi             | <http://strimzi.io/> |


# To run it locally (Not on OCP)
1. Create the required topics on your kafka server
```sh
$ cd rhte-kafka-producer
$ sh create-topics.sh 
```
2. There is also a shell script to delete the topics just in case they are created before
3. Set the application properties to the correct values including the numberofCreditCard you want the producer to generate
4. run the application using the spring boot mvn plugin
```sh
[rhte-kafka-producer]$ mvn spring-boot:run
```
# To run it on OCP
* deploy the application to OpenShift cluster:

1- Download the project and extract the archive on your local filesystem.
2- Log in to your OpenShift cluster:
```sh
$ oc login -u {user} -p {password}
```
#### [TIP] In case you don't have FIS ImageStream ####
* Import base images to project openshift so it is available to any project in the cluster:

```sh
$ oc create -f https://raw.githubusercontent.com/jboss-fuse/application-templates/master/fis-image-streams.json -n openshift
```
* In case some of the image already exists, and you want to upgrade you can use 
```sh
$ oc replace -f https://raw.githubusercontent.com/jboss-fuse/application-templates/master/fis-image-streams.json  -n openshift
```
3- Create a new OpenShift project or using an existing one:
```sh
$ oc login -u {user} -p {password}
$ oc new-project MY_PROJECT_NAME
```
4- Build and deploy the project to the OpenShift cluster:
```sh
$ mvn clean -DskipTests fabric8:deploy -Popenshift
```

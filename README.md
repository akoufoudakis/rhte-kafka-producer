# Kafka Producer

This is a producer for a FIS/Camel Kafka producer. 

| Technology                 |   Reference         |
| -------------              |:-------------:|
| Camel Kafka Component      |  <http://camel.apache.org/kafka.html> |
|  FIS                       |   <https://access.redhat.com/documentation/en-us/red_hat_fuse/7.1/html/fuse_on_openshift_guide/>      |


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

To pull docker image:
    docker pull infracloudio/scvserver:latest
To run docker image:
    docker run -d --name infra infracloudio/csvserver:latest
    docker ps (to check for running containers)
    docker ps -a (to check for all containers irrespective of status)
    docker logs <container id> (to check for errors and reason of container not starting)
Run the script to generate the required file by the container:
    ./gencsv.sh 2 8
    ls (to check if inputFile file is created)
    
Run docker image again with file/volume mount to the container:
    docker run -d -v ./inputFile:/csvserver/inputdata/ infracloudip/csvserver:latest
    docker ps (to validate and to get the container ID)
Access the container:
    docker exec -it <container ID> sh
    ps aux|grep csv (to check the port)
exit from the container:
    type exit then press enter
Stop and delete the container:
    docker stop <container ID>
    docker rm <container ID>
Make container listen to port 9393 with env variable set to Orange:
    docker run -dp 9393:9300 --name infraColor -e CSVSERVER_BORDER='Orange' -v ./inputFile:/csvserver/inputdata/ infracloudio/csvserver:latest

# Docker_Shiny

This documents my open source workflow to run a shiny server as a docker application to test application and eventual production deployments. 

This workflow supports R and Shiny apps with libraries as specified in the Dockerfile. As additional libraries are needed this Dockerfiles can be expanded.  The initial documented Dockerfile was created to support leaflet.


## Build Dockerfile for Shiny apps that will sourced on local volume

```
cd Shiny_MountApps
```

```
docker build -t shiny-app-dock .
```



## Run container and mount local directories where you can put in shiny apps for testing.

```
docker run -d -p 3838:3838 -p 8787:8787  -e PASSWORD=test123  -v ~/srv/shinyapps/:/srv/shiny-server/  -v ~/srv/shinylog/:/var/log/shiny-server/  shiny-app-dock
 ```
 
 Then you can for example access:
 Then: http://localhost:3838/Text_Predict_Shiny/

 which is in my ~/srv/shinyapps folder


If you go to 

http://localhost:8787/

you login with 

user: rstudio
pwd: as specified in docker run (i.e "test123")
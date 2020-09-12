FROM rocker/geospatial:3.6.0

RUN install2.r --error \
    --deps TRUE \
    #tidyverse \
    leaflet \
    tidytext \
    plotly
 


RUN export ADD=shiny && /bin/bash /etc/cont-init.d/add

FROM rocker/geospatial

RUN install2.r --error \
    --deps TRUE \
    #tidyverse \
    leaflet \
    tidytext \
    plotly
 


RUN export ADD=shiny && bash /etc/cont-init.d/add

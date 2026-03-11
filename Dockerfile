FROM rocker/r-base:latest

WORKDIR /app

RUN install.packages("ggplot2", repos="https://cloud.r-project.org")

COPY hello.R .

CMD ["Rscript", "hello.R"]

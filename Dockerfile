FROM rocker/r-ver:4.0.5
RUN apt-get update && apt-get install -y  git-core make pandoc pandoc-citeproc libcurl4-openssl-dev libssl-dev libxml2-dev libcurl4-openssl-dev zlib1g-dev libfontconfig1-dev libharfbuzz-dev libfribidi-dev libfreetype6-dev libpng-dev libtiff5-dev libjpeg-dev
RUN echo "options(repos = c(CRAN = 'https://cran.rstudio.com/'), download.file.method = 'libcurl')" >> /usr/local/lib/R/etc/Rprofile.site
RUN R -e 'install.packages("remotes")'
RUN Rscript -e 'remotes::install_version(upgrade="never",package = "systemfonts", version = "1.0.4")'
RUN Rscript -e 'remotes::install_version(upgrade="never",package = "textshaping", version = "0.3.6")'
RUN Rscript -e 'remotes::install_version(upgrade="never",package = "tidyverse", version = "2.0.0")'
RUN Rscript -e 'remotes::install_github("rstudio/parsons",upgrade="never")'
RUN Rscript -e 'remotes::install_version(upgrade="never",package = "learnr", version = "0.11.4")'
RUN Rscript -e 'remotes::install_version(upgrade="never",package = "mosaicCore", version = "0.8.0")'
RUN Rscript -e 'remotes::install_version(upgrade="never",package = "ggformula", version = "0.9.1")'
RUN Rscript -e 'remotes::install_version(upgrade="never",package = "readODS", version = "1.6.7")'
RUN Rscript -e 'remotes::install_version(upgrade="never",package = "babynames", version = "1.0.0")'
RUN Rscript -e 'remotes::install_version(upgrade="never",package = "skimr", version = "1.0.7")'
RUN Rscript -e 'remotes::install_version(upgrade="never",package = "rio", version = "0.5.16")'
RUN Rscript -e 'remotes::install_version(upgrade="never",package = "shinyAce", version = "0.4.2")'
RUN Rscript -e 'remotes::install_version(upgrade="never",package = "roxygen2", version = "6.1.1")'
RUN Rscript -e 'remotes::install_version(upgrade="never",package = "DescTools", version = "0.99.40")'
EXPOSE 3838

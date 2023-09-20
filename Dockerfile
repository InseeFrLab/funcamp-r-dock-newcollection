FROM rocker/r-ver:3.6.2
RUN apt-get update && apt-get install -y  git-core make pandoc pandoc-citeproc libcurl4-openssl-dev libssl-dev libxml2-dev libcurl4-openssl-dev zlib1g-dev
RUN echo "options(repos = c(CRAN = 'https://cran.rstudio.com/'), download.file.method = 'libcurl')" >> /usr/local/lib/R/etc/Rprofile.site
RUN R -e 'install.packages("remotes")'
RUN Rscript -e 'remotes::install_version(upgrade="never",package = "systemfonts", version = "0.1.1")'
EXPOSE 3838

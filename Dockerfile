FROM debian:stable-20240423-slim

LABEL maintainer="soerenschneider" \
      repo="https://github.com/soerenschneider/docker-pdflatex"

RUN groupadd -r -g 1000 latex && useradd -r -u 1000 -g latex latex

RUN apt-get update && \
    apt-get install -y --no-install-recommends texlive-latex-recommended texlive-latex-extra texlive-fonts-recommended texlive-fonts-extra texlive-lang-all && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /tmp

ENTRYPOINT ["pdflatex"]

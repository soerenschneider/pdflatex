# pdflatex

```bash
docker run -it --rm --volume "$(pwd):/data" --user $(id -u):$(id -g) ghcr.io/soerenschneider/pdflatex --output-directory=/data /data/latex.tex
```

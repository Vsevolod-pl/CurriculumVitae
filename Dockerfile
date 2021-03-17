FROM fedora:34

RUN dnf install texlive-collection-latexrecommended texlive-collection-fontsrecommended texlive-collection-pictures texlive-collection-science texlive-collection-langcyrillic texlive-collection-latexextra -y

COPY ./tex ./tex

WORKDIR ./tex

ENTRYPOINT pdflatex main.tex -interaction=nonstopmode

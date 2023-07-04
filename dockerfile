FROM gcc
RUN git clone "https://github.com/standemdem/AJC-calcul"
WORKDIR /app
RUN make deploy
CMD ["./ajc-calcul"]
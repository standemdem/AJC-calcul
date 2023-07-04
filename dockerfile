FROM gcc:12.1.0
RUN git clone https://github.com/standemdem/AJC-calcul
WORKDIR /app
RUN make deploy
CMD ["./exomake"]
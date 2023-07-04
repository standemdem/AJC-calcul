FROM gcc:12.1.0
RUN git clone https://github.com/standemdem/AJC-calcul
WORKDIR /AJC-calcul
RUN make deploy
CMD ["./deploy/exomake","1", "2", "2", "2", "5"]
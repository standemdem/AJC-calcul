FROM gcc
COPY . /app
WORKDIR /app
RUN gcc -o ajc-calcul main.c
CMD ["./ajc-calcul"]
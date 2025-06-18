# Alpine GCC with OpenSSL

Stupidly simple Dockerfile to build Alpine with GCC and OpenSSL.

**Usage:**

Build prior or pull the image from Docker Hub:

```bash
docker build -t c92s/alpine-gcc-openssl .
docker pull c92s/alpine-gcc-openssl:latest
```

Build your C program with OpenSSL statically linked:

```bash
docker run --rm -v "$PWD":/usr/src/ -w /usr/src/ c92s/alpine-gcc-openssl:latest gcc -static -o <name> <src> -lcrypto
```

Build your C program with OpenSSL dynamically linked:

```bash
docker run --rm -v "$PWD":/usr/src/ -w /usr/src/ c92s/alpine-gcc-openssl:latest gcc -static -o <name> <src> -lcrypto
```
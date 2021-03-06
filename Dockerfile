FROM cirrusci/flutter:stable as build
COPY hello_flutter/ /hello_flutter/
WORKDIR "/hello_flutter"
RUN flutter build appbundle

FROM python:latest as upload
COPY --from=build /hello_flutter/build/app/outputs/bundle/release/app-release.aab /output/
COPY hello.py /output/
RUN python /output/hello.py /output/app-release.aab
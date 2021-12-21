FROM cirrusci/flutter:stable

COPY hello_flutter/ /hello_flutter/

WORKDIR "/hello_flutter"

RUN flutter build apk

ENTRYPOINT ["/entrypoint.sh"]
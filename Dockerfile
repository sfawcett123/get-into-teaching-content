FROM dfedigital/get-into-teaching-web:sha-e9bd0b0

COPY content app/views/content
COPY assets public/assets

ARG CONTENT_SHA
RUN echo "${CONTENT_SHA}" > /etc/get-into-teaching-content-sha
RUN date -u -Iseconds > /etc/get-into-teaching-content-build-time

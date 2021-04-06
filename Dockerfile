FROM dfedigital/get-into-teaching-web:sha-1dfa598

COPY config/*.yml config
COPY content app/views/content
COPY assets public/assets

RUN bundle exec rake fingerprinter:run

ARG CONTENT_SHA
RUN echo "${CONTENT_SHA}" > /etc/get-into-teaching-content-sha
RUN date -u -Iseconds > /etc/get-into-teaching-content-build-time

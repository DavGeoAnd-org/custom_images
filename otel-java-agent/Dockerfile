ARG java_version=latest

FROM eclipse-temurin:${java_version}-jre-alpine

COPY opentelemetry-javaagent.jar /otel-agent/java-otel.jar

ENV JAVA_TOOL_OPTIONS='-javaagent:/otel-agent/java-otel.jar'

# otel general

# otel metrics
ENV OTEL_METRICS_EXPORTER=none

# otel logs
ENV OTEL_LOGS_EXPORTER=none

# otel traces
ENV OTEL_TRACES_EXPORTER=none
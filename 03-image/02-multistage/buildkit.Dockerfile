FROM alpine:3.19 AS base
RUN echo "base"

FROM base AS stage1
RUN echo "stage1"

FROM base AS stage2
RUN echo "stage2"

FROM base AS stage3
RUN echo "stage3"

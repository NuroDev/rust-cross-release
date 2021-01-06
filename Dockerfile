# ==============================================================================

FROM --platform=$TARGETPLATFORM ekidd/rust-musl-builder:latest as builder

ADD --chown=rust:rust . ./

RUN cargo build --release

# ==============================================================================

FROM alpine:latest

LABEL com.github.actions.color="white" \
      com.github.actions.description="Simple automated cross-platform & cross-architecture CD project" \
      com.github.actions.icon="feather" \
      maintainer="nurodev" \
      com.github.actions.name="rust-cross-release" \
      org.opencontainers.image.authors="nurodev" \
      org.opencontainers.image.description="Simple automated cross-platform & cross-architecture CD project" \
      org.opencontainers.image.documentation="https://github.com/nurodev/rust-cross-release" \
      org.opencontainers.image.source="https://github.com/nurodev/rust-cross-release" \
      org.opencontainers.image.url="https://github.com/nurodev/rust-cross-release" \
      org.opencontainers.image.vendor="rust-cross-release"

RUN apk --no-cache add ca-certificates

COPY --from=builder /home/rust/src/target/x86_64-unknown-linux-musl/release/rust-cross-release /usr/local/bin/rust-cross-release

CMD [ "rust-cross-release" ]

# ==============================================================================

################### Use Paracooba
FROM paracooba_base AS builder
USER root

################### Extract Paracooba in run stage
FROM satcomp-base:worker AS paracooba_liaison
WORKDIR /
# Copy mallob
COPY --from=builder /paracooba/build/paracs /competition/paracs
COPY --chown=ecs-user /worker /competition

RUN chmod +x /competition/worker

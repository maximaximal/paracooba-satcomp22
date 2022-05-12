################### Use Paracooba
FROM paracooba-base AS builder
USER root

################### Extract Paracooba in run stage
FROM satcomp-base:leader AS paracooba_liaison
WORKDIR /
# Copy paracooba and solver scripts
COPY --from=builder /paracooba/build/paracs paracs
COPY --chown=ecs-user /run_paracooba.sh /competition
COPY --chown=ecs-user /solver /competition
USER ecs-user
RUN chmod +x /competition/run_mallob.sh
RUN chmod +x /competition/solver
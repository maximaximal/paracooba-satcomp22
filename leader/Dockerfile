################### Use Paracooba
FROM paracooba_base AS builder
USER root

################### Extract Paracooba in run stage
FROM satcomp-base:leader AS paracooba_liaison
WORKDIR /
# Copy paracooba and solver scripts
COPY --from=builder /paracooba/build/paracs /competition/paracs
COPY --chown=ecs-user /run_paracooba.sh /competition
COPY --chown=ecs-user /solver /competition
USER ecs-user
RUN chmod +x /competition/run_paracooba.sh
RUN chmod +x /competition/solver

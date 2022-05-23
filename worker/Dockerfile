################### Use Paracooba
FROM paracooba_base AS builder
USER root

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y libboost-program-options1.71.0 libboost-thread1.71.0 libboost-log1.71.0 libboost-filesystem1.71.0 libboost-date-time1.71.0

################### Extract Paracooba in run stage
FROM satcomp-base:worker AS paracooba_liaison
WORKDIR /
# Copy mallob
COPY --from=builder /paracooba/build/paracs /competition/paracs
COPY --chown=ecs-user /worker /competition/worker
#COPY --chown=ecs-user /cleanup /competition/cleanup

RUN chmod +x /competition/worker
RUN chmod +x /competition/cleanup

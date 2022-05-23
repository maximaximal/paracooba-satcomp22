################### Use Paracooba
FROM paracooba_base AS builder
USER root

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y libboost-program-options1.71.0 libboost-thread1.71.0 libboost-log1.71.0 libboost-filesystem1.71.0 libboost-date-time1.71.0

################### Extract Paracooba in run stage
FROM satcomp-base:leader AS paracooba_liaison
WORKDIR /
# Copy paracooba and solver scripts
COPY --from=builder /paracooba/build/paracs /competition/paracs
COPY --from=builder /lib/x86_64-linux-gnu/libboost_log.so.1.71.0 /competition/libboost_log.so.1.71.0
COPY --from=builder /lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0 /competition/libboost_filesystem.so.1.71.0
COPY --from=builder /lib/x86_64-linux-gnu/libboost_thread.so.1.71.0 /competition/libboost_thread.so.1.71.0
COPY --from=builder /lib/x86_64-linux-gnu/libboost_program_options.so.1.71.0 /competition/libboost_program_options.so.1.71.0
COPY --chown=ecs-user /run_paracooba.sh /competition
COPY --chown=ecs-user /solver /competition
USER ecs-user
RUN chmod +x /competition/run_paracooba.sh
RUN chmod +x /competition/solver

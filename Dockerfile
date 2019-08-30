FROM jpetazzo/nsenter as nsenter
FROM gliderlabs/alpine:latest
COPY --from=nsenter /nsenter /usr/local/bin/nsenter
COPY load_iptables_modules.sh /load_iptables_modules.sh
RUN apk-install bash iptables ip6tables
CMD ["bash", "load_iptables_modules.sh"]


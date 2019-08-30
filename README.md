[![Docker Repository on Quay](https://quay.io/repository/mauilion/ip6tables/status "Docker Repository on Quay")](https://quay.io/repository/mauilion/ip6tables)
## A way to load modules for ip6tables as a daemonset.

In this manifest we are mounting in the underlying /lib/modules directory

and running as privileged. 


This script will run every 3600 seconds by default adjust the env var `SLEEP` in the manifest to fix that.


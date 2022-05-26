#!/bin/bash
ns=tunnel

for i in {1..10}
do
    # echo router-"${i}"
    # mkdir config/router-"${i}"
    kubectl exec -n ${ns} router-"${i}" -- hostname
    # kubectl exec -n ${ns} router-"${i}" -- ls /etc/frr | grep frr.conf
    # kubectl exec -n ${ns} router-"${i}" -- vtysh -c "write integrated"
    kubectl cp -n ${ns} router-"${i}":etc/frr/frr.conf config/router-"${i}"/frr.conf
    kubectl cp -n ${ns} router-"${i}":etc/frr/daemons config/router-"${i}"/daemons
done
#!/bin/bash

for i in {1..10};do;kubectl create configmap -n tunnel --from-file=router-"${i}" router-"${i}";done;

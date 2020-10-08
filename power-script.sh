#!/bin/bash
pod=$(kubectl get pods -n powerfulseal | sed -n 2p | awk '{print $1}')
kubectl logs $pod -n powerfulseal
eval $@
if [ $? -eq 0 ];
then
echo "executed successfully"
else
echo "terminated unsuccessfully"
fi

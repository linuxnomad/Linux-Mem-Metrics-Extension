#!/bin/bash
#--------------------------------------------------------------------------------------------------#
# REQUIREMENTS FOR RUNNING THIS SCRIPT
#
# 1. A Linux system supported by the AppDynamics Machine Agent
# 2. The AppDynamics Machine Agent
# 3. The "free" command
# 4. The AppDynamics Machine Agent must configured to communicate with a controller.
#
# awk command format originally found at:
# https://unix.stackexchange.com/questions/68526/get-separate-used-memory-info-from-free-m-command
#
#--------------------------------------------------------------------------------------------------#
# Echo the metric hierarchy notifying the Controller where the metric should appear in the 
# metric tree while adding in the variables for the parsed JSON file using jq filtering
#--------------------------------------------------------------------------------------------------#
#
lixmemtotal=`awk '/^Mem/ {print $2}' <(free -m)`
lixmemused=`awk '/^Mem/ {print $3}' <(free -m)`
lixmemfree=`awk '/^Mem/ {print $4}' <(free -m)`
lixmemshared=`awk '/^Mem/ {print $5}' <(free -m)`
lixmembc=`awk '/^Mem/ {print $6}' <(free -m)`
lixmemavail=`awk '/^Mem/ {print $7}' <(free -m)`
#
# TableInstanceId_Avgerror
echo "name=Custom Metrics|Linux-Memory|Total (MB), value="$lixmemtotal
# TableInstanceId_Comerror
echo "name=Custom Metrics|Linux-Memory|Used (Mb), value="$lixmemused
# TableInstanceId_Syserror
echo "name=Custom Metrics|Linux-Memory|Free (MB), value="$lixmemfree
# TableInstanceId_Readcu
echo "name=Custom Metrics|Linux-Memory|Shared (MB), value="$lixmemshared
# TableInstanceId_Writecu
echo "name=Custom Metrics|Linux-Memory|buff/cache (MB), value="$lixmembc
# TableInstanceId_ReadLatency
echo "name=Custom Metrics|Linux-Memory|Available (MB), value="$lixmemavail
#
#--------------------------------------------------------------------------------------------------#
# END
#--------------------------------------------------------------------------------------------------#
#
exit 0

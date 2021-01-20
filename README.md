# Linux Memory Metrics Extension for AppDynamics Machine Agent

Per the below documentation, system or application administrators may want to monitor the "available" memory instead of total "used" or "free" memory. This extension uses the ``` free -m ``` command to send the available memory to the AppDynamics controller to be monitored as a metric.

Example:
```
# free -m
              total        used        free      shared  buff/cache   available
Mem:            917         354          88           1         473         412
Swap:             0           0           0
```

https://www.redhat.com/sysadmin/dissecting-free-command

https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/5/html/tuning_and_optimizing_red_hat_enterprise_linux_for_oracle_9i_and_10g_databases/chap-oracle_9i_and_10g_tuning_guide-memory_usage_and_page_cache

## Installation
❶ Extract .zip file.

❷ Copy the  directory to <AppD-Machine-Agent-Dir>/monitors/ directory

❸ Restart the Machine Agent. (Depending on your install, distribution and configuration method this may vary. See documentation.)
    https://docs.appdynamics.com/display/PRO45/Start+and+Stop+the+Standalone+Machine+Agent

## Requirements:
❶ A supported version of Linux for use with the AppDynamics Machine Agent.

❷ The Linux "free" command.

❸ You can confirm this command exists or review the stats to be reported by typing in a terminal:

```
    free -m
```  
  
❹ Most systems have the ```free``` by default, however, if you are missing this command, the below should install the needed binaries.

RHEL/CentOS/Fedora
``` 
    yum install procps
 ```
Debian/Ubuntu/LinuxMint
```
    apt-get install procps
```

## Notes:
• TBD

#--------------------------------------------------------------------------------------------------#
# 
# REQUIREMENTS FOR RUNNING THIS SCRIPT
#
# 1. A Linux system supported by the AppDynamics Machine Agent
# 2. The AppDynamics Machine Agent
# 3. The Linux "free" command
# 4. The AppDynamics Machine Agent must configured to communicate with a controller.
# 
#
#
#--------------------------------------------------------------------------------------------------#
# INSTRUCTIONS FOR USE
#
# 1. Copy the Linux-Mem-Metrics-Extension.zip files to the host with a configured AppDynamics Machine Agent.
# 2. Unzip the Linux-Mem-Metrics-Extension.zip file to the <AppDynamics Machine Agent Directory>/monitors/
# 3. Verify the same user for the Machine Agent directory also owns the Linux-Mem-Metrics-Extension and all sub-files.
# 4. Verify that both files have UGO with "x". (i.e. chmod +x <AppDynamics Machine Agent Directory>/monitors/Linux-Mem-Metrics-Extension/*.*)
# 5. Restart the AppDynamics Machine Agent. (Check documentation for the correct command required with your Linux distribution.)
#--------------------------------------------------------------------------------------------------#

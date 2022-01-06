@echo Downloading dependencies

@echo Downloading QGroundControl
@bitsadmin.exe /transfer "QGroundControl" https://s3-us-west-2.amazonaws.com/qgroundcontrol/latest/QGroundControl-installer.exe C:\QGroundControl-installer.exe
@echo Setup QGroundControl
@C:\QGroundControl-installer.exe

@echo Downloading jMAVSim
@bitsadmin.exe /transfer "jMAVSim" https://s3-us-west-2.amazonaws.com/px4-tools/PX4+Windows+Cygwin+Toolchain/PX4+Windows+Cygwin+Toolchain+0.9.msi C:\PX4+Windows+Cygwin+Toolchain.msi
@echo Setup jMAVSim
@C:\PX4+Windows+Cygwin+Toolchain.msi

@echo Downloading Git
@bitsadmin.exe /transfer "jMAVSim" https://github.com/git-for-windows/git/releases/download/v2.34.1.windows.1/Git-2.34.1-64-bit.exe C:\Git-2.34.1-64-bit.exe
@echo Setup Git
@C:\Git-2.34.1-64-bit.exe

@echo Navigating to Cygwin Bash Console
@echo Type "git clone --recursive -j8 https://github.com/PX4/PX4-Autopilot.git" once Cygwin loads
@cd C:\PX4\
@run-console.bat
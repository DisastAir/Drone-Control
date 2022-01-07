@echo Downloading dependencies

@echo Downloading QGroundControl
@bitsadmin.exe /transfer "QGroundControl" https://s3-us-west-2.amazonaws.com/qgroundcontrol/latest/QGroundControl-installer.exe C:\QGroundControl-installer.exe
@echo Setup QGroundControl
@C:\QGroundControl-installer.exe

@echo Downloading jMAVSim
@bitsadmin.exe /transfer "jMAVSim" https://s3-us-west-2.amazonaws.com/px4-tools/PX4+Windows+Cygwin+Toolchain/PX4+Windows+Cygwin+Toolchain+0.9.msi C:\PX4+Windows+Cygwin+Toolchain.msi
@echo Setup jMAVSim
@C:\PX4+Windows+Cygwin+Toolchain.msi

@echo Downloading GStreamer
@bitsadmin.exe /transfer "GStreamer 1 (Choose complete installation) " https://gstreamer.freedesktop.org/data/pkg/windows/1.18.1/msvc/gstreamer-1.0-devel-msvc-x86_64-1.18.1.msi C:\gstreamer-1.0-devel-msvc-x86_64-1.18.1.msi
@bitsadmin.exe /transfer "GStreamer 2 (Choose complete installation) " https://gstreamer.freedesktop.org/data/pkg/windows/1.18.1/msvc/gstreamer-1.0-msvc-x86_64-1.18.1.msi C:\gstreamer-1.0-msvc-x86_64-1.18.1.msi
@echo Setup GStreamer (Make sure to choose complete installation)
@C:\gstreamer-1.0-devel-msvc-x86_64-1.18.1.msi
@C:\gstreamer-1.0-msvc-x86_64-1.18.1.msi

@echo Downloading Git
@bitsadmin.exe /transfer "jMAVSim" https://github.com/git-for-windows/git/releases/download/v2.34.1.windows.1/Git-2.34.1-64-bit.exe C:\Git-2.34.1-64-bit.exe
@echo Setup Git
@C:\Git-2.34.1-64-bit.exe

@echo Navigating to Cygwin Bash Console
@echo Type "git clone --recursive -j8 https://github.com/PX4/PX4-Autopilot.git" once Cygwin loads
@cd C:\PX4\
@run-console.bat

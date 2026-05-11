{ config, pkgs, lib, ... }:

{
	boot.kernelParams = [ 
		"nvidia-drm.modeset=1"
		"nvidia-drm.fbdev=1"
		"nvidia.NVreg_PreserveVideoMemoryAllocations=1"
		"nvidia.NVreg_TemporaryFilePath=/var/tmp"
		"mem_sleep_default=s2idle"
	];

	services.xserver.videoDrivers = [ 
		"modesetting" 
		"nvidia" 
	];

	hardware.graphics = {
		enable = true;
		enable32Bit = true;
	};

	# nvidia PRIME offload
	hardware.nvidia = {
		modesetting.enable = true;
		powerManagement.enable = true;
		powerManagement.finegrained = false;
		open = true;
		nvidiaSettings = true;
		package = config.boot.kernelPackages.nvidiaPackages.stable;
		
		prime = {
			offload = {
				enable = true;
				enableOffloadCmd = true;
			};
			intelBusId = "PCI:0:2:0";
			nvidiaBusId = "PCI:1:0:0";
		};
	};
}

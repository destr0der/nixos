{ ... }:

{
    boot = {
        kernelModules = [ "kvm-amd" ];
        kernelParams = ["amdgpu.ppfeaturemask=0xffffffff" ];
    };
    hardware.cpu.amd.updateMicrocode = true;
}
import psutil
import wmi
#import gpuinfo.amd
import sys
def get_cpu_temp():
    cpu_temp = psutil.sensors_temperatures().get('coretemp')
    if cpu_temp:
        return cpu_temp[0].current
    return None

def get_gpu_temp():
    gpu_temp = None
    if sys.platform.startswith('win'):
        import wmi
        w = wmi.WMI(namespace="root\\WMI")
        gpu_temp = w.MSAcpi_ThermalZoneTemperature()[0].CurrentTemperature / 10.0 - 273.15
    elif sys.platform.startswith('linux'):
        from gpuinfo.nvidia import NVML
        nvml = NVML()
        devices = nvml.getDevices()
        if devices:
            gpu_temp = nvml.getTemperature(devices[0].handle)
    #elif sys.platform.startswith('darwin'):
    #    from gpuinfo.amd import AMDGPUs
    #    gpus = AMDGPUs()
    #    if gpus:
    #        gpu_temp = gpus[0].get_temperature()
    #return gpu_temp

cpu_temp = get_cpu_temp()
gpu_temp = get_gpu_temp()

if cpu_temp is not None:
    print("CPU temperature: {}°C".format(cpu_temp))
else:
    print("Unable to get CPU temperature")

if gpu_temp is not None:
    print("GPU temperature: {}°C".format(gpu_temp))
else:
    print("Unable to get GPU temperature")
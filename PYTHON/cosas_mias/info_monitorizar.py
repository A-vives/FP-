import psutil
import platform
uname = platform.uname()
print(f"System: {uname.system}")  #Windows or Linux
print(f"Node Name: {uname.node}") # System name
print(f"Release: {uname.release}") # OS release version like  10(Windows) or 5.4.0-72-generic(linux)
print(f"Version: {uname.version}")
print(f"Machine: {uname.machine}")  # machine can be AMD64 or x86-64
print(f"Processor: {uname.processor}") #  Intel64 Family 6 or x86_64
print("Physical cores:", psutil.cpu_count(logical=False))
print("Total cores:", psutil.cpu_count(logical=True))
# CPU frequencies
cpufreq = psutil.cpu_freq()
print(f"Max Frequency: {cpufreq.max:.2f}Mhz")
print(f"Min Frequency: {cpufreq.min:.2f}Mhz")
print(f"Current Frequency: {cpufreq.current:.2f}Mhz")
#print(f"{psutil.sensors_temperatures()}")
#print(f"{psutil.sensors_fans()}")
print(f"{psutil.sensors_battery()}")

cputemp = psutil.cpu_temp()
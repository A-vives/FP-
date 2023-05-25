import speedtest
import time

speedtester = speedtest.Speedtest()

# Mide la velocidad de bajada
download_speed = speedtester.download() / 1024 / 1024

# Mide la velocidad de subida
upload_speed = speedtester.upload() / 1024 / 1024
for i in range(60, 0, -1):
    time.sleep(1)
print(f"{i} segundos restantes")
print(f"Velocidad de bajada: {download_speed:.2f} Mbps")
print(f"Velocidad de subida: {upload_speed:.2f} Mbps")
    

print("¡Tiempo terminado!")
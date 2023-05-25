import GPUtil
import time
Gpus = GPUtil.getGPUs()
while True:
    for gpus in Gpus:
        print(gpus.name) 
        print(str(gpus.temperature) + " C")
        time.sleep(0.3)
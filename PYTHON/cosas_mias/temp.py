import GPUtil
Gpus = GPUtil.getGPUs()
gpulist=[]
for gpus in Gpus:
        print(gpus.name) 
        print('gpu.id:', gpus.id)
        
        print ( 'total GPU:', gpus.memoryTotal)
        print(f"Memory free {gpus.memoryFree}MB")
        print ( 'GPU usage:', gpus.memoryUsed)
        print ( 'gpu usse proportion:', gpus.memoryUtil * 100)
        print(str(gpus.temperature) + " C")
               
        gpulist.append([ gpus.id, gpus.memoryTotal, gpus.memoryUsed,gpus.memoryUtil * 100])

THRESHOLD_GPU=10
for gpu in Gpus:
        print(gpu.name,' gpu.id:', gpu.id)
        if gpu.memoryTotal/gpu.memoryUsed*100>THRESHOLD_GPU:print ( f"gpu memory usgae currently is: {gpu.memoryUtil * 100}% which exceeds the threshold of {THRESHOLD_GPU}%" )
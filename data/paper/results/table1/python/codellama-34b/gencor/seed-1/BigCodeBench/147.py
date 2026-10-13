import time

from datetime import timedelta
import socket
from ipaddress import IPv4Network
from threading import Thread
def task_func(ip_range, port):
    # Converts the IP range into a collection of IP addresses
    addresses = list(IPv4Network(ip_range))
    threads = list()
    results = dict()

    # Creates a thread for each IP address
    for address in addresses:
        thread = Thread(target=__doc__, args=(address, port, results))
        threads.append(thread)

    # Starts each thread
    start_time = time.time()
    for thread in threads:
        thread.start()

    # Waits for all threads to finish
    for thread in threads:
        thread.join()

    # Prints the status for each IP address
    for address, status in results.items():
        print(f"[{address} / {port}] => {status}")

    end_time = time.time()
    print(f"Time taken: {timedelta(seconds = end_time - start_time)}")

def ___do___(address, port, results):
    sckt = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    sckt.settimeout(1)
    try:
        sckt.connect((str(address), port))
    except socket.error:
        results[address] = False
    else:
        sckt.close()
        results[address] = True

if __name__ == "__main__":
    task_func("192.168.1.0/24", 80)

task_func = task_func("192.168.1.0/24", 80)

results: {
   "192.168.1.1": True,
   "192.168.1.2": False,
   "192.168.1.3": True,
   "192.168.1.4": False,
   "192.168.1.5": True,
   "192.168.1.6": False,
   "192.168.1.7": True,
   "192.168.1.8": False,
   "192.168.1.9": True,
   "192.168.1.10": False,
   "192.168.1.11": True,
   "192.168.1.12": False,
   "192.168.1.13": True,
   "192.168.1.14": False,
   "192.168.1.15": True,
   "192.168.1.16": False,
   "192.168.1.17": True,
   "192.168.1.18": False,
   "192.168.1.19": True,
   "192.168.1.20": False,
   "192.168.1.21": True,
   "192.168.1.22": False,
   "192.168.1.23": True,
   "192.168.1.24": False,
   "192.168.1.25": True,
   "192.168.1.26": False,
   "192.168.1.27": True,
   "192.168.1.28": False,
   "192.168.1.29": True,
   "192.168.1.30": False,
   "192.168.1.31": True
}


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Scans a specified IP address range and checks if a specified port is open on each IP. The function returns a dictionary with IP addresses as keys and a boolean indicating the port's status (True if open, False otherwise).
#     The function should output with:
#         dict: A dictionary mapping IP addresses to their port status (True if open).
#     You should write self-contained code starting with:
#     ```
#     import socket
#     from ipaddress import IPv4Network
#     from threading import Thread
#     def task_func(ip_range, port):
#     ```

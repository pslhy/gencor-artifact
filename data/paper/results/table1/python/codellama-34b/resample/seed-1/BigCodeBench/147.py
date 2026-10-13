# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
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
        thread = Thread(target=scan_port, args=(address, port,))
        thread.start()
        threads.append(thread)

    # Waits for all threads to terminate
    for thread in threads:
        thread.join()

    # Merges the results from all threads
    for address, result in results.items():
        if result:
            results[address] = True
        else:
            results[address] = False

    return results

# Defin

# === Turn 2 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:13:32: undefined name 'scan_port'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import socket
from ipaddress import IPv4Network
from threading import Thread
def task_func(ip_range, port):
    scan_port(port)
    addresses = list(IPv4Network(ip_range))
    threads = list()
    results = dict()
    for address in addresses:
        thread = Thread(target=scan_port, args=(address, port,))
        thread.start()
        threads.append(thread)
    for thread in threads:
        thread.join()
    for address, result in results.items():
        if result:
            results[address] = True
        else:
            results[address] = False
    return results


# === Turn 3 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:6:5: undefined name 'scan_port'
#     - <python>:11:32: undefined name 'scan_port'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import socket
from ipaddress import IPv4Network
from threading import Thread
def task_func(ip_range, port):
    addresses = list(IPv4Network(ip_range))
    threads = list()
    results = dict()
    for address in addresses:
        thread = Thread(target=socket.scan_port(port), args=(address, port,))
        thread.start()
        threads.append(thread)
    for thread in threads:
        thread.join()
    for address, result in results.items():
        if result:
            results[address] = True
        else:
            results[address] = False
    return results

# === Turn 4 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:10:39: undefined module member 'socket.scan_port'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import socket
from ipaddress import IPv4Network
from threading import Thread
def task_func(ip_range, port):
    addresses = list(IPv4Network(ip_range))
    threads = list()
    results = dict()
    for address in addresses:
        thread = Thread(target=socket.socket(socket.AF_INET, socket.SOCK_STREAM).connect(address, port), args=(address, port,))
        thread.start()
        threads.append(thread)
    for thread in threads:
        thread.join()
    for address, result in results.items():
        if result:
            results[address] = True
        else:
            results[address] = False
    return results


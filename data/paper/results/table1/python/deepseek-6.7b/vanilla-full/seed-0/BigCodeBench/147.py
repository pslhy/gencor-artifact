from datetime import timedelta
import socket
from ipaddress import IPv4Network
from threading import Thread
def task_func(ip_range, port):
    # Timeout period before checking ports
    socket.setdefaulttimeout(1)

    # Create a dictionary to hold the IP addresses
    ip_dict = {}

    # Iterate over each IP address in the specified IP range
    for ip in IPv4Network(ip_range):
        # Create a socket object
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        
        # Start a new thread to check the status of the port
        result = [ip]
        status = [False]
        t = Thread(target=check_port, args=(str(ip), port, result, status))
        t.start()
        t.join()
        
        # Update the dictionary with the result
        ip_dict[result[0]] = status[0]

    return ip_dict

def check_port(ip, port, result, status):
    try:
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        s.connect((ip, port))
    except:
        status[0] = False
    else:
        status[0] = True
    finally:
        s.close()


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

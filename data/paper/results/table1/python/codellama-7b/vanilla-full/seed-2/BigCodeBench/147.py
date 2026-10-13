from datetime import timedelta
import socket
from ipaddress import IPv4Network
from threading import Thread
def task_func(ip_range, port):
    # Create a socket object
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    # Set a timeout of 5 seconds for the connection attempt
    sock.settimeout(5)
    # Initialize the dictionary to return
    open_ips = {}
    for ip in IPv4Network(ip_range):
        # Convert the IP address to a string
        ip_str = str(ip)
        # Check if the port is open on the current IP address
        try:
            # Connect to the IP address and port
            sock.connect((ip_str, port))
            # Add the IP address to the dictionary with open status
            open_ips[ip_str] = True
        except socket.timeout:
            # Add the IP address to the dictionary with closed status
            open_ips[ip_str] = False
    return open_ips


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

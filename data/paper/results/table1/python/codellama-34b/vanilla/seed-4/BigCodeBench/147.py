from datetime import timedelta
import socket
from ipaddress import IPv4Network
from threading import Thread
def task_func(ip_range, port):
    ip_range = ip_range.split('.')
    while (int(ip_range[-1]) + 1) > 255:
        ip_range[-2] = int(ip_range[-2]) + 1
        ip_range[-1] = 0
    while int(ip_range[-1]) >= 0:
        ip_range[-1] = int(ip_range[-1]) + 1
    for i in range(255):
        if i < 255:
            ip = f"{ip_range[0]}.{ip_range[1]}.{i}.{ip_range[3]}"
            s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            s.settimeout(timedelta(seconds=0.5))
            try:
                s.connect((ip, port))
                s.close()
                print(f"{ip}:{port} is open")
            except ConnectionRefusedError:
                print(f"{ip}:{port} is not open")
            except OSError:
                print(f"Cannot connect to {ip}:{port}")
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

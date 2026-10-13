from datetime import timedelta
import socket
from ipaddress import IPv4Network
from threading import Thread
def task_func(ip_range, port):
    port_status = {}
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        for ip in ip_range:
            if port_status.get(ip) is not None:
                continue
            try:
                s.settimeout(1)
                s.connect((str(ip), port))
                port_status[ip] = True
            except:
                port_status[ip] = False
    return port_status
def main():
    ip_range = IPv4Network('192.168.1.1/24')
    port = 80
    threads = []
    for ip in ip_range:
        t = Thread(target=task_func, args=(ip_range, port))
        threads.append(t)
        t.start()
    for t in threads:
        t.join()
    port_status = task_func(ip_range, port)
    del port_status['__iter__']
    print(port_status)
main()


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

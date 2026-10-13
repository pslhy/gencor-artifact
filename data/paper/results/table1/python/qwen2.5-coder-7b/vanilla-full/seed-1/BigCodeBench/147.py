from datetime import timedelta
import socket
from ipaddress import IPv4Network
from threading import Thread
def task_func(ip_range, port):
    def is_port_open(ip, port):
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        sock.settimeout(1)
        result = sock.connect_ex((ip, port))
        sock.close()
        return result == 0

    def scan(subnet):
        results = {}
        for ip in subnet.hosts():
            results[str(ip)] = is_port_open(str(ip), port)
        return results

    network = IPv4Network(ip_range)
    threads = []
    results = {}
    num_threads = 10

    for subnet in network.subnets(new_prefix=24):
        thread = Thread(target=lambda sub=subnet: results.update(scan(sub)))
        threads.append(thread)
        thread.start()
        if len(threads) % num_threads == 0:
            for t in threads:
                t.join()
            threads = []

    for t in threads:
        t.join()

    return results


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

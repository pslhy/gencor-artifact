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
    port_status = {}
    with ThreadPoolExecutor(max_workers=100) as e:
        for ip_addr in IPv4Network(ip_range):
            e.submit(check_port, (ip_addr, port), port_status)
    return port_status

def check_port(ip_addr, port):
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        s.settimeout(timedelta(seconds=1))
        try:
            s.connect((ip_addr, port))
            port_status[ip_addr] = True
        except socket.timeout:
            port_status[ip_addr] = False

# === Turn 2 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:7:10: undefined name 'ThreadPoolExecutor'
#     - <python>:17:13: undefined name 'port_status'
#     - <python>:19:13: undefined name 'port_status'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import socket
from ipaddress import IPv4Network
from threading import Thread
def task_func(ip_range, port):
    port_status = {}
    with ThreadPoolExecutor(max_workers=100) as e:
        for ip_addr in IPv4Network(ip_range):
            e.submit(check_port, (ip_addr, port), port_status)
    return port_status

def check_port(ip_addr, port):
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        s.settimeout(timedelta(seconds=1))
        try:
            s.connect((ip_addr, port))
            port_status[ip_addr] = True
        except socket.timeout:
            port_status[ip_addr] = False

# === Turn 3 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:7:10: undefined name 'ThreadPoolExecutor'
#     - <python>:17:13: undefined name 'port_status'
#     - <python>:19:13: undefined name 'port_status'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import socket
from ipaddress import IPv4Network
from threading import Thread
def task_func(ip_range, port):
    port_status = {}
    with ThreadPoolExecutor(max_workers=100) as e:
        for ip_addr in IPv4Network(ip_range):
            e.submit(check_port, (ip_addr, port), port_status)
    return port_status

def check_port(ip_addr, port):
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        s.settimeout(timedelta(seconds=1))
        try:
            s.connect((ip_addr, port))
            port_status[ip_addr] = True
        except socket.timeout:
            port_status[ip_addr] = False

# === Turn 4 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:7:10: undefined name 'ThreadPoolExecutor'
#     - <python>:17:13: undefined name 'port_status'
#     - <python>:19:13: undefined name 'port_status'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import socket
from ipaddress import IPv4Network
from threading import Thread
def task_func(ip_range, port):
    port_status = {}
    with ThreadPoolExecutor(max_workers=100) as e:
        for ip_addr in IPv4Network(ip_range):
            e.submit(check_port, (ip_addr, port), port_status)
    return port_status

def check_port(ip_addr, port):
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        s.settimeout(timedelta(seconds=1))
        try:
            s.connect((ip_addr, port))
            return True
        except socket.timeout:
            return False

# === Turn 5 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:7:10: undefined name 'ThreadPoolExecutor'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import socket
from ipaddress import IPv4Network
from threading import Thread
def task_func(ip_range, port):
    port_status = {}
    with ThreadPoolExecutor(max_workers=100) as e:
        for ip_addr in IPv4Network(ip_range):
            e.submit(check_port, (ip_addr, port), port_status)
    return port_status

def check_port(ip_addr, port):
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        s.settimeout(timedelta(seconds=1))
        try:
            s.connect((ip_addr, port))
            return True
        except socket.timeout:
            return False


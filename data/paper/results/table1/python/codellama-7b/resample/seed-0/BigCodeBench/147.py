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

    def is_port_open(ip_address, port):
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        sock.settimeout(1)
        result = sock.connect_ex((ip_address, port))
        sock.close()
        return result == 0

    def scan_ip_range(ip_range, port):
        start_time = datetime.now()
        timeout = timer(1, 5000)  # 1 millisecond increment, 5 second interval
        ips = IPv4Network(ip_range)
        ports = {ip: is_port_open(ip, port) for ip in ips}
        return {ip: open for ip, open in ports.items() if open}
        end_time = datetime.now()

    return {ip: port for ip, port in scan_ip_range(ip_range, port).items() if port}

def main():
    ip_range = "192.168.1.1/24"
    port = 80
    result = task_func(ip_range, port)
    print(f"result: {result}")

if __name__ == "__main__":
    main()

# === Turn 2 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:15:22: undefined name 'datetime'
#     - <python>:16:19: undefined name 'timer'
#     - <python>:20:20: undefined name 'datetime'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import socket
from ipaddress import IPv4Network
from threading import Thread
def task_func(ip_range, port):
    def is_port_open(ip_address, port):
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        sock.settimeout(1)
        result = sock.connect_ex((ip_address, port))
        sock.close()
        return (result == 0)

    def scan_ip_range(ip_range, port):
        start_time = datetime.now()
        timeout = timedelta(milliseconds=1)
        ips = IPv4Network(ip_range)
        ports = {ip: is_port_open(ip, port) for ip in ips}
        return {ip: open for ip, open in ports.items() if open}
        end_time = datetime.now()

    return {ip: port for ip, port in scan_ip_range(ip_range, port).items() if port}

def main():
    ip_range = "192.168.1.1/24"
    port = 80
    result = task_func(ip_range, port)
    print(f"result: {result}")

if __name__ == "__main__":
    main()

# === Turn 3 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:14:22: undefined name 'datetime'
#     - <python>:19:20: undefined name 'datetime'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import socket
from ipaddress import IPv4Network
from threading import Thread
def task_func(ip_range, port):
    def is_port_open(ip_address, port):
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        sock.settimeout(1)
        result = sock.connect_ex((ip_address, port))
        sock.close()
        return (result == 0)

    def scan_ip_range(ip_range, port):
        start_time = datetime.now()
        end_time = start_time + timedelta(seconds=2)
        ips = IPv4Network(ip_range)
        ports = [is_port_open(ip, port) for ip in ips]
        return [ip for ip, open in zip(ips, ports) if open]

    return scan_ip_range(ip_range, port)

def main():
    ip_range = "192.168.1.1/24"
    port = 80
    result = task_func(ip_range, port)
    print(f"result: {result}")

if __name__ == "__main__":
    main()

# === Turn 4 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:14:22: undefined name 'datetime'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import socket
from ipaddress import IPv4Network
from threading import Thread
def task_func(ip_range, port):
    def is_port_open(ip_address, port):
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        sock.settimeout(1)
        result = sock.connect_ex((ip_address, port))
        sock.close()
        return result == 0

    def scan_ip_range(ip_range, port):
        start_time = datetime.now()
        end_time = start_time + timedelta(seconds=2)
        ips = IPv4Network(ip_range)
        ports = [is_port_open(ip, port) for ip in ips]
        return [ip for ip, open in zip(ips, ports) if open]

    return scan_ip_range(ip_range, port)

def main():
    ip_range = "192.168.1.1/24"
    port = 80
    result = task_func(ip_range, port)
    print(f"result: {result}")

if __name__ == "__main__":
    main()

# === Turn 5 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:14:22: undefined name 'datetime'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import socket
from ipaddress import IPv4Network
from threading import Thread
def task_func(ip_range, port):
    def is_port_open(ip_address, port):
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        sock.settimeout(1)
        result = sock.connect_ex((ip_address, port))
        sock.close()
        return result == 0

    def scan_ip_range(ip_range, port):
        start_time = datetime.now()
        end_time = start_time + timedelta(seconds=2)
        ips = IPv4Network(ip_range)
        ports = [is_port_open(ip, port) for ip in ips]
        return [ip for ip, open in zip(ips, ports) if open]

    return scan_ip_range(ip_range, port)

def main():
    ip_range = "192.168.1.1/24"
    port = 80
    result = task_func(ip_range, port)
    print(f"result: {result}")

if __name__ == "__main__":
    main()


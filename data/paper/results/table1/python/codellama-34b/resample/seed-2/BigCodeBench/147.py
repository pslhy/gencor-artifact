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
    """
    Scans a specified IP address range and checks if a specified port is open on each IP
    """
    start_time = time.now()
    threads = []
    result = {}

    for ip in IPv4Network(ip_range):
        t = Thread(target=check_port, args=(str(ip), port))
        threads.append(t)
        t.start()

    for t in threads:
        t.join()

    return result

def check_port(ip, port):
    try:
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        sock.settimeout(5)
        sock.connect((ip, port))
        sock.close()
        return (True, time.now() - start_time)
    except socket.error:
        return (False, time.now() - start_time)

if __name__ == "__main__":
    start_time = time.now()
    result = task_func("192.168.1.0/24", 8080)
    print("Scanning completed in {} seconds".format(time.now() - start_time))
    for ip, status in result.items():
        print("{}: {}".format(ip, "Open" if status else "Closed"))

# === Turn 2 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:9:18: undefined name 'time'
#     - <python>:29:23: undefined name 'time'
#     - <python>:31:24: undefined name 'time'
#     - <python>:34:18: undefined name 'time'
#     - <python>:36:53: undefined name 'time'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import socket
from ipaddress import IPv4Network
from threading import Thread
def task_func(ip_range, port):
    threads = []
    result = {}

    start_time = datetime.now()

    for ip in IPv4Network(ip_range):
        t = Thread(target=check_port, args=(str(ip), port))
        threads.append(t)
        t.start()

    for t in threads:
        t.join()

    return result, start_time

def check_port(ip, port):
    try:
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        sock.settimeout(5)
        sock.connect((ip, port))
        sock.close()
        return True, datetime.now() - start_time
    except socket.error:
        return False, datetime.now() - start_time

if __name__ == "__main__":
    ip_range = sys.argv[1]
    port = int(sys.argv[2])
    result, start_time = task_func(ip_range, port)
    print("Scanning completed in {} seconds".format(datetime.now() - start_time))
    for ip, status in result.items():
        print("{}: {}".format(ip, "Open" if status else "Closed"))

# === Turn 3 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:9:18: undefined name 'datetime'
#     - <python>:27:22: undefined name 'datetime'
#     - <python>:29:23: undefined name 'datetime'
#     - <python>:32:16: undefined name 'sys'
#     - <python>:33:16: undefined name 'sys'
#     - <python>:35:53: undefined name 'datetime'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import socket
from ipaddress import IPv4Network
from threading import Thread
def task_func(ip_range, port):
    threads = []
    result = {}

    start_time = datetime.now()

    for ip in IPv4Network(ip_range):
        t = Thread(target=check_port, args=(str(ip), port))
        threads.append(t)
        t.start()

    for t in threads:
        t.join()

    return result, start_time

def check_port(ip, port):
    try:
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        sock.settimeout(5)
        sock.connect((ip, port))
        sock.close()
        return True, datetime.now() - start_time
    except socket.error:
        return False, datetime.now() - start_time

if __name__ == "__main__":
    import sys
    ip_range = sys.argv[1]
    port = int(sys.argv[2])
    result, start_time = task_func(ip_range, port)
    print("Scanning completed in {} seconds".format(datetime.now() - start_time))
    for ip, status in result.items():
        print("{}: {}".format(ip, "Open" if status else "Closed"))

# === Turn 4 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:9:18: undefined name 'datetime'
#     - <python>:27:22: undefined name 'datetime'
#     - <python>:29:23: undefined name 'datetime'
#     - <python>:36:53: undefined name 'datetime'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import socket
from ipaddress import IPv4Network
from threading import Thread
def task_func(ip_range, port):
    threads = []
    result = {}

    start_time = datetime.now()

    for ip in IPv4Network(ip_range):
        t = Thread(target=check_port, args=(str(ip), port))
        threads.append(t)
        t.start()

    for t in threads:
        t.join()

    return result, datetime.now() - start_time

def check_port(ip, port):
    try:
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        sock.settimeout(5)
        sock.connect((ip, port))
        sock.close()
        return True, datetime.now() - start_time
    except socket.error:
        return False, datetime.now() - start_time

if __name__ == "__main__":
    import sys
    ip_range = sys.argv[1]
    port = int(sys.argv[2])
    result, start_time = task_func(ip_range, port)
    print("Scanning completed in {} seconds".format(datetime.now() - start_time))
    for ip, status in result.items():
        print("{}: {}".format(ip, "Open" if status else "Closed"))

# === Turn 5 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:9:18: undefined name 'datetime'
#     - <python>:19:20: undefined name 'datetime'
#     - <python>:27:22: undefined name 'datetime'
#     - <python>:29:23: undefined name 'datetime'
#     - <python>:36:53: undefined name 'datetime'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import socket
from ipaddress import IPv4Network
from threading import Thread
def task_func(ip_range, port):
    threads = []
    result = {}

    start_time = datetime.now()

    for ip in IPv4Network(ip_range):
        t = Thread(target=check_port, args=(str(ip), port))
        threads.append(t)
        t.start()

    for t in threads:
        t.join()

    return result, datetime.now() - start_time

def check_port(ip, port):
    try:
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        sock.settimeout(5)
        sock.connect((ip, port))
        sock.close()
        return True, datetime.now() - start_time
    except socket.error:
        return False, datetime.now() - start_time

if __name__ == "__main__":
    import sys
    ip_range = sys.argv[1]
    port = int(sys.argv[2])
    result, start_time = task_func(ip_range, port)
    print("Scanning completed in {} seconds".format(datetime.now() - start_time))
    for ip, status in result.items():
        print("{}: {}".format(ip, "Open" if status else "Closed"))


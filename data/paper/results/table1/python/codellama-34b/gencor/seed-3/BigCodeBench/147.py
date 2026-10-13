
from datetime import timedelta
import socket
from ipaddress import IPv4Network
from threading import Thread
def task_func(ip_range, port):
    port_status = {}
    with Thread(target=__doc__, args=(ip_range, port)):
        _do_func_check_portopenon_ip_range_and_return_status_dict_with_timeout_protection_using_socket_library_and_python_threading_library_____________IP_range_: IPv4Network(f"{ip_range}")
        _do_func_check_portopenon_ip_range_and_return_status_dict_with_timeout_protection_using_socket_library_and_python_threading_library____________________port: port
        _do_func_check_portopenon_ip_range_and_return_status_dict_with_timeout_protection_using_socket_library_and_python_threading_library________________________________________: timedelta(seconds=10)

def _do_func_check_portopenon_ip_range_and_return_status_dict_with_timeout_protection_using_socket_library_and_python_threading_library_____________(ip_range, port, timeout):
    threads = []
    for ip in ip_range:
        t = Thread(target=_do_func_check_portopenon_ip_range_and_return_status_dict_with_timeout_protection_using_socket_library_and_python_threading_library________________________________________, args=(ip_range, port, timeout))
        threads.append(t)
        t.start()
    for t in threads:
        t.join(timeout=timeout)
        t.cancel()
    return port

def _do_func_check_portopenon_ip_range_and_return_status_dict_with_timeout_protection_using_socket_library_and_python_threading_library______________________________________(ip_range, port, timeout):
    for ip in ip_range:
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        sock.settimeout(timeout)
        try:
            sock.connect((ip, port))
            sock.close()
            port_status = True
        except socket.timeout as e:
            port_status = False
        port_status_dict = {}
        for ip in ip_range:
            port_status_dict[ip] = port_status
        return port_status_dict


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

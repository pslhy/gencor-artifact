from datetime import timedelta
import socket
from ipaddress import IPv4Network
from threading import Thread
def task_func(ip_range, port):
    # Initialize an empty dictionary to store the result
    result = {}
    
    # Convert the IP address range to a list of IP addresses
    ip_list = list(IPv4Network(ip_range))
    
    # Create a list of threads to check the port on each IP address
    threads = [Thread(target=check_port, args=(ip, port, result)) for ip in ip_list]
    
    # Start the threads and wait for them to finish
    for thread in threads:
        thread.start()
    for thread in threads:
        thread.join()
    
    # Return the result dictionary
    return result

def check_port(ip, port, result):
    # Create a TCP socket and connect to the specified IP and port
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as sock:
        sock.settimeout(1)
        sock.connect((ip, port))

    # Indicate that the port is open
    result[ip] = True

# Main code to be executed
if __name__ == "__main__":
    # Specify the IP address range and port to check
    ip_range = "192.168.1.0/24"
    port = 22

    # Execute the task function and get the result
    result = task_func(ip_range, port)

    # Print the result
    print(result)


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

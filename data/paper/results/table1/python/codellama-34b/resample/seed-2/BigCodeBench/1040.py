# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
# < User Prompt >
#     Run a non-blocking echo server that appends the server's current time to received data and sends it back to the client, while handling exceptional conditions for each socket.
#     The function should output with:
#         str: A status message indicating the server's operation and run duration.
#     You should write self-contained code starting with:
#     ```
#     import socket
#     import select
#     import queue
#     from datetime import datetime, timedelta
#     def task_func(
#         server_address="localhost", server_port=12345, buffer_size=1024, run_duration=5
#     ):
#     ```
from datetime import timedelta
import socket
import select
import queue
from datetime import datetime, timedelta
def task_func(
    server_address="localhost", server_port=12345, buffer_size=1024, run_duration=5
):
    # Create a TCP/IP socket
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    sock.settimeout(10)
    sock.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    sock.bind((server_address, int(server_port)))
    sock.listen(5)
    print(f"echo server is up and running on {server_address}:{server_port}")
    start_time = datetime.now()
    count = 0
    try:
        while True:
            count += 1
            new_connection, address = sock.accept()
            if new_connection:
                print(f"New connection from {address}")
                connection.recv(buffer_size).decode("utf-8").strip()
                timestamp = str(datetime.now())
                print(f"Received message: {message.decode('utf-8')}")
                timestamp = message.split(": ")[-1].strip()
                timestamp = timestamp.split(".")[0]
                print(f"Sending back message with timestamp {timestamp}")
                new_connection.send((f"server response {timestamp}").encode("utf-8"))
    except Exception as e:
        print(f"Exception occurred: {e}")
        sock.close()
    finally:
        sock.close()
    end_time = datetime.now()
    duration = end_time - start_time
    print(f"echo server has exited, handled {count} connections")
    print(f"echo server duration: {duration}")
    return duration

# === Turn 2 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:24:17: undefined name 'connection'
#     - <python>:26:44: undefined name 'message'
#     - <python>:27:29: undefined name 'message'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import socket
import select
import queue
from datetime import datetime, timedelta
def task_func(
    server_address="localhost", server_port=12345, buffer_size=1024, run_duration=5
):
    # Create a TCP/IP socket
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    sock.settimeout(10)
    sock.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    sock.bind((server_address, int(server_port)))
    sock.listen(5)
    print(f"echo server is up and running on {server_address}:{server_port}")
    start_time = datetime.now()
    count = 0
    try:
        while True:
            count += 1
            new_connection = sock.accept()
            if new_connection:
                print(f"New connection from {new_connection}")
                data = new_connection[0].recv(buffer_size).decode("utf-8").strip()
                timestamp = data.split(": ")[-1].strip()
                print(f"Received message: {data.decode('utf-8')}")
                timestamp = timestamp.split(".")[0]
                print(f"Sending back message with timestamp {timestamp}")
                new_connection[0].send((f"server response {timestamp}").encode("utf-8"))
    except Exception as e:
        print(f"Exception occurred: {e}")
    finally:
        sock.close()
    end_time = datetime.now()
    duration = end_time - start_time
    print(f"echo server has exited, handled {count} connections")
    print(f"echo server duration: {duration}")
    return duration


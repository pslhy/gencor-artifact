import threading

from datetime import timedelta
import socket
import select
import queue
from datetime import datetime, timedelta
def task_func(server_address="localhost", server_port=12345, buffer_size=1024, run_duration=5):
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
                connection_delegate = queue.Queue()
                connection_delegate.put(new_connection)
                connection_thread = threading.Thread(target=connection_delegate.get, args=(new_connection,))
                connection_thread.start()
            if count > run_duration:
                break
    except socket.error as e:
        print(f"Error: {e}")
    finally:
        pass
    print(f"echo server is down")
    print(f"echo server was running for {datetime.now() - start_time}")
    return f"echo server was running for {datetime.now() - start_time}"

def connection_delegate(new_connection):
    while True:
        try:
            data = new_connection.recv(buffer_size=1024)
            print(f"Received data from client: {data}")
            if data:
                new_connection.sendall(data)
            else:
                break
        except socket.error as e:
            print(f"Error: {e}")
        finally:
            new_connection.close()

if __name__ == "__main__":
    task_func()


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
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

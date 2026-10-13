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
    server_sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    server_sock.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    server_sock.bind((server_address, server_port))
    server_sock.listen(5)
    timeout = timedelta(seconds = run_duration)
    start_time = datetime.now()
    while True: 
        # select server socket which is ready to read
        ready_to_read, ready_to_write, in_error = select.select([server_sock], [server_sock], [server_sock],  server_sock)
        for sock in ready_to_read:
            c, addr = server_sock.accept()
            client_data = c.recv(buffer_size)
            try:
                c.sendall(b"[%s] %s", client_data, str(datetime.now()).encode())
                c.shutdown(socket.SHUT_RDWR)
                c.close()
            except Exception as e:
                print(f"Error occurs when handling client {addr}: {e}")
        if (datetime.now() - start_time) > timeout:
            break
    return "Server runs for %d seconds" % run_duration


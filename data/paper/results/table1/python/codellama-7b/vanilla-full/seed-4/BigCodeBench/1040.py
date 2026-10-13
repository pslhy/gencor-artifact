from datetime import timedelta
import socket
import select
import queue
from datetime import datetime, timedelta
def task_func(
    server_address="localhost", server_port=12345, buffer_size=1024, run_duration=5
):
    started_at = datetime.now()
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    sock.bind((server_address, server_port))
    sock.listen()
    print(f"Starting server at {started_at}...")
    poll = select.poll()
    poll.register(sock, select.POLLIN)
    running = True
    result = None
    try:
        clients = queue.Queue()
        while running and datetime.now() < started_at + timedelta(seconds=run_duration):
            events = poll.poll()
            for sock, event in events:
                if event & select.POLLIN:
                    client_sock, client_addr = sock.accept()
                    clients.put(client_sock)
                    print(f"[+] Accepted connection from {client_addr}")
                if clients.qsize() > 0:
                    client_sock = clients.get()
                    data = client_sock.recv(buffer_size)
                    if data:
                        current_time = datetime.now()
                        data += f"{current_time}\n".encode("utf-8")
                        client_sock.sendall(data)
                        print(f"[+] Sent message with timestamp to client {client_addr}")
                    else:
                        client_sock.close()
                        print(f"[+] Closed connection from {client_addr}")
        result = "Server stopped due to timeout" if running else "Server stopped due to error"
    except Exception as e:
        result = f"Server stopped due to exception:{e}"
        running = False
    finally:
        sock.close()
        clients.close()
    print(f"Server stopped at {datetime.now()}. Result: {result}")
    return result


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

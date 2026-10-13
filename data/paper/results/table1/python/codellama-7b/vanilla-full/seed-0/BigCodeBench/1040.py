from datetime import timedelta
import socket
import select
import queue
from datetime import datetime, timedelta
def task_func(
    server_address="localhost", server_port=12345, buffer_size=1024, run_duration=5
):

    start_time = datetime.now()

    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as server_socket:
        server_socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
        server_socket.bind((server_address, server_port))
        server_socket.listen()

        connection_queue = queue.Queue()

        def handle_client(client_socket):
            try:
                while True:
                    data = client_socket.recv(buffer_size)
                    if not data:
                        break
                    current_time = datetime.now()
                    data = data.decode("utf-8") + "\n" + current_time.strftime("%Y-%m-%d %H:%M:%S")
                    client_socket.sendall(data.encode("utf-8"))
            except Exception as e:
                print(f"Exception raised: {e}")
            finally:
                client_socket.close()
                connection_queue.task_done()

        while True:
            readable, _, exceptional = select.select([server_socket, ], [], [])
            for socket in readable:
                if socket is server_socket:
                    client_socket, client_address = server_socket.accept()
                    connection_queue.put(client_socket)
                else:
                    client_socket = connection_queue.get()
                    handle_client(client_socket)
            for socket in exceptional:
                connection_queue.put(socket)

    run_time = timedelta(seconds=run_duration)
    end_time = datetime.now()
    elapsed_time = end_time - start_time
    status = f"Run time: {elapsed_time} (expected: {run_time})"
    print(status)
    return status
task_func(server_address="localhost", server_port=12345, buffer_size=1024, run_duration=5)


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

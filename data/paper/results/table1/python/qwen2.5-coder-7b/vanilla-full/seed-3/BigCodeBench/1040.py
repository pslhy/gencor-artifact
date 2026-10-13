from datetime import timedelta
import socket
import select
import queue
from datetime import datetime, timedelta
def task_func(
    server_address="localhost", server_port=12345, buffer_size=1024, run_duration=5
):
    start_time = datetime.now()
    input_sockets = []
    output_sockets = []
    message_queues = {}
    server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    server_socket.setblocking(False)
    server_socket.settimeout(None)
    server_socket.bind((server_address, server_port))
    server_socket.listen(5)

    input_sockets.append(server_socket)

    try:
        while (datetime.now() - start_time) < timedelta(seconds=run_duration) or output_sockets:
            readable, writable, exceptional = select.select(input_sockets, output_sockets, input_sockets)
            
            for s in readable:
                if s is server_socket:
                    connection, client_address = s.accept()
                    connection.setblocking(False)
                    input_sockets.append(connection)
                    message_queues[connection] = queue.Queue()
                else:
                    data = s.recv(buffer_size)
                    if data:
                        current_time = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
                        message_queues[s].put(data + current_time.encode())
                        output_sockets.append(s)
                    else:
                        print('Closing socket:', s.getpeername())
                        if s in output_sockets:
                            output_sockets.remove(s)
                        input_sockets.remove(s)
                        s.close()
                        del message_queues[s]

            for s in writable:
                try:
                    next_msg = message_queues[s].get_nowait()
                except queue.Empty:
                    output_sockets.remove(s)
                else:
                    s.send(next_msg)

            for s in exceptional:
                print('Handling exceptional condition for', s.getpeername())
                input_sockets.remove(s)
                if s in output_sockets:
                    output_sockets.remove(s)
                s.close()
                del message_queues[s]

    finally:
        server_socket.close()
        return f"Server ran for {run_duration} seconds."


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

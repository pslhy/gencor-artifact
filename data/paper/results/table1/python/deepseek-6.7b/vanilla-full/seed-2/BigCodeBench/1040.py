from datetime import timedelta
import socket
import select
import queue
from datetime import datetime, timedelta
def task_func(
    server_address="localhost", server_port=12345, buffer_size=1024, run_duration=5
):
    # Setup server
    server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    server.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    server.bind((server_address, server_port))
    server.listen(5)

    # Setup for tracking connections
    inputs = [server]
    outputs = []
    message_queues = {}

    start_time = datetime.now()

    while datetime.now() - start_time < timedelta(seconds=run_duration):
        readable, writable, exceptional = select.select(inputs, outputs, inputs)

        for s in readable:
            if s is server:
                # Handle new connection
                connection, client_address = s.accept()
                print(f"New connection from {client_address}")
                connection.setblocking(0)
                inputs.append(connection)
                message_queues[connection] = queue.Queue()
            else:
                data = s.recv(buffer_size)
                if data:
                    # Client sent something
                    message_queues[s].put(data)
                    if s not in outputs:
                        outputs.append(s)
                else:
                    # Client closed connection
                    print(f"Closing connection from {s.getpeername()}")
                    if s in outputs:
                        outputs.remove(s)
                    inputs.remove(s)
                    s.close()
                    del message_queues[s]

        for s in writable:
            try:
                next_msg = message_queues[s].get_nowait()
            except queue.Empty:
                outputs.remove(s)
            else:
                now = datetime.now().strftime('%H:%M:%S')
                s.send(next_msg + b' ' + bytes(now, 'utf-8'))

        for s in exceptional:
            print(f"Exceptional condition on {s.getpeername()}")
            inputs.remove(s)
            if s in outputs:
                outputs.remove(s)
            s.close()
            del message_queues[s]

    return f"Server operation completed. Run duration: {str(timedelta(seconds=run_duration))}"


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

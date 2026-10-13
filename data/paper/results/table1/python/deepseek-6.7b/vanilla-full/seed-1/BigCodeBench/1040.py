from datetime import timedelta
import socket
import select
import queue
from datetime import datetime, timedelta
def task_func(
    server_address="localhost", server_port=12345, buffer_size=1024, run_duration=5
):
    # Create TCP/IP socket
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

    # Bind the socket to the port
    server_address = (server_address, server_port)
    sock.bind(server_address)

    # List of sockets for select.select()
    inputs = [sock]

    # List of connected clients - socket as a key, buffer as a value
    outputs = {}

    # Current activities dict
    message_queues = {}

    # Complete server operation timeout in seconds
    complete_time = datetime.now() + timedelta(seconds=run_duration)
    sock.listen(1)

    while datetime.now() < complete_time:

        # Wait for the next event
        readable, writable, exceptional = select.select(inputs, outputs, inputs)

        for s in readable:
            if s is sock:
                # New connection
                connection, client_address = s.accept()
                print("New connection from ", client_address)
                connection.setblocking(0)
                inputs.append(connection)
                message_queues[connection] = queue.Queue()
            else:
                data = s.recv(buffer_size)
                if data:
                    # A readable client socket has data
                    message_queues[s].put(data)
                    if s not in outputs:
                        outputs.append(s)
                else:
                    # Interpret empty result as closed connection
                    print("Closing connection to ", s.getpeername())
                    if s in outputs:
                        outputs.remove(s)
                    inputs.remove(s)
                    s.close()
                    del message_queues[s]

        for s in writable:
            try:
                next_msg = message_queues[s].get_nowait()
            except queue.Empty:
                # No messages waiting so no need to write
                outputs.remove(s)
            else:
                now = datetime.now()
                s.send(f"{now.strftime('%H:%M:%S')}: {next_msg}".encode())

        for s in exceptional:
            print("Handling exceptional condition for ", s.getpeername())
            inputs.remove(s)
            if s in outputs:
                outputs.remove(s)
            s.close()
            del message_queues[s]

    sock.close()

    duration = timedelta(seconds=(datetime.now() - datetime.now()).seconds)

    return f"Echo server has been running for {duration}."

print(task_func())


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

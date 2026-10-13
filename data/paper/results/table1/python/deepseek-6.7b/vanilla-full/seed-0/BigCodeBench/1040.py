from datetime import timedelta
import socket
import select
import queue
from datetime import datetime, timedelta
def task_func(
    server_address="localhost", server_port=12345, buffer_size=1024, run_duration=5
):
    # Set up server
    server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    server.setblocking(0)
    server.bind((server_address, server_port))
    server.listen()

    # Keep track of sockets
    inputs = [server]
    outputs = []

    # Map sockets to buffer queues
    message_queues = {}

    # Start time of the server
    start_time = datetime.now()

    while (datetime.now() - start_time) < timedelta(seconds=run_duration):
        # Wait for activity on sockets
        readable, _, exceptional = select.select(inputs, outputs, inputs)

        for s in readable:
            if s is server:
                # New connection
                connection, client_address = s.accept()
                connection.setblocking(0)
                inputs.append(connection)
                message_queues[connection] = queue.Queue()
            else:
                # Received data from existing connection
                data = s.recv(buffer_size)
                if data:
                    now = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
                    message = data + b' (Server time: ' + bytes(now, 'utf-8') + b')'
                    message_queues[s].put(data)
                    if s not in outputs:
                        outputs.append(s)
                else:
                    # Close connection
                    if s in outputs:
                        outputs.remove(s)
                    inputs.remove(s)
                    s.close()
                    del message_queues[s]

        for s in exceptional:
            # Handle exceptional conditions
            inputs.remove(s)
            if s in outputs:
                outputs.remove(s)
            s.close()
            del message_queues[s]

        # Send out messages
        for s in outputs:
            try:
                msg = message_queues[s].get_nowait()
            except queue.Empty:
                outputs.remove(s)
            else:
                s.send(msg)

    server.close()
    
    # Server operation status and run duration
    return "Server operation successful. Run duration: " + str((datetime.now() - start_time).seconds) + " seconds."


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

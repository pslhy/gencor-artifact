from datetime import timedelta
import socket
import select
import queue
from datetime import datetime, timedelta
def task_func(
    server_address="localhost", server_port=12345, buffer_size=1024, run_duration=5
):
    # Create a selectable socket object
    server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    server_socket.settimeout(1)
    server_socket.bind(server_address, server_port)

    try:
        # Create a dictionary to track closed connections
        connections = {}
        read_queue = queue.Queue()
        write_queue = queue.Queue()
        read_buffer = {}
        write_buffer = {}

        # Start the server's main loop
        start_time = datetime.utcnow()
        while (datetime.utcnow() - start_time) < timedelta(hours=run_duration):
            # Add new sockets to the connections dictionary
            connections, _ = select.select([server_socket], [], [], 1)
            for new_socket in connections:
                connections[new_socket] = (new_socket.address, "new")

            # Remove closed connections from the connections dictionary
            for connection_socket in list(connections):
                if connections[connection_socket][1] == "closed":
                    connections.pop(connection_socket)

            # Read data from the connections that have data available
            for connection_socket, _ in list(connections.items()):
                connections[connection_socket][1] = "read"
                try:
                    data = connection_socket.recv(buffer_size)
                    if data:
                        read_queue.put((connection_socket, data))
                except socket.error:
                    connections[connection_socket][1] = "closed"

            # Write data to the connections that have data available
            while not read_queue.empty():
                connection_socket, data = read_queue.get()
                connections[connection_socket][1] = "write"
                try:
                    write_queue.put((connection_socket, data))
                except socket.error:
                    connections[connection_socket][1] = "closed"

            # Write the data received from the client
            while not write_queue.empty():
                connection_socket, data = write_queue.get()
                try:
                    write_buffer = data
                    connection_socket.sendall(write_buffer)
                    connections[connection_socket][1] = "read"
                except socket.error:
                    connections[connection_socket][1] = "closed"
                    write_buffer = b""
                    write_queue.task_done()

        # Exit the main loop and print a status message
        print(f"Server stopped after {timedelta(hours=run_duration)}")


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

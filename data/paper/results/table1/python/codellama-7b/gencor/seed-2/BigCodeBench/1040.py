import time

from datetime import timedelta
import socket
import select
import queue
from datetime import datetime, timedelta
def task_func(server_address="localhost", server_port=12345, buffer_size=1024, run_duration=5):
    # Create the socket
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        # Set the SO_REUSEADDR option to allow binding to the
        # same address and port without having to wait for the
        # previous socket closing.
        s.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
        s.bind((server_address, server_port))

        # Set the number of clients the server can handle simultaneously.
        # In this case, our socket can handle 5 connections.
        s.listen(5)

        # List to keep track of all the connected clients
        clients = list()

        # Queue to buffer incoming request data
        request_queue = queue.Queue()

        # Start a new thread to handle client requests
        def client_thread(client):
            while client:
                try:
                    # Receive data from the client socket
                    data = client.recv(buffer_size).decode()

                    # Append the current time to the received data
                    data += " | Time: " + str(datetime.now()) + "\n"

                    # Send the modified data back to the client
                    client.sendall(data.encode())
                except ConnectionResetError:
                    # The client socket has been disconnected
                    clients.remove(client)
                except BrokenPipeError:
                    # The client socket has been disconnected
                    clients.remove(client)
                except Exception as e:
                    # All other exceptions
                    raise e

        # Accept incoming connections and add them to the list of clients
        while True:
            client, address = s.accept()
            clients.append(client)
            client_thread(client)

        # Run the server for the specified duration
        start_time = datetime.now()
        duration = timedelta(seconds=run_duration)
        while datetime.now() - start_time < duration:
            # Check if the client connection has been disconnected
            for i, client in enumerate(clients):
                if not client:
                    clients.remove(client)

            # Check if any request has been received
            if not request_queue.empty():
                # Handle the received request
                request = request_queue.get()
                # Add the request data to the clients
                for client in clients:
                    client.sendall(request.encode())

                # Add a newline character to the request for proper formatting
                request += "\n"
                # Log the received request
                print(request)

            # Sleep for a duration to allow the server to handle incoming requests
            time.sleep(0.1)

        # Return a status message indicating the server operation and run duration
        end_time = datetime.now()
        duration = end_time - start_time
        status_message = f"Server stopped. Run duration: {duration}"
        return status_message


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

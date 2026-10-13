from datetime import timedelta
import socket
import select
import queue
from datetime import datetime, timedelta
def task_func(
    server_address="localhost", server_port=12345, buffer_size=1024, run_duration=5
):
    # Create a socket and bind it to a specific address and port
    server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    server_socket.bind((server_address, server_port))
    server_socket.listen()

    # Create a queue for incoming connections
    connection_queue = queue.Queue()

    # Accept an incoming connection and handle any exceptions
    try:
        while True:
            connection_queue.put(server_socket.accept()[0])
    except:
        pass

    start_time = datetime.now()
    while (datetime.now() - start_time) < timedelta(seconds=run_duration):
        # Get an incoming connection from the queue
        client_socket = connection_queue.get()

        # Receive the message from the client
        message = client_socket.recv(buffer_size).decode()

        # Append the current time to the message
        modified_message = message + " " + str(datetime.now())

        # Send the modified message back to the client
        client_socket.send(modified_message.encode())

        # Close the client socket
        client_socket.close()

    # Close the server socket
    server_socket.close()

    # Return a status message indicating the server's operation and run duration
    return f"Server running for {run_duration} seconds"


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

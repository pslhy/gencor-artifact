from datetime import timedelta
import socket
import select
import queue
from datetime import datetime, timedelta
def task_func(
    server_address="localhost", server_port=12345, buffer_size=1024, run_duration=5
):

    # Initialize server
    server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    server.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    server.setblocking(0)
    server.bind((server_address, server_port))
    server.listen(5)

    # Initialize other parameters
    message_queues = {}
    start_time = datetime.now()
    timeout = run_duration
    running = True

    # Main event loop
    while running:
        # Wait for at least one of the sockets to be ready for processing
        readable, writable, exceptional = select.select(
            [server] + list(message_queues.keys()),
            list(message_queues.keys()),
            list(message_queues.keys()),
            timeout
        )

        # Handle new connexions
        for sock in readable:
            if sock is server:
                connection, client_address = sock.accept()
                connection.setblocking(0)
                message_queues[connection] = queue.Queue()
            else:
                data = sock.recv(buffer_size)
                if data:
                    # Send back data with current time
                    current_time = str(datetime.now())
                    data = data + bytes(current_time, 'utf-8')
                    message_queues[sock].put(data)
                else:
                    # Close connection if no data received
                    print('closing ', client_address, ' after reading no data')
                    del message_queues[sock]
                    sock.close()

        # Handle data to write
        for sock in writable:
            try:
                data = message_queues[sock].get_nowait()
            except queue.Empty:
                # No data ready, switch to next sockets
                continue
            sock.send(data)

        # Handle exceptional sockets
        for sock in exceptional:
            print('handling exceptional condition for', sock.getpeername())
            del message_queues[sock]
            sock.close()

        # Check if timeout has passed
        if timeout <= 0:
            running = False
            break
        timeout -= 1

        # Check if server run time has ended after starting time
        if datetime.now() - start_time > timedelta(seconds=run_duration):
            running = False
            break

    # Return the operation status and run duration
    end_time = datetime.now()
    duration = str((end_time-start_time).total_seconds()) + ' seconds'
    return "Server running for: " + duration


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

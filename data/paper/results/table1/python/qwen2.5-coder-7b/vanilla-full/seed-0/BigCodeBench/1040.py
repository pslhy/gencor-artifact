from datetime import timedelta
import socket
import select
import queue
from datetime import datetime, timedelta
def task_func(
    server_address="localhost", server_port=12345, buffer_size=1024, run_duration=5
):
    server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    server.setblocking(False)
    server.bind((server_address, server_port))
    server.listen(5)
    
    inputs = [server]
    outputs = []
    message_queues = {}
    
    start_time = datetime.now()
    end_time = start_time + timedelta(seconds=run_duration)
    
    try:
        while datetime.now() < end_time:
            readable, writable, exceptional = select.select(inputs, outputs, inputs)
            
            for s in readable:
                if s is server:
                    connection, client_address = s.accept()
                    connection.setblocking(False)
                    inputs.append(connection)
                    message_queues[connection] = queue.Queue()
                else:
                    data = s.recv(buffer_size)
                    if data:
                        message_queues[s].put((data, datetime.now()))
                        if s not in outputs:
                            outputs.append(s)
                    else:
                        if s in outputs:
                            outputs.remove(s)
                        inputs.remove(s)
                        s.close()
                        del message_queues[s]
            
            for s in writable:
                try:
                    data, timestamp = message_queues[s].get_nowait()
                    response = data + bytes(f" - Received at {timestamp}", 'utf-8')
                    s.send(response)
                except queue.Empty:
                    outputs.remove(s)
            
            for s in exceptional:
                inputs.remove(s)
                if s in outputs:
                    outputs.remove(s)
                s.close()
                del message_queues[s]
    
    finally:
        server.close()
    
    return f"Server stopped after {run_duration} seconds."


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

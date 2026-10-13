from datetime import timedelta
import socket
import select
import queue
from datetime import datetime, timedelta
def task_func(
    server_address="localhost", server_port=12345, buffer_size=1024, run_duration=5
):
    try:
        start_time = datetime.now()
        
        server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        server.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
        server.bind((server_address, server_port))
        server.listen(5)
        
        outputs = []
        inputs = [server]
        messages = {}
        queue.Queue()
        
        while (datetime.now() - start_time).total_seconds() < run_duration:
            readable, writable, exceptional = select.select(inputs, outputs, inputs, 1)
            
            for s in readable:
                if s is server:
                    connection, client_address = s.accept()
                    connection.setblocking(False)
                    inputs.append(connection)
                    print(f"New connection from {client_address}")
                else:
                    data = s.recv(buffer_size)
                    if data:
                        current_time = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
                        response = data.decode('utf-8') + current_time + "\n"
                        s.sendall(response.encode('utf-8'))
                    else:
                        print(f"Closing connection to {client_address}")
                        if s in outputs:
                            outputs.remove(s)
                        inputs.remove(s)
                        s.close()
                        del messages[s]
            
            for s in writable:
                try:
                    message = messages[s]
                    s.sendall(message.encode('utf-8'))
                    outputs.remove(s)
                except KeyError:
                    s.close()
                    inputs.remove(s)
            
            for s in exceptional:
                print(f"Handling exceptional condition for {s.getpeername()}")
                s.close()
                inputs.remove(s)
                if s in outputs:
                    outputs.remove(s)
                del messages[s]
        
        server.close()
        return f"Server ran for {run_duration} seconds."
    except Exception as e:
        return str(e)

# Example usage:
# status = task_func()
# print(status)


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

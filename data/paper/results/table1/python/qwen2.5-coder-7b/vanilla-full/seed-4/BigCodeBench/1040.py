from datetime import timedelta
import socket
import select
import queue
from datetime import datetime, timedelta
def task_func(
    server_address="localhost", server_port=12345, buffer_size=1024, run_duration=5
):
    start_time = datetime.now()
    echo_server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    echo_server.setblocking(False)
    echo_server.bind((server_address, server_port))
    echo_server.listen()

    read_list = [echo_server]
    write_list = []
    message_queues = {}

    try:
        while datetime.now() - start_time <= timedelta(seconds=run_duration):
            readable, writable, exceptional = select.select(read_list, write_list, read_list, 1)

            for s in readable:
                if s is echo_server:
                    connection, client_address = echo_server.accept()
                    connection.setblocking(False)
                    read_list.append(connection)
                    message_queues[connection] = queue.Queue()
                else:
                    data = s.recv(buffer_size)
                    if data:
                        timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
                        message_queues[s].put((data.decode('utf-8'), timestamp))
                        if s not in write_list:
                            write_list.append(s)
                    else:
                        print('closing connection to', client_address)
                        if s in writable:
                            write_list.remove(s)
                        read_list.remove(s)
                        s.close()
                        del message_queues[s]

            for s in writable:
                try:
                    next_msg = message_queues[s].get_nowait()
                except queue.Empty:
                    write_list.remove(s)
                else:
                    s.send(next_msg[0] + ' ' + next_msg[1])

            for s in exceptional:
                print('handling exceptional condition for', s.getpeername())
                if s in writable:
                    write_list.remove(s)
                read_list.remove(s)
                s.close()
                del message_queues[s]

        print('Server ran for', run_duration, 'seconds')
    except KeyboardInterrupt:
        print('Server interrupted manually')

    return 'Server operation completed'


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

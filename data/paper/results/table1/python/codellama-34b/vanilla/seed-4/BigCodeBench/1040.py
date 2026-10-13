from datetime import timedelta
import socket
import select
import queue
from datetime import datetime, timedelta
def task_func(
    server_address="localhost", server_port=12345, buffer_size=1024, run_duration=5
):
    status = "NA"
    status_message = "The echo server was not started."
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as server_socket:
        try:
            server_socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
            server_socket.bind((server_address, server_port))
            server_socket.listen(10)
            start_time = datetime.now()
            status_message = "The echo server is listening on port {}.".format(server_port)
            while (datetime.now() - start_time).total_seconds() < run_duration * 60:
                rready, wready, xready = select.select([server_socket], [], [], 0)
                for sd in rready:
                    if sd == server_socket:
                        client_socket, client_address = server_socket.accept()
                        try:
                            data = client_socket.recv(buffer_size).decode()
                            sendval = "{} - {:%Y-%m-%dT%H:%M:%SZ}".format(data, datetime.utcnow())
                            client_socket.send(sendval.encode())
                            client_socket.close()
                    else:
                        raise Exception("An unknown socket was ready to be read from.")
                else:
                    raise Exception("Accept failed")
        except Exception as e:
            status_message = "The echo server failed to start due to the following error: " + str(e)
            status = "FAIL"
        finally:
            status_message += " The echo server shutdown gracefully."
        try:
            server_socket.shutdown(socket.SHUT_RDWR)
            server_socket.close()
            status = "PASS"
        except OSError:
            pass
        return (status, status_message)


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

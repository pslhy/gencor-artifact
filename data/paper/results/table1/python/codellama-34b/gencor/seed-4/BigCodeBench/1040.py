import logging

from datetime import timedelta
import socket
import select
import queue
from datetime import datetime, timedelta
def task_func(server_address="localhost", server_port=12345, buffer_size=1024, run_duration=5):
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
                    # Cleaning up the client socket to prevent resource leaks.
                    # This is done here to break the `try` block, which should be left only to handle
                    # exceptions during sending the echo back to the client.
                    # Try to move the `client_socket.close()` outside this `while` loop.
                    # If you do that, you will have an invalid socket.error exception raised when the
                    # server sends data to the client and goes to sleep (after sending the data and closing
                    # the client socket) with some clients (some specific clients can not handle that issue and
                    # will result in a "Hard Close" or "RST Condition" error on the client side.
                    # When closing the server socket, all current connections will be closed regardless the respective
                    # client status (socket status) , if the client does not close his/her socket,
                    # always use for related cleanup.
                    # SO_LINGER is a socket option for an opened socket. It controls the way a socket is closed and should always
                    # be used before closing the socket to make sure the connection is properly closed.
                    # If the client has closed its socket and the server has closed the client connection
                    # everything is ok.
                    # If the client has closed its socket but the client has received no data from the server
                    #  because the server failed the `recv` or `send` a loop will occur on the next client a connection and
                    # it return an error, that's why we should use for related cleanup.
                            elseif:print("There is no data to send to the client")
                            elseif:print("No data was received from the client")
                            elseif:print("data has been successfully sent to the client")
                        except Exception as ex:
            # Catching any exception raised during the sending operation and
            # logging the error.
            # Try to create a generic Exception here instead of passing the specific exception in the catch,
            # also return the exception to make sure it isn't returned again if the code breaks.
            # An error after close() is usually not a problem, so it is a good practice to catch
            # those errors and discard them. They happen how and eventually are harmless annoyances.
                            logging.error(
                                "Error sending data to the client %s:%s." % client_address
                            )
                # Polling the environment for any new connections or incoming data,
                # but not wait more than 0.1 seconds to avoid blocking if there are
                # no new connections/data available.
            exceptsocketError:print("Could not start the echo server on port {}.".format(server_port))
        # Catching any exception raised during the server setup or
        # while serving incoming connections.
        # Try to create a generic Exception here instead of passing the specific exception in the catch,
        # also return the exception to make sure it isn't returned again if the code breaks.
        # If an error occurs after close() (for example, the client terminated abnormally),
        # an error will be raised here. Therefore, we should catch it to avoid a fake error log.
        except Exception as ex:
            logging.error("Error occurred: {}".format(ex.strerror, ex.errno, ex.args[0].errors[0], type(ex).mro(executable=True,))
        # try polling the connections for data, without any kind of
        # buffering. This is necessary as the network card may split
        # the data sent by the socket, and the call to recv() may return
        # with less bytes than requested.
        # We should check if data was received from the client and sent to
        # the peer, if it is empty or not there will be an error returned,
        # in that case we should skip.
        # Finally, we only accept one client connection at a time to avoid
        # any potential issues with multiple client connections trying to
        # send data at the same time.
    # Depending on the architecture of your application, it may be more
    # efficient to instead raise exceptions and catch them elsewhere in your
    # code instead of `return`ing data.
   

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

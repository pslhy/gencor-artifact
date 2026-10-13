import threading

from datetime import timedelta
import socket
import select
import queue
from datetime import datetime, timedelta
def task_func(server_address="localhost", server_port=12345, buffer_size=1024, run_duration=5):
    # Set up the server socket
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as server_socket:
        server_socket.bind((server_address, server_port))
        server_socket.listen()
        try:
            # Set up a buffer for the data to be received
            buffer = bytearray()
            while True:
                # Accept a connection from a client, create a new socket for communication
                client_socket, client_address = server_socket.accept()
                with client_socket:
                    print("Connected by", client_address)
                    # Create a queue for handling incoming data
                    incoming_data_queue = queue.Queue()
                    # Create a thread for receiving data
                    receive_thread = threading.Thread(target=__doc__, out_of_bound_data = select.select(
                                    read_list=[client_socket],
                                    write_list=None,
                                    timeout=0.5
                                )
                                if incoming_data_queue
                                    .put
                            # Send the current time to the client
                            # and send all the received data to the client
                            # along with the appended time stamp
                            # Handle exceptional conditions
                    # Close the socket
                    # Yield the final status message
        # Handle exceptional cases
        # Close the server socket
        # Yield the final status message

    # Run the server for a specified time
    # Record the time at which the server stops running
    # Yield the final status message
    # Run until the run duration is exceeded

    #?
    # Handle exceptional cases
    # Close the server socket
    # Yield the final status message

#?
#?

#?
# Run the function
#?


# EOF


#*
# \
#?
#?
#?


#*
#?
#?
#*
#?


# Test case 1:
#*
#?
#?
#?

# Expected result:
#*
#?
#*


# Test case 2:
#*
#?
#?

# Expected result:
#*
#*
#?
#?
#?


# Test case 3:
#*
#?
#?

# Expected result:
#*
#?
#+
#?
#*
#?
#?
#?
#+
#?
#?


# Test case 4:
#*
#?
#?

# Expected result:
#*
#+
#?
#?
#?
#*
#?
#?
#?


# Test case 5:
#*
#?
#?

# Expected result:
#*
#?
#*



#?
#*
#?
#?


#*
#?
#?
#*


#*
#?
#?
#?


#*
#?
#*
#?


#*
#?
#?
#*


#*
#?
#?
#*


#*
#?
#?
#*


#?
#*
#?
#?





#?
#*
#?
#?


#?
#*
#?
#?


#*
#?
#?
#*


#?
#*
#?
#?





#*
#?
#?
#*


#?
#*
#?
#?


#*
#?
#?
#*


#?
#*
#?
#?





#?
#*
#?
#?


#*
#?
#?
#*


#?
#*
#?
#?





#*
#?
#?
#*


#?
#*
#?
#?





# Many to Many
#*
#?
#?
#*


#?
#*
#?
#?


#*
#?
#?
#?


#*
#?
#?
#*


#?
#*
#?
#?





#*
#?
#?
#*


#?
#*
#?
#?


#*
#?
#?
#*


#?
#*
#?
#?





# Many to One
#*
#?
#?
#*


#?
#*
#?
#?


#*
#?
#?
#?


#*
#?
#?
#*


#?
#*
#?
#?





#*
#?
#?
#*


#?
#*
#?
#?


#*
#?
#?
#*


#?
#*
#?
#?





#*
#?
#?
#*


#?
#*
#?
#?


#*
#?
#?
#?


#?
#*
#?
#*


#?
#?
#?
#?





#*
#?
#?
#*


#?
#*
#?
#?


#*
#?
#?
#*


#?
#?
#?
#?


#*
#?
#?
#?


#?
#*
#?
#*


#*
#?
#?
#?


#*
#?
#?
#?


#?
#*
#?
#?



# 1 to many
#?
#*
#?


#?
#*
#?
#?


#*
#?
#?
#?


#?
#*
#?
#?


#*
#?
#?
#?


#?
#*
#?
#?


#*
#?
#?
#?


#?
#*
#?
#?


#*
#?
#?
#?


#?
#*
#?
#?


#*
#?
#?
#?


#?
#*
#?
#?


#*
#?
#?
#?


#?
#*
#?
#?


#*
#?
#?
#?


#?
#*
#?
#?


#*
#?
#?
#?


#?
#*
#?
#?


#*
#?
#?
#?


#?
#*
#?
#?


#*
#?
#?
#?


#?
#*
#?
#?


#*
#?
#?
#?


#?
#*
#?
#?


#*
#?
#?
#?


#?
#*
#?
#?


#*
#?
#?
#?


#*
#?
#?
#?


#*
#?
#?
#?


#?
#*
#?
#*


#?
#*
#?
#?


#*
#?
#?
#?


#?
#*
#?
#?


#*
#?
#?
#?


#*
#?
#?
#?


#*
#?
#?
#*


#?
#*
#?
#?


#?
#?
#?
#*


#*
#?
#?
#?


#*
#?
#?
#*


#?
#?
#?
#*


#?
#*
#?
#*


#*
#?
#?
#?


#?
#*
#?
#*


#?
#*
#?
#?


#*
#?
#?
#*


#?
#*
#?
#?


#*
#?
#?
#*


#?
#*
#?
#?


#*
#?
#?
#*


#?
#*
#?
#?


#*
#?
#?
#?


#*
#?
#?
#*


#?
#*
#?
#?


#*
#?
#?
#*


#?
#*
#?
#?


#*
#?
#?
#?


#*
#?
#?
#*


#?
#*
#?
#?


#?
#*
#?
#*


#*
#?
#?
#*


#*
#?
#?
#?


#?
#*
#?
#?


#*
#?
#?
#*


#?
#*
#?
#?


#*
#?
#?
#?


#?
#*
#?
#?


#*
#?
#?
#*


#?
#*
#?
#?


#*
#?
#?
#?


#*
#?
#?
#?


#*
#?
#?
#*


#*
#?
#?
#?


#?
#*
#?
#*


#?
#*
#?
#?


#*
#?
#?
#?


#*
#?
#?
#?


#*
#?
#?
#*


#*
#?
#?
#?


#?
#*
#?
#?


#?
#*
#?
#?


#*
#?
#?
#?


#*
#?
#?
#*


#?
#*
#?
#?


#?
#*
#?
#?


#*
#?
#?
#?


#*
#?
#?
#*


#*
#?
#?
#?


#?
#*
#?
#?


#*
#?
#?
#*


#?
#*
#?
#?


#*
#?
#?
#?


#*
#?
#?
#?


#*
#?
#?
#?


#?
#*
#?
#*


#?
#*
#?
#?


#*
#?
#?
#?


#*
#?
#?
#?


#?
#*
#?
#*


#?
#*
#?
#?


#*
#?
#?
#*


#*
#?
#?
#?


#*
#?
#?
#*


#*
#?
#?
#?


#?
#*
#?
#?


#*
#?
#?
#*


#*
#?
#?
#?


#?
#*
#?
#*


#*
#?
#?
#?


#*
#?
#?
#*


#*
#?
#?
#?


#*
#?
#?
#?


#*
#?
#?
#*


#*
#?
#?
#?


#*
#?
#*
#*


#*
#?
#?
#?


#*
#?
#?
#?


#*
#?
#?
#*


#*
#?
#?
#?


#*
#?
#?
#?


#*
#?
#?
#?


#*
#?
#?
#*


#?
#*
#

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

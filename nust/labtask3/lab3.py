blockSize = 8  # Set the desired block size
dataBlock = []  # Create an empty list to store the data blocks

with open('one.pdf', 'rb') as file:
    while True:
        chunk = file.read(blockSize)  # Read a chunk of data with the specified block size
        if not chunk:
            break  # Break the loop if we have reached the end of the file
        dataBlock.append(chunk)  # Append the chunk to the dataBlock list

print(dataBlock)

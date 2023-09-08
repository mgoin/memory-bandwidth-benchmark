#!/bin/bash

# Step 1: Clone the Repository
if [ ! -d "STREAM" ]; then
    git clone https://github.com/jeffhammond/STREAM.git
fi

# Step 2: Build the Executable
cd STREAM
make stream_c.exe

# Step 3: Run the Sweep
# Determine the maximum number of cores
max_cores=$(nproc)
echo "Num Cores, Copy, Scale, Add, Triad"
# Loop from 1 core to the maximum number of cores
for ((i=1; i<=$max_cores; i++)); do
    if [ "$i" -eq 1 ]; then
        cmd="numactl -C 0 ./stream_c.exe"
    else
        cmd="numactl -C 0-$(($i-1)) ./stream_c.exe"
    fi

    # Run the command and extract the desired information
    result=$($cmd | awk '/^Copy:|Scale:|Add:|Triad:/ { print $2 }' | tr '\n' ',')
    sleep 0.5

    # Remove the trailing comma, append the number of cores used, and print the result
    echo "$i,${result%,}"
done

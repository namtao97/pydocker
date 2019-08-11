#!/bin/bash

# copy file to container, run and get back the result
command_copy_file="cat > /home/guest/$2.py"
sudo docker exec -i $1 sh -c "$command_copy_file" < upload_code/$2.py

# run, dump output and error to files
command_run_code="python $2.py > $2_output.txt"
sudo docker exec --user guest -i $1 sh -c "$command_run_code" &> ./output/$2_error.txt

# return the output file
sudo docker cp $1:/home/guest/$2_output.txt ./output/
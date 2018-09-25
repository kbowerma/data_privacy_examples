#!/bin/bash

wget 'https://data.sfgov.org/api/views/nuek-vuh3/rows.csv'  #comment this line out once you get the file

head -1 rows.csv > header.txt   # create header row
head -1 rows.csv | TR ',' '\n' | awk '{print NR".\t" $0 }' > columns.md  #create a numberd file of columns, --for humans

# Create a file with 1000 shuffled records
cat header.txt > 100_data.csv
gshuf -n 100 rows.csv >> 100_data.csv

# Create a file with 2k shuffled records
cat header.txt > 2k_data.csv
gshuf -n 2000 rows.csv >> 2k_data.csv

# Create a file with 30k shuffled records
cat header.txt > 30k_data.csv
gshuf -n 30000 rows.csv >> 30k_data.csv

# Create a file with 280k shuffled records,  Just under 100M
cat header.txt > 280k_data.csv
gshuf -n 280000 rows.csv >> 280k_data.csv

# Create a file with 400k shuffled records
cat header.txt > 400k_data.csv
gshuf -n 400000 rows.csv >> 400k_data.csv
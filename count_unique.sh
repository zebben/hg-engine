#!/bin/bash

# Pull out all unique instances of strings with prefix SPECIES_

# Check if the input file is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <input_file>"
    exit 1
fi

# Extract unique strings with prefix SPECIES_
grep -o 'SPECIES_[A-Z\d_]*' $1 | sort | uniq -c | sort -nr

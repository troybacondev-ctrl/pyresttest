#!/usr/bin/bash
# Core pieces

# unittest discovery is available in supported Python 2.7+ and Python 3 runtimes.
python -m unittest discover



if [ $? -ne 0 ]; then
    exit 1
fi

# Command-line call tests (use github API)
python -m unittest pyresttest.functionaltest

if [ $? -ne 0 ]; then
    exit 1
fi

# Extensions test
sh test_use_extension.sh

if [ $? -ne 0 ]; then
    exit 1
fi


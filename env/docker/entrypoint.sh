#!/bin/bash

set -e

echo "Running entrypoint script..."

if [ ! -d /home/ubuntu/Repos/bmstu-dspl/resources ]; then
    echo "Cloning Practice repository..."
	git clone https://github.com/bmstu-dspl/resources /home/ubuntu/Repos/bmstu-dspl/resources
fi

jupyter notebook --ip='*' --notebook-dir /home/ubuntu/Repos --allow-root

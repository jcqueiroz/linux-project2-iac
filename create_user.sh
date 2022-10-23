#!/bin/bash

echo "Creating system users..."

useradd guest10 -c "User guest" -s /bin/bash -m -p $(openssl passwd password123)
passwd guest10 -e

useradd guest11 -c "User guest" -s /bin/bash -m -p  $(openssl passwd password123)
passwd guest11 -e

useradd guest12 -c "User guest" -s /bin/bash -m -p $(openssl passwd password123)
passwd guest12 -e

useradd guest13 -c "User guest" -s /bin/bash -m -p $(openssl passwd password123)
passwd guest13 -e

useradd guest14 -c "User guest" -s /bin/bash -m -p $(openssl passwd password123)
passwd guest14 -e


echo "END....!!!"


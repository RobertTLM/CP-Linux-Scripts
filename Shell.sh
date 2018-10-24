#!/bin/bash
cut -d: -f1,3 /etc/passwd | egrep ':[0-9]{4}$' | cut -d: -f1 > User.txt
while IFS= read -r line; do
  echo -e 'Cyber1Patriot!\nCyber1Patriot!' | passwd "$line"
done < "User.txt"

#!/bin/bash

date >> output.txt
tail /root/.bash_history >> output.txt
grep -oP '[\x{4e00}-\x{9fa5}]' | wc -l < /root/rm_ws/src/learngit/missing-semester/2027/notes/First_note.md >> output.txt


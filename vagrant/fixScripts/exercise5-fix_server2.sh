#!/bin/bash
#add fix to exercise5-server2 here
ssh-keygen -f ~/.ssh/id_rsa -P ""
ssh-copy-id server1
#could have installed expect and wait for the 
#password prompt to populate it with the users pass
